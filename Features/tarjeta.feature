# language: es
# encoding: utf-8
# version: 2020-03-30

Caracteristica: Permitir la apertura con tarjetas de proximidad
  Como responsable de la seguridad del ambiente controlado
  Quiero que los usuarios abran la puerta con una tarjeta rifd
  Para poder controlar y registrar quienes ingresan

Escenario: Apertura por tarjeta electromagnetica con sensor
  Dado un equipo con una cerradura electromagnetica
  Y con el sensor de puerta abierta instalado y configurado
  Y con el tiempo de apertura configurado en 4 segundos
  Y con la tarjeta A incluida en la lista de autorizados
  Cuando se acerca la tarjeta A al lector de rfid
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
