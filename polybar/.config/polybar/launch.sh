#!/bin/bash

# Mata barras que já estejam rodando
killall -q polybar

# Espera até que tenham morrido mesmo
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Inicia a barra chamada 'minhabarra' (definida no config.ini)
polybar minhabarra 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar lançada..."
