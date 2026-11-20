# Habla Fluido

App Flutter construida siguiendo el manual **"Habla Fluido: aprende inglés con un tutor de IA"**
(TDD rojo-verde-refactor, 12 rondas). Incluye dominio puro, datos (tutor simulado/HTTP, voz real/simulada,
almacenamiento), ViewModels, pantallas y el **proxy Node.js** que protege la llave de la IA.

## Estructura

```
habla_fluido/
  lib/
    dominio/        <- reglas (Dart puro, sin Flutter)
    datos/           tutor_simulado, tutor_http, voz_real, voz_simulada, almacen_avance
    presentacion/
      vm/            ViewModels (ChangeNotifier)
      pantallas/     pantallas y widgets
    dependencias.dart  main.dart
  test/              comparador_test, repaso_progreso_test, tutor_test, vms_test
  proxy/             servidor Node que protege la llave de la IA y el prompt
    prompt.js server.js
    test/proxy.test.js
  android/ ios/      permisos de micrófono ya agregados
```

## Cómo ejecutar

```bash
flutter pub get
flutter test                 # pruebas de dominio, datos y ViewModels
flutter run                   # usa el tutor SIMULADO (sin internet ni costo)
flutter run --dart-define=TUTOR_URL=https://tu-servidor.com/tutor   # IA real vía proxy
```

Proxy (Node.js, usa el test runner integrado `node:test`):

```bash
cd proxy
node --test          # ✅ ya verificado: 12/12 pruebas en verde
export ANTHROPIC_API_KEY=tu_llave
node server.js
```

## ⚠️ Importante — límites de este entorno

Este proyecto se generó en un entorno sin Flutter/Dart SDK instalado (y sin acceso a internet para
instalarlo), así que **no se pudo ejecutar `flutter test` ni `flutter pub get` aquí**. Todo el código
Dart se transcribió fielmente del manual (dominio, datos, ViewModels, pantallas) y se revisó a mano
(imports, balance de llaves/paréntesis), pero **debes correr `flutter pub get` y `flutter test` tú
mismo** en tu máquina con Flutter instalado antes de entregarlo, por si hace falta ajustar alguna
versión de paquete.

Lo que **sí se verificó en este entorno**: las 12 pruebas del proxy (`node --test`) pasan en verde.

## Siguientes pasos sugeridos por el manual ("RETO PARA TI")

- Agregar `frasesConfundidas` al comparador (pares esperada/dicha más frecuentes).
- Limitar `MazoRepaso` a 20 tarjetas nuevas por día.
- Agregar tope diario de mensajes por usuario en el proxy.
- Sumar más frases y lecturas sobre Dolores Hidalgo (Ronda 5).
