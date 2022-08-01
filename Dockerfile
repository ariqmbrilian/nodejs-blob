FROM node:18 AS build-env
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm ci --only=production
COPY . .


FROM gcr.io/distroless/nodejs:18
COPY --from=build-env /app /
CMD ["./bin/www"]
