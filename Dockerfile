# Usamos una imagen oficial de Python ligera
FROM python:3.11-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Instalar dependencias del sistema necesarias para compilar paquetes de InvenTree si hiciera falta
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    python3-dev \
    && rm -rf /lib/apt/lists/*

# Copiar el archivo de requerimientos e instalarlos
COPY src/backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el código fuente del proyecto al contenedor
COPY . .

# Crear las carpetas de datos que definimos en el config.yaml
RUN mkdir -p /app/data /app/data/media /app/data/static /app/data/backup /app/config

# Mover el archivo de configuración a la ruta que espera InvenTree
COPY config/config.yaml /app/config/config.yaml

# Exponer el puerto por defecto de Django / InvenTree
EXPOSE 8000

# Comando para simular el inicio de la aplicación
CMD ["python", "src/backend/InvenTree/manage.py", "runserver", "0.0.0.0:8000"]
#