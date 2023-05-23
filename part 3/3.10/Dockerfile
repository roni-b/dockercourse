FROM python:3.10-alpine

WORKDIR /usr/src/app

RUN apk add --no-cache bash curl ca-certificates tcl tk ttf-dejavu && \
    curl -sSL https://install.python-poetry.org | python3 -

ENV PATH="${PATH}:/root/.local/bin"

COPY pyproject.toml poetry.lock ./

RUN poetry install --no-interaction --no-ansi --no-dev

COPY . .

RUN poetry run invoke build

ENTRYPOINT ["poetry", "run", "invoke", "start"]
