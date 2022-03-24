# VisitorApp

#### To run the django application as a standalone:
*  Create a virtual environment
*  Run installation of packages with pip install -r requirements.txt
*  Start the application with python manage.py runserver and access it on localhost:8000

#### To run django application in docker:
* Install docker on your machine
* Run docker build --tag visitorapp .
* Run the container with docker run -it -p 8000:8000 visitorapp and then access it on localhost:8000