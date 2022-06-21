<#
   .Description
   Project: PowerKube
   Author/Autor: Carlos Mena (https://github.com/carlosm00)
   Definition: PowerShell application for Kubernetes (K8s) easy deployment and management. 
      This is an alternative for pythonic solution easyKube (https://github.com/carlosm00/easyKube)

#>

# .Namespace setting
# We set namespace at the beginning of the application. It is set to 'powerkube' as default option. 
# If there is need of changing the namespace of the application read, change it on the variable below

$namespace = "easykube"
kubectl config set-context --current --namespace=$namespace

# .Options setup
## Deployments
### List all deployments from namespace
function List-Deployment {
    kubectl get deployment --namespace=$namespace
}
### Describe all deployments from namespace
function Describe-Deployment {
    kubectl describe deployment --namespace=$namespace
}
### Create deployment from file
function Create-Deployment {
	param(
        [Parameter( Mandatory = $true,
                    Position=0,
                    ValueFromPipeline=$true )]
					[ValidateNotNullOrEmpty()]
					[string]$file
	)	
    kubectl create -f $file
}

## Services
### GET services from namespace
function List-Services {
    kubectl get services --namespace=$namespace
}

### Create service from file
function Create-Service {
	param(
        [Parameter( Mandatory = $true,
                    Position=0,
                    ValueFromPipeline=$true )]
					[ValidateNotNullOrEmpty()]
					[string]$file
	)	
    kubectl create -f $file
}

## Pods
### GET all pods from namespace
function List-Pods {
    kubectl get pods --namespace=$namespace
}

### Describe pods from namespace
function Describe-Pods {
    kubectl describe pods --namespace=$namespace
}

# .Menu description
function Select-Menu {
	# We describe the menu
	$main_menu= @("0: Pods menu","1: Servies menu","2: Deploymens menu","Every other option: Exit")
	# We enter menu on interactive mode
	Write-Host $main_menu	| Format-List
	# Ask for option
	$choice = Read-Host "Please, provide your choice: "
	switch ( $choice ){
		0 {
			echo "Pods-Menu"
		}
		1 {
			echo "Services-Menu"
		}
		2 { 
			echo "Deployment-Menu"
		}
		default {
			echo "break"
			break
		}
	}
}

Select-Menu