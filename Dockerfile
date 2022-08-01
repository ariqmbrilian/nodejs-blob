FROM node:18 AS build-env
WORKDIR /app
COPY package*.json ./
COPY . .
RUN npm ci --only=production


FROM gcr.io/distroless/nodejs:18
COPY --from=build-env /app /
CMD ["./bin/www"]
