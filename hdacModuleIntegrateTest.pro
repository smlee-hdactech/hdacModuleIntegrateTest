TEMPLATE = subdirs

SUBDIRS += \
    strcodec \
    rpccall \
    moduleTest

rpccall.depends = strcodec
moduleTest.depends = rpccall
