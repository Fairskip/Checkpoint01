#!/bin/bash


read -p  "vous devez rentrer successivement les informations suivants : Nom du PC, adresse mac, adresse>

echo 'Nom du PC : ' $PC
echo 'Adresse MAC : ' $MAC
echo 'Adresse IP : ' $IP

echo $PC $MAC $IP > ConfigurationReseau.txt
