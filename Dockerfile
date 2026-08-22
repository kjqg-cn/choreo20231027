FROM python:3.11-slim

WORKDIR /home/choreouser

EXPOSE 3000

COPY files/* /home/choreouser/

RUN apt-get update && \
    apt-get upgrade -y && \
    addgroup --gid 10008 choreo && \
    adduser --disabled-password --no-create-home --uid 10008 --ingroup choreo choreouser && \
    pip install --no-cache-dir -r requirements.txt

USER 10008

CMD [ "python", "app.py" ]
