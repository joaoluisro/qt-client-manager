TEMPLATE = subdirs

SUBDIRS += \
  cm-lib \
  cm-tests \
  cm-ui \

QML_IMPORT_PATH += $$PWD

message(cm project dir: $${PWD})
