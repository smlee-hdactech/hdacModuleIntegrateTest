#-------------------------------------------------
#
# Project created by QtCreator 2018-11-19T15:13:22
#
#-------------------------------------------------

QT       -= core gui

TARGET = keys
TEMPLATE = lib
CONFIG += link_pkgconfig
PKGCONFIG += openssl \
            libsecp256k1

DEFINES += KEYS_LIBRARY \
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
    keyslib.cpp \
    pubkey.cpp \
    utils/random.cpp \
    utils/utiltime.cpp \
    key.cpp

HEADERS += \
        keys_global.h \ 
    keyslib.h \
    pubkey.h \
    utils/random.h \
    utils/utiltime.h \
    key.h

INCLUDEPATH += ../hashes ../bcstructs

unix {
    target.path = $$PWD/../install/$$basename(PWD)
    INSTALLS += target
}

#message($$_PRO_FILE_PWD_)
#message($$basename(PWD))
#message($$DESTDIR)
#message($$OUT_PWD)
