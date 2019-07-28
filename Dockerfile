# BUILD
FROM hrkt/command-as-a-service:latest as build-stage

# Production
FROM ubuntu:19.10 as production-stage
RUN apt-get update && apt-get install -y \
  musl-dev \
  pandoc
COPY --from=build-stage /command-as-a-service .
COPY app-settings.json .
EXPOSE 8080
CMD ["./command-as-a-service"]

