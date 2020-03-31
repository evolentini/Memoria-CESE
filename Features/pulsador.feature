# language: es
# encoding: utf-8
# version: 2020-03-30

Caracteristica: Permitir la apertura mediante un pulsador
  Como usuario del equipo dentro del ambiente controlado
  Quiero disponer de una forma alternativa de abrir la puerta
  Para poder salir del ambiente sin generar una alarma
  Y permitir el ingreso de personas que no tienen tarjeta

Escenario: Estado inicial del equipo
  Cuando se inicia el equipo
  Entonces la salida para liberar la puerta está en reposo

Escenario: Liberacion por pulsador electromagnetica sin sensor
  Dado un equipo con una cerradura electromagnetica
  Y con el tiempo de apertura configurado en 3 segundos
  Cuando se activa la entrada para el pulsador de apertura
  Entonces se emite la secuencia de notas ascendentes
  Y la salida para liberar la puerta está activa
  Cuando transcurren 1 segundos
  Y se libera la entrada para el pulsador de apertura
  Entonces la salida para liberar la puerta está activa
  Cuando transcurren 2 segundos
  Entonces la salida para liberar la puerta está activa
  Cuando transcurren 0,1 segundos
  Entonces la salida para liberar la puerta está en reposo

Escenario: Liberacion por pulsador motorizada sin sensor
  Dado un equipo con una cerradura motorizada
  Y con el tiempo de apertura configurado en 7 segundos
  Y con el tiempo del mecanismo configurado en 1 segundos
  Cuando se activa la entrada para el pulsador de apertura
  Entonces se emite la secuencia de notas ascendentes
  Y la salida para liberar la puerta está activa
  Cuando transcurren 1 segundos
  Entonces la salida para liberar la puerta está en reposo
  Cuando transcurren 3 segundos
  Y se libera la entrada para el pulsador de apertura
  Y transcurren 2 segundos
  Entonces la salida para liberar la puerta está en reposo
  Cuando transcurren 1 segundos
  Entonces la salida para liberar la puerta está invertida
  Cuando transcurren 0,1 segundos
  Entonces la salida para liberar la puerta está en reposo

Escenario: Apertura por pulsador electromagnetica con sensor
  Dado un equipo con una cerradura electromagnetica
  Y con el sensor de puerta abierta instalado y configurado
  Y con el tiempo de apertura configurado en 4 segundos
  Cuando se activa la entrada para el pulsador de apertura
  Entonces se emite la secuencia de notas ascendentes
  Y la salida para liberar la puerta está activa
  Cuando transcurren 1 segundos
  Y se libera la entrada para el pulsador de apertura
  Entonces la salida para liberar la puerta está activa
  Cuando transcurren 2 segundos
  Y el sensor informa la apertura de la puerta
  Entonces la salida para liberar la puerta está en reposo
  Cuando transcurren 4 segundos
  Y el sensor informa el cierre de la puerta
  Entonces la salida para liberar la puerta está en reposo

Escenario: Liberacion por pulsador motorizada con sensor
  Dado un equipo con una cerradura motorizada
  Y con el sensor de puerta abierta instalado y configurado
  Y con el tiempo de apertura configurado en 5 segundos
  Y con el tiempo de cierre configurado en 8 segundos
  Y con el tiempo del mecanismo configurado en 1 segundos
  Cuando se activa la entrada para el pulsador de apertura
  Entonces se emite la secuencia de notas ascendentes
  Y la salida para liberar la puerta está activa
  Cuando transcurren 1 segundos
  Entonces la salida para liberar la puerta está en reposo
  Cuando transcurren 1 segundos
  Y se libera la entrada para el pulsador de apertura
  Y transcurren 1 segundos
  Y el sensor informa la apertura de la puerta
  Y transcurren 5 segundos
  Y el sensor informa el cierre de la puerta
  Entonces la salida para liberar la puerta está invertida
  Cuando transcurren 1 segundos
  Entonces la salida para liberar la puerta está en reposo
  