FROM python:3.10

RUN pip install pipenv

COPY . /app

WORKDIR /app

RUN pipenv install --deploy --ignore-pipfile

SHELL ["pipenv", "shell"]

CMD ["python", "main.py"]
