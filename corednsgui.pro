QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    $$PWD/main.cpp \
    $$PWD/mainwindow.cpp \
    donatedialog.cpp

HEADERS += \
    $$PWD/mainwindow.h \
    donatedialog.h

FORMS += \
    $$PWD/mainwindow.ui \
    $$PWD/donatedialog.ui

win32: RC_FILE += $$PWD/corednsgui.rc
macx: {
    LIBS += -framework IOKit \
            -framework Cocoa \
            -framework Security \
            -framework AppKit \
            -framework ServiceManagement
}

TRANSLATIONS += \
    $$PWD/corednsgui_zh-CN.ts

RESOURCES += \
    $$PWD/corednsgui.qrc
