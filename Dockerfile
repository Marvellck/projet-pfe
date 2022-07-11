FROM python:alpine

LABEL maintener="Jeeva S. Chelladhurai"

WORKDIR /home/vagrant/

ENV FLASK_ENV=development

ENV FLASK_APP=app.py

RUN pip install flask

EXPOSE 5000

CMD [ "flask", "run" ] 

