
# This terraform repo provisions 2 skeleton compute instances on GCP.

## Assuming you have terraform ready to go, ensure that you have gcloud cli ready to go.

```bash
gcloud -v 
```

If not, install it

```bash 
bash gcloud-cli-setup.sh 
```

## COPY and PASTE the following commands into the terminal:

### To create a new project (NOTE: strings are lowercase only)

```bash
 PROJECT_ID=project_name${RANDOM} 
```
```bash
 gcloud projects create $PROJECT_ID --set-as-default 
```


### To authenticate your GCP account and cache the access key

```bash
 gcloud auth application-default login 
```


## Click output-link / choose account / copy key / past in terminal then ENTER

## Enable the API for every service your script will be calling

### To enable compute API 

```bash
 gcloud services enable compute.googleapis.com 
```

## With a valid ssh key, run 

```bash
 terraform init
 terraform plan
 terraform apply --auto-approve 
```


# To ssh into your VMs, run

```bash
 terraform output
```

### Using data from the output, you can ssh into the either VM with the command syntax below.

```bash
 gcloud compute ssh --zone "vm-zone" "vm-name"  --project "vm-project_id" 
```


EXAMPLE


```bash
 gcloud compute ssh --zone "us-central1-a" "vm1"  --project "uep-misc" 
```
