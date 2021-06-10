FROM cm2network/steamcmd:root

RUN mkdir /accServer && apt update && dpkg --add-architecture i386 && apt-get update && apt install -y wine-development wine32-development

RUN ls -al ${STEAMCMDDIR}

RUN ${STEAMCMDDIR}/steamcmd.sh +login anonymous +force_install_dir /accServer +app_update 1430110 +quit

WORKDIR /accServer

ENTRYPOINT ls -al