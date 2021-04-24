    FROM golang

    WORKDIR /app

    COPY /app/codeeducation.GO /app
        RUN apt-get update && \
            apt-get install vim -y

        ENTRYPOINT [/app/codeeducation.go]

        CMD [ "go run codeeducation.go" ]

exec'$@'