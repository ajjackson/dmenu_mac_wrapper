version := "5.3"
sourcedir := "dmenu-" + version
tarball := sourcedir + ".tar.gz"


all: clean get_source build install

get_source:
    wget https://dl.suckless.org/tools/{{tarball}}
    tar -xf {{tarball}}

clean:
    rm dmenu-*.tar.gz
    rm -r dmenu-*

build:
    cd {{sourcedir}} && \
    make X11INC=/opt/X11/include X11LIB=/opt/X11/lib FREETYPEINC=/opt/homebrew/include/freetype2

install:
    cp {{sourcedir}}/dmenu $HOME/.local/bin/dmenu_bin
    cp dmenu_script $HOME/.local/bin/dmenu
