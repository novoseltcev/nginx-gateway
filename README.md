# nginx-gateway
Image for automating nginx gateway deployment

# Installation
## Step 1
* If you want to setup nginx working on **HTTPS**, then copy all from `./sites-available` except `http.conf` to `./sites-enabled`
```console
rm -rf sites-enabled && mkdir sites-enabled && cp sites-available/* sites-enabled && rm sites-enabled/http.conf
```
* If you want to setup nginx working on **HTTP**, then copy only `./sites-available/http.conf`
```console
rm -rf sites-enabled && mkdir sites-enabled && cp sites-available/http.conf sites-enabled
```

## Step 2 (Optional)
If you need **SSL**, then paste certificate as `cert.crt` and key as `cert.key` into root.

## Step 3
Define the upstream for the **backend** and the **frontend** in the corresponding configs in the folder `./upstreams/`