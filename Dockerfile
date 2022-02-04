FROM almalinux

RUN dnf install -y epel-release && dnf update -y && \
  dnf group install -y "Development Tools" && \
  dnf install -y wget neovim cmake dosemu && \
  wget https://github.com/open-watcom/open-watcom-v2/releases/download/Current-build/ow-snapshot.tar.gz && \
  mkdir /watcom && cd watcom && \
  tar xvzf ../ow-snapshot.tar.gz && rm -rf ../ow-snapshot.tar.gz 
