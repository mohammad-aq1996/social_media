FROM python:3.10-alpine

WORKDIR /code

COPY requirements.txt /code/

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["gunicorn", "SocialMedia.wsgi", "8000"]
