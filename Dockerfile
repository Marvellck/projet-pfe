FROM python:3.10.5-alpine

LABEL maintener="Uriel Marvel NGANKAM KALAMO"

WORKDIR /app

RUN pip install Flask-pymongo \
                pymongo[srv] \
                flask 

COPY ./src /app/

ENV FLASK_ENV=development \ 
    FLASK_APP=app.py \
    MONGO_URI="mongodb+srv://Marvel:Marvel@cluster0.4eo8ulb.mongodb.net/test?retryWrites=true&w=majority"

EXPOSE 5000

ENTRYPOINT [ "flask" ]

CMD [ "run" , "--host=0.0.0.0"] 

