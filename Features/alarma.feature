# language: es
# encoding: utf-8

Caracteristica: Informar si la puerta permanece abierta
  Como responsable de la seguridad del ambiente controlado
  Quiero que saber cuando la puerta esta abierta indebidamente
  Para tomar las acciones correctivas pertinentes

Escenario: Estado inicial del equipo
  Cuando se inicia el equipo
  Entonces la salida de alarma del equipo está en reposo

Escenario: Apertura forzada breve de la puerta
  Dado un equipo con el sensor de puerta abierta instalado
  Y configurado con el tiempo minimo de alarma en 5 segundos
  Cuando el sensor informa la apertura de la puerta
  Entonces la salida de alarma del equipo está activa
  Cuando transcurren 3,5 segundos
  Y el sensor informa el cierre de la puerta
  Entonces la salida de alarma del equipo está activa
  Cuando transcurren 1,5 segundos
  Entonces la salida de alarma del equipo está activa
  Cuando transcurren 0,1 segundos
  Entonces la salida de alarma del equipo está en reposo

Escenario: Apertura forzada prolongada de la puerta
  Dado un equipo con el sensor de puerta abierta instalado
  Y con el tiempo minimo de alarma configurado en 3 segundos
  Cuando el sensor informa la apertura de la puerta
  Entonces la salida de alarma del equipo está activa
  Cuando transcurren 3 segundos
  Entonces la salida de alarma del equipo está activa
  Cuando transcurren 1,5 segundos
  Y el sensor informa el cierre de la puerta
  Entonces la salida de alarma del equipo está en reposo

Escenario: Apertura por pulsador sin cierre de la puerta
  Dado un equipo con el sensor de puerta abierta instalado
  Y con el tiempo de apertura configurado en 4 segundos
  Y con el tiempo de cierre configurado en 8 segundos
  Cuando se activa la entrada para el pulsador de apertura
  Entonces la salida para liberar la puerta está activa
  Cuando transcurren 1 segundos
  Y se libera la entrada para el pulsador de apertura
  Entonces la salida para liberar la puerta está activa
  Cuando transcurren 2 segundos
  Y el sensor informa la apertura de la puerta
  Entonces la salida para liberar la puerta está en reposo
  Y la salida de alarma del equipo está en reposo
  Cuando transcurren 8 segundos
  Entonces la salida para liberar la puerta está en reposo
  Y la salida de alarma del equipo está activa
  Cuando transcurren 0,1 segundos
  Y el sensor informa el cierre de la puerta
  Entonces la salida de alarma del equipo está en reposo
  