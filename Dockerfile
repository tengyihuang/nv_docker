FROM nvaitc/ai-lab:19.08

USER root
RUN sed -i 's/mirror.nus.edu.sg/ftp.ubuntu-tw.net/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y vim
RUN pip install torch==1.2.0 torchvision==0.4.0 -f https://download.pytorch.org/whl/cu100/torch_stable.html
RUN pip install pycocotools
RUN pip install tensorflow==1.15.2
RUN pip install nltk>=3.4.5 
RUN pip install opencv-python Pillow==6.2.0

COPY retinanet.tgz /home/jovyan
