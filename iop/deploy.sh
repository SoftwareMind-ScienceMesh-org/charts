helm repo add sciencemesh https://sciencemesh.github.io/charts/
#helm repo update
helm dependency build
helm upgrade -i iop  . --set-file gateway.configFiles.revad\\.toml=gateway.toml -f public-sp.toml -f home-sp.yaml -f reva-sp.yaml --set-file storageprovider-reva.configFiles.revad\\.toml=storage-reva.toml --set-file storageprovider-home.configFiles.revad\\.toml=storage-home.toml --set-file gateway.configFiles.users\\.json=users-ailleron.json --set-file storageprovider-public.configFiles.revad\\.toml=storage-public.toml # --set wopiserver.enabled=true -f wopiserver.yaml --set gateway.env.REVA_APPPROVIDER_IOPSECRET=qwerty12345 --set wopiserver.config.iopsecret=qwerty12345

#helm upgrade -i iop  . --set-file gateway.configFiles.revad\\.toml=gateway.toml -f public-sp.toml -f home-sp.yaml -f reva-sp.yaml --set-file storageprovider-reva.configFiles.revad\\.toml=storage-reva.toml --set-file storageprovider-home.configFiles.revad\\.toml=storage-home.toml --set-file gateway.configFiles.users\\.json=users-ailleron.json --set-file storageprovider-public.configFiles.revad\\.toml=storage-public.toml --set wopiserver.enabled=true -f wopiserver.yaml --set gateway.env.REVA_APPPROVIDER_IOPSECRET=qwerty12345 --set wopiserver.config.iopsecret=qwerty12345
