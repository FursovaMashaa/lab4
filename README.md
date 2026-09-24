## Описание 
Автоматизация развертывания HTTP-сервиса с помощью bash, systemd, Ansible

## Структура
- 'service.sh' - скрипт запуска HTTP-сервера
- 'lab4-service.service' - systemd unit-файд
- 'lab4-healthcheck.sh' - скрипт проверки работоспособности
- 'index.html' - страница с фамилией студента
tee README.md > /dev/null << 'EOF'
# Lab 4
## Описание 
Автоматизация развертывания HTTP-сервиса с помощью bash, systemd, Ansible

## Структура
- 'service.sh' - скрипт запуска HTTP-сервера
- 'lab4-service.service' - systemd unit-файд
- 'lab4-healthcheck.sh' - скрипт проверки работоспособности
- 'index.html' - страница с фамилией студента
- 'inventory.example.ini' - пример Ansible-инвентаря
- 'site.yml' - Ansible playbook для развертывания
## Использование
### Запуск
'''bash
sudo cp lab4-service.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now lab4-service
