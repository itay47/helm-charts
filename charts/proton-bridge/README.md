# Proton-Bridge

## Usage

1. Generate credentials

```bash
docker run --rm -it \
    -v $(pwd)/private/data:/data \
    -e PROTONMAIL_USERNAME='' \
    -e PROTONMAIL_PASSWORD='' \
    ghcr.io/arhat-dev/proton-bridge
```

2. Create a secret to include all credentials

```bash
kubectl create secret generic --dry-run -o yaml \
    --from-file cred.gpg \
    --from-file cred_dirname.txt \
    --from-file cred_filename.txt \
    --from-file pub.gpg \
    --from-file secret.gpg my-secret > my-secret.yaml
```

3. Add username and password to your secret
4. Update values.yaml to include them as environment variables
