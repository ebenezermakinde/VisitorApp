FROM python:3.7-alpine


RUN addgroup -S appgroup && adduser -S ebenezer -G appgroup



USER ebenezer


# copy requirements.txt to /requirements.txt in the container
# to avoid reinstalling packages when a container is rebuilt
# it will only reinstall packages when changes has been made to the file
COPY ./requirements.txt /requirements.txt



#run package installations
RUN pip install -r /requirements.txt



# set working directory
WORKDIR /var/www/app

# copy project root to app folder in the container
COPY . /var/www/app

CMD ["python","manage.py","runserver"]

EXPOSE 8000