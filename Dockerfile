FROM python:3.8-slim-buster

RUN pip install --no-cache-dir \
    pipenv
ADD Pipfile* ./
RUN pipenv install --deploy --system
ADD . .
ENTRYPOINT ["python", "-m", "shreddit.app"]
