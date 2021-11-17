FROM python:3.7-stretch

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED=1

RUN apt-get update
ENV DJANGO_DIR=/GithubActionTest

RUN mkdir $DJANGO_DIR

WORKDIR $DJANGO_DIR

RUN pip install --upgrade pip

COPY requirements.txt $DJANGO_DIR/

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . $DJANGO_DIR/

ENTRYPOINT ["/GithubActionTest/entrypoint.sh"]
