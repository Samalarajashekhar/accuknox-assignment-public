FROM debian:bullseye-slim
RUN apt-get update && apt-get install -y cowsay fortune ncat netcat-openbsd
COPY wisecow.sh /app/wisecow.sh
WORKDIR /app
RUN chmod +x wisecow.sh
EXPOSE 4499
CMD ["./wisecow.sh"]
ENV PATH="/usr/games:${PATH}"

