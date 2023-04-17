# Hydra CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/hydra"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Hydra server with CI/CD on Elestio

<img src="Hydra.png" style='width: 100%;'/>
<br/>
<br/>

# Once deployed ...

You can open pgAdmin web UI here:

    https://[CI_CD_DOMAIN]/
    Login: [ADMIN_EMAIL] (set in env var)
    password: [ADMIN_PASSWORD] (set in env var)

You can connect to your server with any Postgres client with those credentials:

    Host: [CI_CD_DOMAIN]
    Port: 15432
    Login: postgres
    Password: [SOFTWARE_PASSWORD] (set in env var)

You can also connect with any PostgreSQL client, including the official CLI:

    PGPASSWORD=[SOFTWARE_PASSWORD] psql --host=[CI_CD_DOMAIN] --port=15432 --username=postgres
