# language: es
# encoding: utf-8
# version: 2020-03-30

Caracteristica: Registrar las aperturas y cierres de la puerta
  Como responsable de la seguridad del ambiente controlado
  Quiero saber quien y cuando abre y cierra la puerta
  Para tomar las acciones correctivas pertinentes

Escenario: Apertura forzada de la puerta
  Dado un equipo con una cerradura electromagnetica
  Y con el sensor de puerta abierta instalado y configurado
  Y sin eventos previos registrados en la bitacora
  Cuando el sensor informa la apertura de la puerta
  Entonces se registra un evento de puerta forzada
  Cuando transcurren 3 segundos
  Y el sensor informa el cierre de la puerta
  Entonces se registra un evento de puerta cerrada
  Cuando se consulta la bitacora del equipo 
  Entonces se reciben los dos eventos registrados

Escenario: Apertura por pulsador sin sensor
  Dado un equipo con una cerradura electromagnetica
  Y con el tiempo de apertura configurado en 3 segundos
  Cuando se activa la entrada para el pulsador de apertura
  Entonces se registra un evento de acceso correcto
  Cuando se consulta la bitacora del equipo 
  Entonces se recibe el evento registrado

Escenario: Liberacion por pulsador con sensor
  Dado un equipo con una cerradura electromagnetica
  Y con el sensor de puerta abierta instalado y configurado
  Y con el tiempo de apertura configurado en 3 segundos
  Y el sensor informa el cierre de la puerta
  Cuando se activa la entrada para el pulsador de apertura
  Y transcurren 3 segundos
  Entonces se registra un evento liberacion sin acceso
  Cuando se consulta la bitacora del equipo 
  Entonces se recibe el evento registrado

Escenario: Apertura por pulsador con sensor
  Dado un equipo con una cerradura electromagnetica
  Y con el sensor de puerta abierta instalado y configurado
  Y con el tiempo de apertura configurado en 3 segundos
  Y con el tiempo de apertura configurado en 5 segundos
  Cuando se activa la entrada para el pulsador de apertura
  Y transcurren 2 segundos
  Y el sensor informa la apertura de la puerta
  Y transcurren 4 segundos
  Y el sensor informa el cierre de la puerta
  Entonces se registra un evento de acceso correcto
  Cuando se consulta la bitacora del equipo 
  Entonces se recibe el evento registrado

Escenario: Apertura por pulsador sin cierre con sensor
  Dado un equipo con una cerradura electromagnetica
  Y con el sensor de puerta abierta instalado y configurado
  Y con el tiempo de apertura configurado en 3 segundos
  Y con el tiempo de apertura configurado en 5 segundos
  Cuando se activa la entrada para el pulsador de apertura
  Y transcurren 2 segundos
  Y el sensor informa la apertura de la puerta
  Y transcurren 5 segundos
  Entonces se registra un evento de acceso y puerta abierta
  Y transcurren 4 segundos
  Entonces se registra un evento de puerta cerrada
  Cuando se consulta la bitacora del equipo 
  Entonces se reciben los dos eventos registrados

Escenario: Apertura por tarjeta sin sensor
  Dado un equipo con una cerradura electromagnetica
  Y con el tiempo de apertura configurado en 3 segundos
  Y con la tarjeta A incluida en la lista de autorizados
  Cuando se acerca la tarjeta A al lector de rfid
  Entonces se registra un evento de acceso correcto
  Cuando se consulta la bitacora del equipo 
  Entonces se recibe el evento registrado

Escenario: Lectura de tarjeta no autorizada
  Dado un equipo con una cerradura electromagnetica
  Y con el tiempo de apertura configurado en 3 segundos
  Y con la tarjeta A incluida en la lista de autorizados
  Cuando se acerca la tarjeta B al lector de rfid
  Entonces se registra un evento de tarjeta no autorizada
  Cuando se consulta la bitacora del equipo 
  Entonces se recibe el evento registrado
