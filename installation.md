<link rel="shortcut icon" type="image/svg+xml" href="/favicon.svg">

# Installation

Get OpenGenomeBrowser running in 10 minutes!

These are the basic steps:

1. [Clone OpenGenomeBrowser Docker template](#clone-the-opengenomebrowser-docker-template)
2. [Download demo database](#download-demo-database)
3. [Run Docker compose](#run-docker-compose)
4. [Connect to the OpenGenomeBrowser container](#connect-to-the-opengenomebrowser-container)
5. [Create superuser](#create-superuser)
6. [Load the folder structure into the database](#load-the-folder-structure-into-the-database)

In order to run OpenGenomeBrowser with your own data you will have to prepare your files as described [below](/documentation/index.md).

## Prerequisites

- Linux x64: We provide no support for macOS!
- [docker](https://docs.docker.com/get-docker/)
- [docker-compose-plugin](https://docs.docker.com/compose/install/)

Note: ensure you have a **current** version of docker! System repositories tend to be out of date!

## Clone the OpenGenomeBrowser docker template

```bash
git clone https://github.com/opengenomebrowser/opengenomebrowser-docker-template.git
cd opengenomebrowser-docker-template
```

## Download demo folder_structure

```bash
./download_demo_db.sh
```

... or use your own folder_structure, of course! Read the [documentation](documentation/index.md) on how to do that.

## Run Docker Compose

```bash
docker compose -f production-template.yaml up
```

Open https://localhost/, ignore the self-signed certificate, and you should see the welcome page!

## Connect to the OpenGenomeBrowser container

In a seperate terminal, run:

```bash
# open terminal in Docker container
docker exec -ti opengenomebrowser_web bash

# log in as user
$docker (root)# sudo -u user --preserve-env bash
```

## Create superuser

In the terminal from before, run:

```bash
# create django administrator account
$docker (user)# python manage.py createsuperuser
```

Open https://localhost/admin/ and you should be able to log in with your superuser account. Here, you could create new regular users.

## Load the folder structure into the database

In the terminal from before, run:

```bash
# import organisms and genomes
$docker (user)# python db_setup/manage_ogb.py import-folder-structure

# import ortholog annotations
$docker (user)# python db_setup/manage_ogb.py import-orthologs

# import pathway maps
$docker (user)# python db_setup/manage_ogb.py import-pathway-maps
```

Congratulations, OpenGenomeBrowser is ready! (Example: https://localhost/pathway/?map=kornec00400&g1=@tax:root)

## Get ready for production

- Replace the certificates in `nginx/certs` with proper ones
- Adapt `nginx/nginx.conf` accordingly
- Change the `production-template.env`:
    - add your own `DJANGO_SECRET_KEY` (generate one using bash: `$(date | sha256sum | base64 | head -c 60)`)
    - change `DJANGO_ALLOWED_HOSTS` to your domain (e.g. opengenomebrowser.bioinformatics.unibe.ch)
    - ensure `USER_ID` and `GROUP_ID` are correct. It mostly influences the permissions a file created by OpenGenomeBrowser will have. This is the
      command to get the current users uid/gid: `id -u`/`id -g`.
    - to increase the time allowed for calculations, change `HARAKIRI` and `uwsgi_read_timeout` in `nginx/nginx.conf` 

## Apply updates

Updates are very simple to install. Simply stop the running container, pull the latest

```shell
# stop OpenGenomeBrowser (Ctrl+C)
# pull newest image
docker pull opengenomebrowser/opengenomebrowser
# start OpenGenomeBrowser
docker compose -f production-template.yaml up
```

From time to time, something like the following message may appear:

```text
The folder structure needs to be updated to match OpenGenomeBrowser code.
Current version: 1, expected: 2
Use the script update_folder_structure from the package opengenomebrowser_tools to perform the upgrade!
```

It means that the folder structure requires certain changes to be compatible with the new version of OpenGenomeBrowser. These changes can be applied
using the function `update_folder_structure`
in [opengenomebrowser-tools](https://github.com/opengenomebrowser/opengenomebrowser-tools#update_folder_structure).
