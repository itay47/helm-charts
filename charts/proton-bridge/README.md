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
    --from-file "$(pwd)/private/data/cred.gpg" \
    --from-file "$(pwd)/private/data/cred_dirname.txt" \
    --from-file "$(pwd)/private/data/cred_filename.txt" \
    --from-file "$(pwd)/private/data/pub.gpg" \
    --from-file "$(pwd)/private/data/secret.gpg" \
    my-secret > my-secret.yaml
```

3. Add `username` and `password` to your secret file (`my-secret.yaml`)

```yaml
# ... other secret data
stringData:
  username: example@pm.me
  password: <your-password>
```

4. Update values.yaml to include them as environment variables
