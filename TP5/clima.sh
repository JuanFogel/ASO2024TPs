#!/bin/bash

#Llamamos a la api
response=$(curl -s "http://api.weatherapi.com/v1/current.json?key=6dc9284853c447029dc192928241006&q=Bariloche&aqi=no")

temp=$(echo "$response" | jq '.current.temp_c') #enlaza la api con el jq para traer solo la temperatura
clima=$(echo "$response" | jq '.current.condition.text') #lo mismo pero trae el estado del "clima"

echo "La temperatura actual en Bariloche es: $temp °C" #Mostramos la temperatura.
echo "El cielo en Bariloche esta: $clima" #Mostramos el estado del cielo.

exit 0