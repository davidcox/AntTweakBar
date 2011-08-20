## Fork of AntTweakBar

AntTweakBar is an great little library for parameter setting GUIs in OpenGL.  Unfortunately, the library doesn't appear to be maintained in publicly accessible version control, and it didn't build correctly for me out of the box (Mac OS X 10.7), so I created this repository to serve my own needs with respect to this library. No guarantees that the patches I've made will work at all for you.  For the official distribution of the library, go to [antisphere.com](antisphere.com)

## Installation

For Mac OS X, a homebrew formula is provided (`libanttweakbar.rb`).  Copy this file into `/usr/local/library/Formula/` and call `brew install libanttweakbar`.  You can copy the following commands into a shell:

    wget https://raw.github.com/davidcox/AntTweakBar/master/libanttweakbar.rb
    cp anttweakbar.rb /usr/local/Library/Formula/
    brew install libanttweakbar
    rm libanttweakbar.rb

Everything else should take care of itself.