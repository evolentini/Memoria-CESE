# language: es
# encoding: utf-8
# version: 2020-03-30

Caracteristica: Autorizar o denegar el acceso a una tarjeta
  Como responsable de la seguridad del ambiente controlado
  Quiero poder agregar o quitar tarjetas autorizadas
  Para poder controlar quienes ingresan

Escenario: Estado incial del equipo
  Dado un equipo con la configuracion de fabrica
  Cuando se activa se acerca la tarjeta A al lector de rfid
  Entonces no se autoriza el acceso a la tarjeta A
  Y se emite la secuencia de notas descendentes

Escenario: Autorizacion de una tarjeta
  Dado un equipo con una cerradura electromagnetica
  Y con el tiempo de apertura configurado en 3 segundos
  Y con la lista de tarjetas autorizadas vacia
  Cuando se agrega la tarjeta A a la lista de autorizadas
  Cuando se acerca la tarjeta A al lector de rfid
  Entonces se autoriza el acceso a la tarjeta A
  Y se emite la secuencia de notas ascendentes

Escenario: Autorizacion de una segunda tarjeta 
  Dado un equipo con una cerradura electromagnetica
  Y con el tiempo de apertura configurado en 3 segundos
  Y con la tarjeta A incluida en la lista de autorizados
  Cuando se agrega la tarjeta B a la lista de autorizadas
  Y se acerca la tarjeta B al lector de rfid
  Entonces se autoriza el acceso a la tarjeta B
  Y se emite la secuencia de notas ascendentes

Escenario: Desautorizacion de una tarjeta
  Dado un equipo con una cerradura electromagnetica
  Y con el tiempo de apertura configurado en 3 segundos
  Y con la tarjeta A incluida en la lista de autorizados
  Y con la tarjeta B incluida en la lista de autorizados
  Cuando se elimina la tarjeta B a la lista de autorizadas
  Y se acerca la tarjeta B al lector de rfid
  Entonces no se autoriza el acceso a la tarjeta B
  Y se emite la secuencia de notas descendentes
