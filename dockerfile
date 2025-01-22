# Usa la imagen base oficial de Node.js
FROM node:20.17.0

# Crea el directorio de trabajo y lo establece como ruta de trabajo
WORKDIR /usr/src/app

# Copia solo los archivos necesarios para instalar dependencias primero (mejora la caché de la capa Docker)
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto del código al contenedor
COPY . .

# Expone el puerto 8080
EXPOSE 8080

# Comando por defecto para iniciar la aplicación
CMD ["npm", "start"]
