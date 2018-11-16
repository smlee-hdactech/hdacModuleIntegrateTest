TEMPLATE = subdirs

SUBDIRS += \
    strcodec \
    rpccall \
    moduleTest \
    hashes

rpccall.depends = strcodec
moduleTest.depends = rpccall hashes
