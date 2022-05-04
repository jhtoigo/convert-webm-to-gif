FROM ubuntu
WORKDIR /videos
RUN apt-get update && apt-get install ffmpeg -y
