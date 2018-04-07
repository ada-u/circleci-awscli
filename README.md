# Containerized aws-cli 

## Build

```bash
docker build -t uadachi/circleci-awscli .
```

## Usage

```bash
export AWS_ACCESS_KEY_ID="<id>"
export AWS_SECRET_ACCESS_KEY="<key>"
export AWS_DEFAULT_REGION="<region>"
```
