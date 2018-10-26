# bash script to execute az commands to create a simple Cloud SFTP Server to demo Logic Apps/Blob Storage Integration
#
# Assumes az login already performed from Azure bash shell, other values hard-coded to match Logic App
# 

# Create SFTP Server Container Instance, generating User Password
SFTP_PWD=$(date +%s | sha256sum | base64 | head -c 12)
az container create \
    --resource-group ghtspFTP2BLOBdemo \
    --name sazs001ftp2blob \
    --image atmoz/sftp:latest \
    --dns-name-label ftp-2-blob \
    --ip-address public \
    --ports 22 \
    --environment-variables SFTP_USERS=foo:$SFTP_PWD \

# Display created FTP Server, User, Password
echo '****************'
echo SFTP Server: ftp-2-blob.eastus.azurecontainer.io
echo SFTP User:   foo
echo SFTP Pwd:    $SFTP_PWD
