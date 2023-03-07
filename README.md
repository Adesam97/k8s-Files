## k8s yaml File 


### This is k8s yaml file for a simple microservice app with backend and database service

In this example, there are three deployments: frontend service, backend service and one for the database. 

The frontend deployment specifies that three replicas of the myapp container should be created, and the service exposes port 80 to the outside world, 

routing traffic to the myapp containers on port 8080. 

Note that this file assumes that the myapp-image Docker image has already been built and is available in a container registry. You will need to replace myapp-image 

with the name of your own Docker image.

The backend deployment specifies that three replicas of the myapp-backend container should be created, and the container is configured with environment variables that 

specify the hostname and credentials for the database. 

The database deployment specifies that one replica of the postgres container should be created, and the container is configured with environment variables that specify 

the credentials and name for the database.

Note that this file assumes that the myapp-backend-image Docker image has already been built and is available in a container registry, as well as the postgres image. 

Also, the secrets myapp-secrets must be created beforehand, with keys for db-user and db-password, that store the user and password for the database. 

You will need to replace the image names, secrets and database credentials with the names and values for your own app.


### To use

- Save the file and move to the file directory
- Make sure that you have a Kubernetes cluster set up and 'kubectl' installed on your machine
- Create the Kubernetes resources by running the 'kubectl apply' or 'kubectl create' command and specifying the file name:

<i> kubectl apply -f filename.yaml</i>

Use 'kubectl apply' when you make changes to the file and wish to update your resources
