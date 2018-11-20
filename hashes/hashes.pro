#-------------------------------------------------
#
# Project created by QtCreator 2018-11-19T15:22:01
#
#-------------------------------------------------

QT       -= core gui

TARGET = hashes
TEMPLATE = lib

DEFINES += CRYPTO_LIBRARY \
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
        crypto.cpp \
    sha512.cpp \
    sha256.cpp \
    sha1.cpp \
    ripemd160.cpp \
    hmac_sha512.cpp \
    hmac_sha256.cpp

HEADERS += \
        crypto.h \
        crypto_global.h \ 
    sha512.h \
    sha256.h \
    sha1.h \
    ripemd160.h \
    hmac_sha512.h \
    hmac_sha256.h \
    common.h \
    config/bitcoin-config.h

unix {
    target.path = $$PWD/../install/$$basename(PWD)
    INSTALLS += target
}
