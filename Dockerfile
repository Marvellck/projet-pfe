FROM python:alpine

LABEL maintener="Jeeva S. Chelladhurai"

WORKDIR /app

RUN apk update && apk add python3 py3-pip

RUN pip install Flask-pymongo

RUN python3 -m pip install pymongo[srv]

RUN pip install flask 

COPY . /app

ENV MONGODB_CONNSTRING=mongodb+srv://Marvel:Password123@cluster0.4eo8ulb.mongodb.net/test?retryWrites=true&w=majority

ENV FLASK_ENV=development

ENV FLASK_APP=app.py

EXPOSE 5000

ENTRYPOINT [ "flask" ]

CMD [ "run" ] 

