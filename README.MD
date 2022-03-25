# VisitorApp
### To run the django application as a standalone:
*  Create a virtual environment
*  Run installation of packages with pip install -r requirements.txt or pip3 install -r requirements.txt (if you're using python3)
*  Start the application with python manage.py runserver and access it on localhost:8000 or start with python3 manage.py runserver (for same reason as pt. 3)

### Sample output
```json
{
    "timestamp": "2022-03-24T20:11:01.732799Z",
    "hostname": "127.0.0.1:8000",
    "engine": "django.db.backends.sqlite3",
    "visitor_ip": "127.0.0.1"
}
```

### To run django application in docker:
* Install docker on your machine
* Run docker build --tag visitorapp .
* Run the container with docker run -it -p 8000:8000 visitorapp and then access it on localhost:8000

### k8s deployment
* For k8s deployment run the commands below on the cluster.
1. `kubectl apply -f k8s/backend-deployment.yaml`
* Expose the service on the node
2. `kubectl apply -f backend-node-port.yaml`