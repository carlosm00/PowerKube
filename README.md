# PowerKube

PowerShell application for Kubernetes (K8s) easy deployment and management. This is an alternative for pythonic solution easyKube (https://github.com/carlosm00/easyKube)

# Features
- Open Source
- PowerShell-based scripts
- Legacy Kubernetes (k8s)

# Services to deploy
- Web servers
	- Ngix
	- Apache
- Database servers
	- MySQL
	- PostgreSQL
	- MongoDB
	- Redis

# Repository content
## Templates
This is the templates directory, listed in sub-folders for each service listed above. 
The full list of files is described on the table below:

| File		                     | Decription                      |
| :----------------------------  | :------------------------------ |
| apache_deployment              | Deployment template file        |
| apache_service                 | Service template file           |
| nginx_deployment               | Deployment template file        |
| nginx_service                  | Service template file           |
| mysql_deployment               | Deployment template file        |
| mysql_service                  | Service template file           |
| mysql_persistentvolume         | Persisten Volume template       |
| mysql_persistentvolumeclaim    | Persisten Volume claim template |
| mysql_secret_creation          | Service secrets template        |
| redis_deployment               | Deployment template file        |
| redis_service                  | Service template file           |