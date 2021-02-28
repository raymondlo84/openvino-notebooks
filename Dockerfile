FROM python:3.7-slim

# For opencv
RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook && \
    pip install voila opencv-python ipython==7.10 tornado==6.1 openvino Pillow ipywebrtc

# create user with a home directory
ENV USER jovyan
ENV HOME /home/jovyan

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid 1000 \
    jovyan
WORKDIR $HOME

COPY --chown=jovyan:jovyan wheels /home/${USER}/wheels
COPY --chown=jovyan:jovyan hand_pose /home/${USER}/hand_pose

RUN jupyter nbextension install ipywebrtc --py --sys-prefix --symlink
RUN jupyter nbextension enable ipywebrtc --py --sys-prefix

USER jovyan


COPY --chown=jovyan:jovyan entrypoint.sh /home/${USER}
COPY --chown=jovyan:jovyan Dockerfile /home/${USER}



EXPOSE 8888

ENV LD_LIBRARY_PATH /usr/local/lib

#CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--TagRemovePreprocessor.remove_cell_tags",{'hide',}]
CMD ["jupyter", "notebook", "hand_pose_video.ipynb", "--ip", "0.0.0.0", "--NotebookApp.token", ""]

WORKDIR /home/jovyan/hand_pose
#ENTRYPOINT ["/home/jovyan/entrypoint.sh"]
