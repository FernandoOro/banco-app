# 1. Usamos una imagen base de Python (como comprar una compu con Python instalado)
FROM python:3.9-slim

# 2. Creamos una carpeta de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiamos tus archivos (main.py y requirements.txt) dentro del contenedor
COPY . .

# 4. Instalamos las librerías necesarias
RUN pip install --no-cache-dir -r requirements.txt

# 5. Abrimos el puerto 80 (el puerto estándar web)
EXPOSE 80

# 6. El comando para arrancar la app cuando se encienda el contenedor
# Importante: host 0.0.0.0 permite que se conecten desde fuera del contenedor
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]