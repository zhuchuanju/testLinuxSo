TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \

HEADERS += \

include (./add/add.pri)
include (./divide/divide.pri)
include (./multiply/multiply.pri)
include (./subtract/subtract.pri)
