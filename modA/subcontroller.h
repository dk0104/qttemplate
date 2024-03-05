#ifndef SUBCONTROLLER_H
#define SUBCONTROLLER_H

#include <QObject>
#include <QQmlEngine>

class SubController: public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool status READ status WRITE setStatus NOTIFY statusChanged FINAL)
    QML_ELEMENT
signals:
    void statusChanged();

public:
    explicit SubController(QObject *parent = nullptr);
    bool status() const;
    void setStatus(bool status);

private:
    bool m_status = true;


};

#endif // SUBCONTROLLER_H
