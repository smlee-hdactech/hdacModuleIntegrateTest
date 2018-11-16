#-------------------------------------------------
#
# Project created by QtCreator 2018-11-14T16:49:42
#
#-------------------------------------------------

QT       -= core gui

TARGET = rpccall
TEMPLATE = lib
CONFIG += link_pkgconfig
PKGCONFIG += openssl

DEFINES += RPCCALLER_LIBRARY

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
        rpc/rpcprotocol.cpp \
    rpccaller.cpp \
    cif_rpccall.cpp

HEADERS += \
    rpc/rpcprotocol.h \
    utils/tinyformat.h \
    rpccaller.h \
    rpccaller_global.h \
    cif_rpccall.h

INCLUDEPATH += ../strcodec

LIBS += -lboost_system \
        -ljson_spirit \
        -L$$OUT_PWD/../strcodec \
        -lstrcodec

unix {
    target.path = $$_PRO_FILE_PWD_
    INSTALLS += target
}

