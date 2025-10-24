# Usa una imagen base de Node.js ligera
FROM node:20-slim

# Crea y establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia la aplicación
COPY package*.json ./

RUN npm install --omit=dev

COPY . .


# Expone el puerto que escucha la aplicación (importante para la documentación)
EXPOSE 8080

# Comando para correr la aplicación
CMD ["node", "src/server.js"]