# Microservice Architecture (MSA) DB Management

This repository contains the DB migration scripts for the MSA Example project. The database migrations are handled using [Sqitch](https://sqitch.org/). Sqitch is a configuration management tool for database objects. Any addition or change to the database objects should be handled using Sqitch.

## Making DB Updates

Making a change to a database object can be done by running the *sqitch* docker image, and
mounting *migrations* directory:

```bash
docker run -ti --entrypoint /bin/bash -v ${PWD}/migrations:/migrations sqitch/sqitch:0.9998
```
Once the image starts up, we can then change the directory to *migrations* and
run the Sqitch command(s):

```bash
bash-4.3# cd migrations/
bash-4.3# sqitch add tables/organization -n "Adds the migrations for the organization table."
Created deploy/tables/organization.sql
Created revert/tables/organization.sql
Created verify/tables/organization.sql
Added "tables/organization" to sqitch.plan
```

The deploy, revert, and verify can then be updated with the SQL to create, or modify, a database object.

## Deployment

The deployed artifact is a Docker image that will be automatically run in docker-compose or a kubernetes cluster.

```
docker build -t local/sqitch:1.2 .
```

For more information, refer to the [Sqitch](https://sqitch.org/) website.
