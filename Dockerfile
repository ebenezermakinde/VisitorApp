FROM python:3.7-alpine

# set working directory
WORKDIR /var/www/app

COPY ./start.sh /var/www/app/
RUN chmod +x start.sh

COPY ./requirements.txt /requirements.txt

RUN apk update && \
    apk add --virtual build-deps gcc python3-dev musl-dev && \
    apk add \
    sudo \
    && pip install -r /requirements.txt



RUN echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel


RUN adduser -S ebenezer wheel

USER ebenezer


# copy requirements.txt to /requirements.txt in the container
# to avoid reinstalling packages when a container is rebuilt
# it will only reinstall packages when changes has been made to the file


RUN pip install -r /requirements.txt





# copy project root to app folder in the container
COPY . /var/www/app



ENTRYPOINT [ "./start.sh" ]

EXPOSE 8000