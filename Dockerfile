FROM python:3.9-slim-buster

RUN pip install --no-cache-dir \
    poetry
ADD pyproject.toml ./
ADD poetry.lock ./
RUN poetry install --no-root --no-dev
ADD . .
ENTRYPOINT ["poetry", "run", "python", "-m", "shreddit.app"]
