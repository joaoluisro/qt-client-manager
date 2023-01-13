# Client Manager


## Estrutura 

```
cm-lib: biblioteca com funcionalidades de comunicação entre Business Logic e UI

cm-ui: GUI da aplicação

cm-tests: Testes unitários 
```

```
.
├── binaries
│   
├── cm-lib
│   │   
│   ├── cm_lib.cpp
│   ├── cm_lib.h
│   ├── cm-lib.pro
│   └── source
│       ├── cm-lib_global.h
│       ├── controllers
│       │   ├── master-controller.cpp
│       │   ├── master-controller.h
│       │   └── navigation-controller.h
│       └── models
│           ├── client.cpp
│           └── client.h
├── cm.pro
├── cm.pro.user
├── cm-tests
│   ├── cm-tests.pro
│   └── source
│       └── models
│           └── tst_clienttest.cpp
├── cm-ui
│   ├── cm-ui.pro
│   ├── source
│   │   └── main.cpp
│   ├── views
│   │   ├── CreateClientView.qml
│   │   ├── DashboardView.qml
│   │   ├── EditClientView.qml
│   │   ├── FindClientView.qml
│   │   ├── MasterView.qml
│   │   └── SplashView.qml
│   └── views.qrc
├── qmake-destination-path.pri
└── qmake-target-platform.pri
```