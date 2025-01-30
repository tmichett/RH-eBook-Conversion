FROM fedora:40
MAINTAINER Travis Michette <tmichett@redhat.com>


RUN yum install -y vim jq yq tree python-jmespath libglvnd-opengl wget  mesa-libEGL mesa-libGL xcb-util-cursor freetype freetype-devel python3-qt5 qt5-qtbase nss libXdamage  python3-pip vim-enhanced libXrandr libXtst libxkbfile xdg-utils && \
    dnf clean all && \
    pip install PyQt6-WebEngine && \
    wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin




RUN useradd calibre && sysctl -w kernel.auditd=0

ENV BOOK="/tmp/coursebook"
VOLUME ${BOOK}
WORKDIR ${BOOK}
RUN echo "calibre ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/calibre

USER calibre

#ENTRYPOINT [ "/usr/local/share/gems/gems/asciidoctor-pdf-2.1.0/bin/asciidoctor-pdf", "-a pdf-theme=/opt/asciidoc/themes/tm-gls-redhat-theme.yml"]
#CMD /usr/bin/asciidoctor-pdf ${pdf_theme} ${book_name}