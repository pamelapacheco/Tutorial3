//
//  SigloConstantes.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 29/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

//API

#define API_PATH  @"http://api.elsiglo.mx/apis/torreon/"

//Llave de acceso
#define API_KEY @"apikey"
#define API_KEY_VALOR @"1"

//Tamaños de las imagenes
#define API_ANCHO_ORIG @"anchoorig"
#define API_ANCHO @"ancho"
#define API_ANCHO_1 @"ancho1"

//Valores
#define API_METODO @"metodo"
#define API_ITEM @"item"
#define API_SECCION @"seccion"
#define API_ACTUAL @"actual"
#define API_OPCION_ID @"opcionid"
#define API_SID @"sid"
#define API_CID @"cid"

//Titulo
#define API_CABEZA @"cabeza"

//Contenido completo
#define API_CONTENT @"content"

//Fecha
#define API_FECHA @"fecha"

//Limite de notas
#define API_LIMITE @"limite"

//Comentarios
#define API_TOKEN @"token"
#define API_COMENTARIOS @"comments"
#define API_ITEM_ID @"itemid"
#define API_MENSAJE @"mensaje"
#define API_USER_ID @"userid"
#define API_DISPOSITIVO @"desde"

//Registo de usuario e inicio de sesion
#define API_LOGIN @"login"
#define API_PASS @"pass"
#define API_CORREO @"correo"
#define API_NOMBRE @"nombre"
#define API_APELLIDOS @"apellido"
#define API_SEXO @"sexo"
#define API_CIUDAD @"ciudad"
#define API_POSTAL @"postal"
#define API_NACIMIENTO @"nacimiento"

//BASE DE DATOS

#define DATABASEFILE @"siglo_iPad.sqlite"

//Cuando esta seteado a 1, crea información a través de código y a insterta en la base de datos

#ifndef DEBUG_CREATE_DATA
#define DEBUG_CREATE_DATA 0
#endif


//IMAGEN DEFAULT

#define IMG_CELDA_DEFAULT @"ST_celda.png"

//FONTS

#define FONT_Bold @"Roboto-BoldCondensed"
#define FONT_Regular @"Roboto-Condensed"

//COLORES

#define COLOR_AZUL [UIColor colorWithRed:0.157 green:0.235 blue:0.322 alpha:1] /*#283c52*/
#define COLOR_AZUL_2 [UIColor colorWithRed:0.157 green:0.235 blue:0.322 alpha:0.7] /*#283c52*/
#define COLOR_AZUL_3 [UIColor colorWithRed:0 green:0.2 blue:0.6 alpha:1] /*#003399*/
#define COLOR_ROJO [UIColor colorWithRed:0.6 green:0 blue:0 alpha:1] /*#990000*/

