#!/usr/bin/env bash
# Genera evidencia real de ROJO (pruebas fallando, sin implementación) y
# VERDE (pruebas pasando, con la implementación final) para cada ronda.
#
# Cómo funciona: por cada ronda, reemplaza temporalmente los archivos reales
# (la versión "verde" que ya está en lib/) por una versión "rojo" (sin
# implementar, en evidencia_tdd/rojo/), corre las pruebas de esa ronda y
# guarda la salida. Luego restaura los archivos reales y vuelve a correr las
# pruebas para capturar el VERDE.
#
# Uso (desde la raíz del proyecto, con Flutter instalado):
#   bash evidencia_tdd/generar_evidencia.sh
#
# Resultado: archivos .txt en evidencia_tdd/resultados/, listos para pegar
# en tu README o usar como base para tus capturas de pantalla (corre
# `flutter test <archivo>` tú misma en tu terminal/IDE si tu profe pide
# captura de pantalla real en vez de texto).

set -u
RAIZ="$(cd "$(dirname "$0")/.." && pwd)"
STUBS="$RAIZ/evidencia_tdd/rojo"
OUT="$RAIZ/evidencia_tdd/resultados"
mkdir -p "$OUT"
cd "$RAIZ"

ronda() {
  local nombre="$1"; shift
  local testfile="$1"; shift
  local -a archivos=("$@")
  local -a backups=()

  echo ""
  echo "=================================================================="
  echo " $nombre"
  echo "=================================================================="

  for f in "${archivos[@]}"; do
    cp "$RAIZ/$f" "$RAIZ/$f.verde.bak"
  done

  echo ">> Copiando versión ROJO (sin implementar)..."
  for f in "${archivos[@]}"; do
    mkdir -p "$(dirname "$RAIZ/$f")"
    cp "$STUBS/$f" "$RAIZ/$f"
  done

  echo ">> flutter test $testfile   (se espera que falle: ROJO)"
  flutter test "$testfile" > "$OUT/${nombre}_ROJO.txt" 2>&1
  echo "   guardado en evidencia_tdd/resultados/${nombre}_ROJO.txt"

  echo ">> Restaurando versión real (VERDE)..."
  for f in "${archivos[@]}"; do
    mv "$RAIZ/$f.verde.bak" "$RAIZ/$f"
  done

  echo ">> flutter test $testfile   (se espera que pase: VERDE)"
  flutter test "$testfile" > "$OUT/${nombre}_VERDE.txt" 2>&1
  echo "   guardado en evidencia_tdd/resultados/${nombre}_VERDE.txt"
}

ronda "ronda2_comparador" \
  "test/comparador_test.dart" \
  "lib/dominio/comparador.dart"

ronda "ronda3_repaso_progreso_plan" \
  "test/repaso_progreso_test.dart" \
  "lib/dominio/repaso.dart" "lib/dominio/progreso.dart" "lib/dominio/plan_diario.dart"

ronda "ronda7_tutor" \
  "test/tutor_test.dart" \
  "lib/dominio/tutor.dart" "lib/datos/tutor_simulado.dart" "lib/datos/tutor_http.dart"

ronda "ronda9_viewmodels" \
  "test/vms_test.dart" \
  "lib/presentacion/vm/aprendizaje_vm.dart" \
  "lib/presentacion/vm/pronunciacion_vm.dart" \
  "lib/presentacion/vm/dictado_vm.dart" \
  "lib/presentacion/vm/lectura_vm.dart" \
  "lib/presentacion/vm/escritura_vm.dart" \
  "lib/presentacion/vm/conversacion_vm.dart" \
  "lib/presentacion/vm/repaso_vm.dart"

echo ""
echo "Listo. Revisa evidencia_tdd/resultados/*_ROJO.txt y *_VERDE.txt"
echo "(El proxy/Node ya tiene su evidencia real generada en esa misma carpeta:"
echo " ronda6_proxy_ROJO.txt y ronda6_proxy_VERDE.txt)."
