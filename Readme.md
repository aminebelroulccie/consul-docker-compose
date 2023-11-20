# TO RUN THE CONSUL IN CONTROLLERS FOLLOW THESE STEPS:

- First you have to change both IP addresses in `config.jsonnet`
  - Set `SERVER_ADDR` to the orchestrator IP address
  - Set `IP` to this controller IP address
- Then run the `setup.sh` script
- Then change the IP address in the `.env` file
- Finally, run `docker-compose up -d`
