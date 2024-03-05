#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.addImportPath(":/keksel.biz/imp");

    const QUrl url(u"qrc:/keksel.biz/imp/Qttemplate/Main.qml"_qs);
    engine.load(url);

    return app.exec();
}
