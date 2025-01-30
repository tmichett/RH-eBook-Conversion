FROM fedora:40
MAINTAINER Travis Michette <tmichett@redhat.com>


RUN yum install -y vim jq yq tree python-jmespath libglvnd-opengl wget  mesa-libEGL mesa-libGL xcb-util-cursor freetype freetype-devel python3-qt5 qt5-qtbase nss libXdamage  python3-pip vim-enhanced libXrandr libXtst libxkbfile xdg-utils && \
    dnf clean all && \
    pip install PyQt6-WebEngine && \
    wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

RUN useradd calibre
ADD Container_Fonts/* /usr/share/fonts/
ADD convert_epub.sh /usr/bin/convert_epub.sh

ENV epub_file=epubfilename
ENV pdf_file=pdffilename
ENV BOOK="/tmp/coursebook"

VOLUME ${BOOK}
WORKDIR ${BOOK}

RUN echo "calibre ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/calibre

USER calibre

CMD /usr/bin/convert_epub.sh