//-- colores secciones
#define COLOR_PORTADA [UIColor colorWithRed:0.157 green:0.235 blue:0.322 alpha:1] /*#283c52*/ //------------------------------------------- AZUL
#define COLOR_TORREON [UIColor colorWithRed:0.6 green:0 blue:0 alpha:1] /*#990000*/  //---------------------------------------------------- ROJO
#define COLOR_POLICIACA [UIColor colorWithRed:1 green:0.251 blue:0 alpha:1] /*#ff4000*/ //------------------------------------------------- NARANJA
#define COLOR_NACIONAL [UIColor colorWithRed:0.431 green:0.431 blue:0.431 alpha:1] /*#6e6e6e*/ //------------------------------------------ GRIS MEDIO
#define COLOR_INTERNACIONAL [UIColor colorWithRed:0.345 green:0.345 blue:0.345 alpha:1] /*#585858*/ //------------------------------------- GRIS INTENSO
#define COLOR_SALTILLO [UIColor colorWithRed:0.643 green:0.643 blue:0.643 alpha:1] /*#a4a4a4*/ //------------------------------------------ GRIS CLARO
#define COLOR_FINANZAS [UIColor colorWithRed:0.18 green:0.8 blue:0.98 alpha:1] /*#2eccfa*/ //---------------------------------------------- AZUL CIELO
#define COLOR_EDITORIAL [UIColor colorWithRed:1 green:0.502 blue:0 alpha:1] /*#ff8000*/ //------------------------------------------------- ENTRE AMARILLO Y NARANJA
#define COLOR_REGIONALES [UIColor colorWithRed:0.6 green:0 blue:0 alpha:1] /*#990000*/ //-------------------------------------------------- ROJO
#define COLOR_GP [UIColor colorWithRed:0.6 green:0 blue:0 alpha:1] /*#990000*/ //---------------------------------------------------------- ROJO
#define COLOR_DURANGO [UIColor colorWithRed:0.706 green:0.016 blue:0.016 alpha:1] /*#b40404*/ //------------------------------------------- NARANJA QUEMADO
#define COLOR_LALAGUNA [UIColor colorWithRed:0.541 green:0.031 blue:0.031 alpha:1] /*#8a0808*/ //------------------------------------------ ENTRE ROJO Y NARANJA
#define COLOR_DEPORTES [UIColor colorWithRed:0.043 green:0.38 blue:0.129 alpha:1] /*#0b6121*/ //------------------------------------------- VERDE TONO 1
#define COLOR_ESPECTACULOS [UIColor colorWithRed:0.373 green:0.016 blue:0.706 alpha:1] /*#5f04b4*/ //-------------------------------------- MORADO
#define COLOR_NOSOTROS [UIColor colorWithRed:0.016 green:0.537 blue:0.694 alpha:1] /*#0489b1*/ //------------------------------------------ AZUL 1
#define COLOR_CULTURA [UIColor colorWithRed:0.859 green:0.663 blue:0.004 alpha:1] /*#dba901*/ //------------------------------------------- MOSTAZA
#define COLOR_SANTOS [UIColor colorWithRed:0.043 green:0.38 blue:0.043 alpha:1] /*#0b610b*/ //--------------------------------------------- VERDE
#define COLOR_CARTELERA [UIColor colorWithRed:0.227 green:0.004 blue:0.875 alpha:1] /*#3a01df*/ //----------------------------------------- ENTRE AZUL Y MORADO
#define COLOR_CIENCIA [UIColor colorWithRed:0 green:0 blue:1 alpha:1] /*#0000ff*/ //------------------------------------------------------- AZUL REY
#define COLOR_TECNOLOGIA [UIColor colorWithRed:0 green:0 blue:1 alpha:1] /*#0000ff*/ //---------------------------------------------------- AZUL REY
#define COLOR_SUCESOS [UIColor colorWithRed:0 green:0.502 blue:1 alpha:1] /*#0080ff*/ //--------------------------------------------------- AZUL TONO 2
#define COLOR_SALUD [UIColor colorWithRed:0 green:0.502 blue:1 alpha:1] /*#0080ff*/ //----------------------------------------------------- AZUL TONO 4
#define COLOR_SN [UIColor colorWithRed:1 green:0.749 blue:0 alpha:1] /*#ffbf00*/ //-------------------------------------------------------- AMARILLO ORO
#define COLOR_DC [UIColor colorWithRed:0 green:0.251 blue:1 alpha:1] /*#0040ff*/ //-------------------------------------------------------- AZUL TONO 3

//PARSE

//Distribucion

#define PARSE_APP_ID @"H0OiyQ0ce4SICrDHc2BG8x4fk4apFMq4ORcB2m0H"
#define PARSE_CLIENT_KEY @"6IbFpgekEBperoplTqraXFgUGYo9I20cA9LIHo3L"

//Desarrollo
//#define PARSE_APP_ID @"0ul901HlS4BU9Tq29t8ndA3l5ldNyziO4aEpAiX7"
//#define PARSE_CLIENT_KEY @"WBiipQYmZMRfdqQfhk4fRC1CDQvGVH2t2Lwbuo1k"
