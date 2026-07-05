# Usamos una imagen oficial de Python ligera
FROM python:3.11-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo de requerimientos e instalarlos
COPY src/backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el código fuente del proyecto al contenedor
COPY . .

# Exponer el puerto por defecto de Django / InvenTree
EXPOSE 8000

# Comando para simular el inicio de la aplicación
CMD ["python", "src/backend/InvenTree/manage.py", "runserver", "0.0.0.0:8000"]
