#!/bin/bash

Piedra=1 
Papel=2
Tijera=3
opcion_pc=$((RANDOM%3 + 1)) #Genera numeros aleatorios entre 1 y 3

echo "INGRESE PIEDRA, PAPEL O TIJERAS"
echo "1. PIEDRA"
echo "2. PAPEL"
echo "3. TIJERA"
read -p "ELEJISTE LA OPCION: " opcion #El usuario elige una opcion de las ya mostradas

if [ "$opcion_pc" == 1 	-o "$opcion_pc" == 2 -o "$opcion_pc" == 3 ]; then 

echo "ANALIZANDO..."
echo "■□□□□□□□□□ 10%"          #Asignamos tiempo para que sea mas interactivo a la hora de elegir la maquina
sleep 0.7
clear
echo "ANALIZANDO..."
echo "■■□□□□□□□□ 20%" 
sleep 0.7
clear
echo "ANALIZANDO..."
echo "■■■□□□□□□□ 30%"  
sleep 0.7                #Asignamos tiempo para que sea mas interactivo a la hora de elegir la maquina
clear
echo "ANALIZANDO..."
echo "■■■■□□□□□□ 40%" 
sleep 0.7                #Asignamos tiempo para que sea mas interactivo a la hora de elegir la maquina
clear
echo "ANALIZANDO..."
echo "■■■■■■□□□□ 60%"
sleep 0.7
clear
echo "ANALIZANDO..."
echo "■■■■■■■□□□ 70%"
sleep 0.7
clear
echo "ANALIZANDO..."
echo "■■■■■■■■□□ 80%"
sleep 0.7
clear
echo "ANALIZANDO..."
echo "■■■■■■■■■■ 100%"
sleep 0.7
echo "LA MAQUINA ELIJIO: " $opcion_pc #Muestra la opcion de la maquina
fi
echo "1. PIEDRA"
echo "2. PAPEL"
echo "3. TIJERA"

echo "TU OPCION FUE: " $opcion

if [ "$opcion" -gt 0  -a  "$opcion" -lt 4 ]; then #Comparamos si la opcion ingresada es + que 0 y - que 4
                                                    #para que ingrese.
    if [ "$opcion_pc" -eq "$opcion" ]; then
        echo "EMPATARON"
    elif [ "$opcion_pc" -eq "1" -a "$opcion" -eq "2" ]; then
        echo "GANASTE, PAPEL ENVUELVE A PIEDRA"
    elif [ "$opcion_pc" -eq "1" -a "$opcion" -eq "3" ]; then
        echo "GANA LA MAQUINA, ELIGIO PIEDRA. PIEDRA ROMPE TIJERA"
    elif [ "$opcion_pc" -eq "2" -a "$opcion" -eq "1" ]; then
        echo "GANA LA MAQUINA, ELIGIO PAPEL. PAPEL ENVUELVE PIEDRA"
    elif [ "$opcion_pc" -eq "2" -a "$opcion" -eq "3" ]; then
        echo "GANASTE, TIJERA CORTA PAPEL"
    elif [ "$opcion_pc" -eq "3" -a "$opcion" -eq "1" ]; then
        echo "GANASTE, PIEDRA ROMPE TIJERA"
    elif [ "$opcion_pc" -eq "3" -a "$opcion" -eq "2" ]; then
        echo "GANA LA MAQUINA, ELIGIO TIJERA. TIJERA CORTA PAPEL"
    fi

else
    echo "INGRESE UN NUEMERO ENTRE 1 Y 3"
fi
exit 0
