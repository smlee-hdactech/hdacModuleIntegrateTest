#-------------------------------------------------
#
# Project created by QtCreator 2018-11-16T11:31:32
#
#-------------------------------------------------

QT       -= core gui

TARGET = bcstructs
TEMPLATE = lib

DEFINES += HASHES_LIBRARY \
        HAVE_CONFIG_H

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        hashes.cpp \
    utils/allocators.cpp \
    structs/uint256.cpp \
    structs/hash.cpp

HEADERS += \
        hashes.h \
        hashes_global.h \
    utils/serialize.h \
    utils/allocators.h \
    structs/uint256.h \
    structs/hash.h

INCLUDEPATH += ../strcodec \
        ../hashes

LIBS += -L$$OUT_PWD/../hashes \
        -lcrypto \
        -lboost_thread

unix {
    target.path = $$PWD/../install/$$basename(PWD)
    INSTALLS += target
}