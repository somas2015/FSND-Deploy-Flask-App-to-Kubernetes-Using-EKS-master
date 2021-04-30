FROM python:3.7-stretch


WORKDIR /app
COPY . /app

RUN pip install --upgrade pip
RUN pip install gunicorn
RUN pip install -r requirements.txt

CMD [ "python","./main.py" ]
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]