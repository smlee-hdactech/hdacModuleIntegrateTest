TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt
#CONFIG += link_pkgconfig
#PKGCONFIG += openssl

LIBS += -lpthread \
        -L$$OUT_PWD/../strcodec \
        -lstrcodec \
        -L$$OUT_PWD/../rpccall \
        -lrpccall \
        -L$$OUT_PWD/../hashes \
        -lhashes

INCLUDEPATH += ../rpccall \
            ../hashes

SOURCES += \
        main.cpp

unix {
    target.path = $$_PRO_FILE_PWD_
    INSTALLS += target
}
