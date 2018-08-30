FROM python:3.6.0

RUN pip install --upgrade pip

RUN apt-get update && apt-get install -y \
		gcc \
		gettext \
		mysql-client libmysqlclient-dev \
		postgresql-client libpq-dev \
		sqlite3 \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV DJANGO_VERSION 2.1

RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"

RUN pip install django-extensions
