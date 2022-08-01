FROM python:3.10.5-alpine

LABEL maintener="Uriel Marvel NGANKAM KALAMO"

WORKDIR /app

RUN pip install Flask-pymongo \
                pymongo[srv] \
                flask 

COPY ./src /app/

ENV FLASK_ENV=development \ 
    FLASK_APP=app.py

EXPOSE 5000

ENTRYPOINT [ "flask" ]

CMD [ "run" , "--host=0.0.0.0"] 

