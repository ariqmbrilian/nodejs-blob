## Part of

https://github.com/Azure-Samples/storage-blob-upload-from-webapp-node.git

## Create storage account 
```
az storage account create \
  --kind StorageV2 \
  --resource-group development-rg \
  --location southeastasia \
  --name 999dev
```

# Create container thumbnails and images

## Adding a connection string

Navigate to the [Azure Portal](https://portal.azure.com) and copy the connection string from your storage account (under **Security + networking** > **Access keys**) in to the `.env.example` file. Once you have pasted your connection string in to the file, rename the file from `.env.example` to `.env`.

## Run docker
```
docker compose build
docker compose up -d
```
