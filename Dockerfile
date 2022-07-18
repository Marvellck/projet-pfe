FROM python:3.10.5-alpine

LABEL maintener="Uriel Marvel NGANKAM KALAMO"

WORKDIR /app

RUN pip install Flask-pymongo \
                pymongo[srv] \
                flask 

COPY ./app.py /app

RUN mkdir templates

COPY ./templates /app/templates

ENV MONGODB_CONNSTRING=mongodb+srv://Marvel:Password123@cluster0.4eo8ulb.mongodb.net/test?retryWrites=true&w=majority

ENV FLASK_ENV=development

ENV FLASK_APP=app.py

EXPOSE 5000

ENTRYPOINT [ "flask" ]

CMD [ "run" , "--host=0.0.0.0"] 

