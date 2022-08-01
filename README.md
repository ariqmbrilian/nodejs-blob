```bash
Part of https://github.com/Azure-Samples/storage-blob-upload-from-webapp-node.git
```

## Adding a connection string

Navigate to the [Azure Portal](https://portal.azure.com) and copy the connection string from your storage account (under **Settings** > **Access keys**) in to the `.env.example` file. Once you have pasted your connection string in to the file, rename the file from `.env.example` to `.env`.

## Create storage account 
```
az storage account create \
  --kind StorageV2 \
  --resource-group development-rg \
  --location southeastasia \
  --name 999dev
```
