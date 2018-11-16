#-------------------------------------------------
#
# Project created by QtCreator 2018-11-16T11:31:32
#
#-------------------------------------------------

QT       -= core gui

TARGET = hashes
TEMPLATE = lib

DEFINES += HASHES_LIBRARY

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
    crypto/sha256.cpp

HEADERS += \
        hashes.h \
        hashes_global.h \ 
    crypto/sha256.h \
    crypto/common.h \
    config/bitcoin-config.h

INCLUDEPATH += ../strcodec

unix {
    target.path = /usr/local/lib
    INSTALLS += target
}
