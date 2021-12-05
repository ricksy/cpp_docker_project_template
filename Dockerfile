FROM ubuntu as dcpp

ENV DEBIAN_FRONTEND "noninteractive"

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
	build-essential make cmake

WORKDIR /opt/build

COPY main.cpp /opt/build

RUN  g++ -o a.out main.cpp

CMD ["./a.out"]
