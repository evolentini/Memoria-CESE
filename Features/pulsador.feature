# language: es
# encoding: utf-8

Caracteristica: Permitir la apertura de la puerta mediante un pulsador
    Como usuario del equipo dentro del ambiente controlado
    Quiero disponer de una forma alternativa de abrir la puerta
    Para poder salir del ambiente controlado sin generar una alarma
    Y permitir el ingreso eventual de personas que no tienen tarjeta

Escenario: Estado inicial del equipo
    Cuando se inicia el equipo
    Entonces la salida para liberar la puerta está en reposo

Escenario: Liberacion sin apertura por pulsador sin sensor sin inversion
    Dado un equipo con una cerradura con liberación electromagnetica
    Y con el tiempo de apertura configurado en 3 segundos
    Cuando se activa la entrada para el pulsador de apertura
    Entonces la salida para liberar la puerta está activa
    Cuando transcurren 1 segundos
    Y se libera la entrada para el pulsador de apertura
    Entonces la salida para liberar la puerta está activa
    Cuando transcurren 2 segundos
    Entonces la salida para liberar la puerta está activa
    Cuando transcurren 0,1 segundos
    Entonces la salida para liberar la puerta está en reposo

Escenario: Liberacion sin apertura por pulsador sin sensor con inversion
    Dado un equipo con una cerradura con liberación motorizada
    Y con el tiempo de apertura configurado en 3 segundos
    Y con el tiempo del mecanismo configurado en 1 segundos
    Cuando se activa la entrada para el pulsador de apertura
    Entonces la salida para liberar la puerta está activa
    Cuando transcurren 1 segundos
    Entonces la salida para liberar la puerta está en reposo
    Cuando transcurren 1 segundos
    Y se libera la entrada para el pulsador de apertura
    Entonces la salida para liberar la puerta está en reposo
    Cuando transcurren 1 segundos
    Entonces la salida para liberar la puerta está invertida
    Cuando transcurren 0,1 segundos
    Entonces la salida para liberar la puerta está en reposo

Escenario: Apertura y cierre por pulsador con sensor sin inversion
    Dado un equipo con una cerradura con liberación electromagnetica
    Y con el sensor de puerta abierta instalado y configurado
    Y con el tiempo de apertura configurado en 4 segundos
    Cuando se activa la entrada para el pulsador de apertura
    Entonces la salida para liberar la puerta está activa
    Cuando transcurren 1 segundos
    Y se libera la entrada para el pulsador de apertura
    Entonces la salida para liberar la puerta está activa
    Cuando transcurren 2 segundos
    Y el sensor informa la apertura de la puerta
    Entonces la salida para liberar la puerta está en reposo
    Cuando transcurren 4 segundos
    Y el sensor informa el cierre de la puerta
    Entonces la salida para liberar la puerta está en reposo

