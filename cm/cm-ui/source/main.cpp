#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include <controllers/master-controller.h>
#include <controllers/navigation-controller.h>
#include <controllers/commandcontroller.h>
#include <framework/command.h>


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    qmlRegisterType<cm::controllers::MasterController>("CM", 1, 0,"MasterController");
    qmlRegisterType<cm::controllers::NavigationController>("CM", 1, 0,"NavigationController");

    cm::controllers::MasterController masterController;

    qmlRegisterType<cm::controllers::CommandController>("CM", 1, 0, "CommandController");
    qmlRegisterType<cm::framework::Command>("CM", 1, 0, "Command");
    QQmlApplicationEngine engine;
    engine.addImportPath("qrc:/");
    engine.rootContext() -> setContextProperty("masterController", &masterController);

    engine.load(QUrl(QStringLiteral("qrc:/views/MasterView.qml")));
    /*
    const QUrl url(QStringLiteral("qrc:/views/MasterView.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    */
    return app.exec();
}
