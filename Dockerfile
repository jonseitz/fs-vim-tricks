FROM centos:latest
RUN dnf update -y && dnf install -y vim
COPY . .
CMD ["vim"]
