#include "subcontroller.h"
#include <iostream>

SubController::SubController(QObject *parent):
    QObject(parent) {
    std::cout<< " SubController init" << std::endl;

}

bool SubController::status() const
{
    return m_status;
}

void SubController::setStatus(bool status)
{
    m_status = status;
}

void SubController::play()
{
    std::cout << "Play " << std::endl;

}

void SubController::stop()
{
    std::cout << "stop " << std::endl;

}

void SubController::pause()
{
    std::cout << "pause " << std::endl;

}
