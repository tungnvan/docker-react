# Build phase
FROM node:10.15-alpine as builder
WORKDIR /frontend
COPY ./package.json ./
RUN npm install
COPY . .
RUN npm run build

# Run phase
FROM nginx:1.17.1
EXPOSE 80
COPY --from=builder /frontend/build /usr/share/nginx/html