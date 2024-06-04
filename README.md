## Информация о проекте
Необходимо организовать систему учета для питомника, в котором живут
домашние и вьючные животные.

## Задание

## 1. Используя команду cat в терминале операционной системы Linux, создать два файла Домашние животные (заполнив файл собаками, кошками,хомяками) и Вьючные животными заполнив файл Лошадьми, верблюдами и ослы), а затем объединить их. Просмотреть содержимое созданного файла.Переименовать файл, дав ему новое имя (Друзья человека).

 

![](./image/Task%201.png)

cat > Домашние_животные

cat >  Вьючные_животными

ls

cat Домашние_животные

cat Вьючные_животными

cat Домашние_животные Вьючные_животными > Животные 

cat Животные

mv Животные "Друзья человека"

ls

ls -ali



## 2. Создать директорию, переместить файл туда.
![](./image/Task2.png)

sudo mkdir Ферма

ls

sudo mv Друзья_человека Ферма/

ls

ls Ферма/*

## 3. Подключить дополнительный репозиторий MySQL. Установить любой пакет из этого репозитория

