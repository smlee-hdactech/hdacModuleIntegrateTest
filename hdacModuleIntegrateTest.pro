TEMPLATE = subdirs

SUBDIRS += \
    strcodec \
    rpccall \
    moduleTest \
    hashes \
    keys \
    bcstructs

rpccall.depends = strcodec
bcstructs.depends = strcodec hashes
keys.depends = bcstructs hashes
moduleTest.depends = rpccall bcstructs keys
