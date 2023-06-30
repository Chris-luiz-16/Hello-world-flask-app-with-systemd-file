FROM alpine:latest

RUN mkdir -p /var/flaskapp

ENV HOME  /var/flaskapp

ENV PORT 5000

WORKDIR $HOME

RUN apk update && apk add python3 py3-pip --no-cache

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE $PORT

ENTRYPOINT ["gunicorn","-w","3","-b","0.0.0.0:5000"]

CMD ["app:app"]
