#Pour construire l'image : docker build -t keras .
#Pour executer le conteneur : docker run -ti -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix keras

FROM python

RUN apt-get update -yq \
&& apt-get install apt-utils -yq \
&& apt-get install python3-pip -yq \
&& apt-get install python3-venv -yq \
&& apt-get install python3-tk -yq \
&& apt-get install nano -yq \
&& apt-get clean -y \
&& rm -rf /var/lib/apt/lists/* \
&& python3 -m pip install ipywidgets\
&& python3 -m pip install matplotlib\
&& python3 -m pip install tensorflow\
&& python3 -m pip install tensorflow_datasets\

&& mkdir -p /home/docker/

WORKDIR /home/docker/

COPY training.py inference.py neural_network.h5 ./

#CMD ["python","/home/docker/inference.py"]