# brew install python --framework --universal

    cd /System/Library/Frameworks/Python.framework/Versions
    sudo rm Current
    sudo ln -s /usr/local/Cellar/python/2.7.2/Frameworks/Python.framework/Versions/Current
