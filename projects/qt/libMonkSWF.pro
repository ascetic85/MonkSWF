#-------------------------------------------------
#
# Project created by QtCreator 2012-09-13T14:05:18
#
#-------------------------------------------------

QT       -= core gui

TARGET = libMonkSWF
TEMPLATE = lib

DEFINES += LIBMONKSWF_LIBRARY

INCLUDEPATH += ../../src ../..

LIBS += -lMonkVG -lzlib

DEFINES += HAS_MONK_VG

symbian {
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE4FB2BEF
    TARGET.CAPABILITY = 
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = libMonkSWF.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}

HEADERS += \
    ../../MonkSWF.h \
    ../../src/mkTypes.h \
    ../../src/mkTag.h \
    ../../src/mkSWF.h \
    ../../src/mkReader.h \
    ../../src/mkHeader.h \
    ../../src/mkCommon.h \
    ../../src/tags/ShowFrame.h \
    ../../src/tags/RemoveObject.h \
    ../../src/tags/PlaceObject.h \
    ../../src/tags/DefineSprite.h \
    ../../src/tags/DefineShape.h

SOURCES += \
    ../../src/mkTag.cpp \
    ../../src/mkSWF.cpp \
    ../../src/mkReader.cpp \
    ../../src/mkHeader.cpp \
    ../../src/tags/ShowFrame.cpp \
    ../../src/tags/RemoveObject.cpp \
    ../../src/tags/PlaceObject.cpp \
    ../../src/tags/DefineSprite.cpp \
    ../../src/tags/DefineShape.cpp
