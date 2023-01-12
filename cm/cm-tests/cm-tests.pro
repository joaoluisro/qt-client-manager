QT += testlib
QT -= gui

TARGET = client-tests

CONFIG += qt console warn_on depend_includepath testcase
CONFIG -= app_bundle
CONFIG += c++14

INCLUDEPATH += source
include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

LIBS += -L$$PWD/../binaries/$$DESTINATION_PATH -lcm-lib

TEMPLATE = app

SOURCES +=  source/models/tst_clienttest.cpp
