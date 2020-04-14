FROM python:3.7

## Set environment variables

# Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE 1

# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED 1

RUN mkdir /app

COPY requirements /app/requirements

WORKDIR /app

RUN pip install -r requirements/all.txt

COPY . /app

ENV PYTHONPATH=/app/src
ENV GOOGLE_APPLICATION_CREDENTIALS=/app/dj-sa.json

# Collect static assets silently
RUN python3 src/manage.py collectstatic --noinput > /dev/null 2>&1

EXPOSE 8080

ENTRYPOINT ["bin/entrypoint.sh"]

CMD ["./bin/dj-gunicorn.sh"]
