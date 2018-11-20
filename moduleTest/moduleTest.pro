TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += link_pkgconfig
PKGCONFIG += openssl

LIBS += -L$$OUT_PWD/../strcodec \
        -lstrcodec \
        -L$$OUT_PWD/../rpccall \
        -lrpccall \
        -L$$OUT_PWD/../bcstructs \
        -lbcstructs \
        -L$$OUT_PWD/../hashes \
        -lhashes \
        -L$$OUT_PWD/../keys \
        -lkeys \
        -lboost_system \
        -lboost_thread \
        -lpthread

#remove dependency of crypto
INCLUDEPATH += ../rpccall \
            ../hashes \
            ../bcstructs \
            ../keys \
            ../strcodec

SOURCES += \
        main.cpp

unix {
    target.path = $$_PRO_FILE_PWD_
    INSTALLS += target
}
