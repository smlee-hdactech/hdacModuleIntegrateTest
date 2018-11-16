TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += link_pkgconfig
PKGCONFIG += openssl

LIBS += -lpthread \
        -L$$OUT_PWD/../strcodec \
        -lstrcodec \
        -L$$OUT_PWD/../rpccall \
        -lrpccall

INCLUDEPATH += ../rpccall

SOURCES += \
        main.cpp
