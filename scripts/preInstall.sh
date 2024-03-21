#set env vars
#set -o allexport; source .env; set +o allexport;

mkdir -p ./hydra;
mkdir -p ./pgadmin;
mkdir -p ./data;
chown -R 1001:1001 ./hydra;
chown -R 1001:1001 ./pgadmin;
chown -R 1001:1001 ./data;

cat <<EOT > ./servers.json
{
    "Servers": {
        "1": {
            "Name": "local",
            "Group": "Servers",
            "Host": "172.17.0.1",
            "Port": 5234,
            "MaintenanceDB": "hydra",
            "SSLMode": "prefer",
            "Username": "postgres",
            "PassFile": "/pgpass"
        }
    }
}
EOT
