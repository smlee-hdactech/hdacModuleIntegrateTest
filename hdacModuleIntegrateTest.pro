TEMPLATE = subdirs

SUBDIRS += \
    strcodec \
    rpccall \
    moduleTest \
    hashes

rpccall.depends = strcodec
hashes.depends = strcodec
moduleTest.depends = rpccall hashes
