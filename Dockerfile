FROM jenkins/jenkins:lts

USER root

# Instalar dependencias necesarias
RUN apt-get update && \
    apt-get install -y apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    git \
    lsb-release

# Instalar Docker para permitir que Jenkins utilice Docker
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

   # Exponer puertos
EXPOSE 8080 50000

# Volumen para persistencia de datos
VOLUME /var/jenkins_home
