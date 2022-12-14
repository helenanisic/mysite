FROM python:3.10

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app
 
EXPOSE 8081

RUN chmod +x /app/skripta.sh

ENTRYPOINT [ "/app/skripta.sh" ]

#CMD python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8081
