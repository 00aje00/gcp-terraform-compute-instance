# This terraform repo provisions 2 skeleton compute instances on GCP.
## Assuming you have terraform ready to go, ensure that you have gcloud cli ready to go.

``` gcloud -v 
```

If not, install it

``` bash gcloud-cli-setup.sh 
```
# Copy and past the following commands into the terminal:

## To create a new project (NOTE: lowercase only)

``` PROJECT_ID=project_name${RANDOM} 
```
``` gcloud projects create $PROJECT_ID --set-as-default 
```


## To authenticate your GCP account and cache the access key

``` gcloud auth application-default login 
```

## Click output-link / choose account / copy key / past in terminal then ENTER

# Enable the API for every service your script will be calling
## To enable compute API 

``` gcloud services enable compute.googleapis.com 
```

# With a valid ssh key, run 
``` terraform output 
``` 
# Now you can ssh into the either VM with the command syntax below.

``` gcloud compute ssh --zone "vm-zone" "vm-name"  --project "vm-project_id" 
```


EXAMPLE


``` gcloud compute ssh --zone "us-central1-a" "vm1"  --project "uep-misc" 
```
