FROM python:alpine3.16
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
#CMD ["python","app.py runserver 0.0.0.0:5000"]
CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]
EXPOSE 5000