FROM python:3.8.20
LABEL Author="Roy Sahar"
ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
WORKDIR /DevopsCourse2024
COPY . .
RUN pip install --editable .
RUN flask init-db
EXPOSE 5000
ENTRYPOINT [ "flask", "run", "--host=0.0.0.0" ]