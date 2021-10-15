<<<<<<< HEAD

FROM node:alpine as builder
=======
FROM node:alpine as builder 
>>>>>>> 19a6e71bc21bad995d2e9e4d0372d75f7601f45a
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
<<<<<<< HEAD
COPY --from=0 /app/build /usr/share/nginx/html
=======
COPY --from=builder /app/build /usr/share/nginx/html
>>>>>>> 19a6e71bc21bad995d2e9e4d0372d75f7601f45a
