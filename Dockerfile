FROM python:3-alpine

WORKDIR /app

RUN pip install --upgrade pip && pip install pipenv

COPY ./Pipfile /app/Pipfile
COPY ./Pipfile.lock /app/Pipfile.lock
RUN pipenv install --system --deploy --ignore-pipfile

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
