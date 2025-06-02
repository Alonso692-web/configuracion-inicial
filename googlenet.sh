#!/bin/bash

# Ruta base de Miniconda (ajusta según tu instalación)
MINICONDA_PATH="/home/$USER/miniconda3"

# Activar Miniconda
source "$MINICONDA_PATH/bin/activate"

# Activar el entorno virtual guilletorch
conda activate guilletorch

# Navegar a la carpeta googlenet-pesos
cd googlenet-pesos || { echo "Error: No se pudo acceder a googlenet-pesos"; exit 1; }

# Ejecutar el script Python con logging de actividad
echo "Iniciando ejecución: $(date)"
python modelo_googlenet_prueba8.py
echo "Finalizada ejecución: $(date) - Código de salida: $?"