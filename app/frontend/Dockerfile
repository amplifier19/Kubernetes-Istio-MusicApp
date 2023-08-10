FROM node:17-alpine as builder

WORKDIR '/app'

COPY ./frontend/package.json .

COPY ./frontend/package-lock.json .

RUN npm install

COPY ./frontend .

RUN npm run build



FROM nginx:1.15.2-alpine

RUN rm -rf /etc/nginx/conf.d

COPY conf /etc/nginx

COPY --from=builder /app/build /usr/share/nginx/html
