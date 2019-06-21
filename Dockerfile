FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3.4 python3-pip
RUN pip install git+https://github.com/WanpengQian/webssh.git
EXPOSE 8081
CMD ["wssh", "--address=0.0.0.0", "--port=8081"]
