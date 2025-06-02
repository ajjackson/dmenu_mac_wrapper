# dmenu builder and wrapper for MacOS

[dmenu](https://tools.suckless.org/dmenu) _can_ be used on Mac but there are some gotchas. Here we have:

- A wrapper script that gives focus to the new XQuartz window while running dmenu, then return focus to original application.
- A *justfile* that downloads and builds dmenu for an ARM Mac with XQuartz and Homebrew

I guess the next step is to add some patches to the download/build procedure.


## Requirements
- [XQuartz](https://www.xquartz.org/)
- Freetype2, installed by Homebrew on ARM Mac. (i.e. */opt/homebrew/include/freetype2/* is assumed to exist)
- GNU make (used to build dmenu)
- [just](https://github.com/casey/just) (to build this project from the *justfile*)
