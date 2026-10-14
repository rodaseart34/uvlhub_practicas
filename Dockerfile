
FROM python:3.13

WORKDIR /pruebas

COPY . .


RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    pip install -e ./rosemary



EXPOSE 5000

# Arrancar MariaDB, configurar la BD y arrancar Flask
CMD export PYTHONPATH=$(pwd) && \
    flask db upgrade && \
    rosemary db:seed && \
    flask run --host=0.0.0.0 --reload --debug