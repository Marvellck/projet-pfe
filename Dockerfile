FROM python:alpine

LABEL maintener="Jeeva S. Chelladhurai"

COPY . /app

WORKDIR /app

ENV FLASK_ENV=development

ENV FLASK_APP=app.py

RUN pip install flask

EXPOSE 5000

ENTRYPOINT [ "flask" ]

CMD [ "run", "sleep 10" ] 

