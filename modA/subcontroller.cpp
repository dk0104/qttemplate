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
