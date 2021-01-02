FROM python:3.8

COPY requirements.txt .

COPY manage.py .

RUN pip install -r requirements.txt

WORKDIR / .

COPY / .

RUN python3 manage.py makemigrations

RUN python3 manage.py migrate

ENTRYPOINT ["python"]

CMD ["manage.py", "runserver"]