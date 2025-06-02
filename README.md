# dmenu builder and wrapper for MacOS

dmenu _can_ be used on Mac but there are some gotchas. Here we have:

- A wrapper script that gives focus to the new XQuartz window while running dmenu, then return focus to original application.
- A *justfile* that downloads and builds dmenu for an ARM Mac with XQuartz and Homebrew

I guess the next step is to add some patches to the download/build procedure.
