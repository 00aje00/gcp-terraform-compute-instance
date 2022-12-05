# Assuming that you have terraform ready to go, ensure that you have google cloud cli installed, if not, install it

``` gloud -v ```
OR

``` bash gcloud-cli-setup.sh ```
# Copy and past the following commands into the terminal:

### To create a new project (NOTE: if must have letters, lowercase only)

``` PROJECT_ID=project_name${RANDOM} ```
``` gcloud projects create $PROJECT_ID --set-as-default ```


### To authenticate your GCP account and cache the key

``` gcloud auth application-default login ```

### Click output-link / choose account / copy key / past in terminal and ENTER

# Enable the api for every service your script will be calling
### To enable compute api 

``` gcloud services enable compute.googleapis.com ```

# From ```terraform output``` and a valid ssh key, Now you can ssh into the vm with the command syntax

``` gcloud compute ssh --zone "vm-zone" "vm-name"  --project "vm-project_id"```
EXAMPLE

``` gcloud compute ssh --zone "us-central1-a" "vm1"  --project "uep-misc"```
