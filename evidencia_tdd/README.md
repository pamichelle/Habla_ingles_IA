# Evidencia TDD: ROJO y VERDE por ronda

Tu profe pide ver el ciclo completo de TDD: primero la prueba **falla** (ROJO,
porque el código aún no existe o está sin terminar) y después, con la
implementación lista, la prueba **pasa** (VERDE). Esta carpeta trae todo listo
para generar esa evidencia de verdad, corriendo las pruebas de verdad — no son
capturas inventadas.

## Qué hay aquí

- `rojo/` — una copia "sin implementar todavía" (con `TODO`/`UnimplementedError`)
  de cada archivo de `lib/`, organizada por ronda. Son el "antes" de cada parte
  del manual.
- `generar_evidencia.sh` — script que, por cada ronda: guarda tu código real,
  pone la versión ROJO, corre `flutter test`, guarda el resultado; luego
  restaura tu código real, corre de nuevo y guarda el VERDE.
- `resultados/` — ahí caen los `.txt` con la salida de cada corrida.
  **Ya incluye la evidencia real de la Ronda 6 (el proxy en Node)**, porque esa
  sí la pude ejecutar yo mismo: `ronda6_proxy_ROJO.txt` (9 de 12 pruebas en rojo)
  y `ronda6_proxy_VERDE.txt` (12 de 12 en verde).

## Por qué el resto no viene ya generado

Preparé todo esto en un entorno sin Flutter/Dart instalado (y sin acceso a
internet para instalarlo), así que no pude correr `flutter test` por ti para
las Rondas 2, 3, 7 y 9. Lo que sí pude hacer es dejarte la versión ROJO de cada
archivo ya escrita y el script que hace todo el intercambio automáticamente.

## Cómo generar tu evidencia (en tu compu, con Flutter instalado)

```bash
cd habla_fluido
flutter pub get
bash evidencia_tdd/generar_evidencia.sh
```

Esto va a:
1. Ronda 2 — comparador (`test/comparador_test.dart`)
2. Ronda 3 — repaso espaciado SM-2, progreso y plan diario (`test/repaso_progreso_test.dart`)
3. Ronda 7 — tutor (dominio, simulado y HTTP) (`test/tutor_test.dart`)
4. Ronda 9 — los 7 ViewModels (`test/vms_test.dart`)

Para cada una verás en terminal el ROJO y luego el VERDE, y quedan guardados
como texto en `evidencia_tdd/resultados/`.

## Si tu profe quiere capturas de pantalla (como en tus otras prácticas)

El script dejó tu proyecto exactamente como estaba al terminar (restaura todo
al final). Si prefieres la captura de pantalla real de tu terminal o tu IDE
(como hiciste en Nieves 2048 / Dolores AR), corre cada paso a mano en vez del
script:

```bash
# 1) ROJO: copia el archivo "antes" sobre el real
cp evidencia_tdd/rojo/lib/dominio/comparador.dart lib/dominio/comparador.dart
flutter test test/comparador_test.dart    # <- captura esto (todo en rojo)

# 2) VERDE: trae de vuelta tu archivo real (o usa git checkout si lo subiste)
git checkout -- lib/dominio/comparador.dart
flutter test test/comparador_test.dart    # <- captura esto (todo en verde)
```

Repite cambiando la ruta por cada ronda (ver la lista de archivos dentro de
`generar_evidencia.sh`). Si tu repo no tiene git inicializado, usa el script
automático en vez de `git checkout`: es exactamente lo mismo pero sin
necesitar git.

## Importante: no subas esta carpeta `evidencia_tdd/rojo/` como si fuera tu
código final

Son solo las versiones "incompletas" para fabricar el ROJO. Tu entrega real es
el código que ya está en `lib/` (el verde, terminado). Si quieres, puedes
borrar `evidencia_tdd/` del zip final una vez que ya copiaste las capturas o
los `.txt` a tu README de evidencia.
