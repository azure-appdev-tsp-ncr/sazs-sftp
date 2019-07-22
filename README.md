# sazs-sftp
Simple Azure Solution - Secure FTP to Azure Fileshare

**sazs-sftp-new.sh** - Will create an ACI that attaches an Azure File Share using hardened SFTP Container provided by Atomz: https://hub.docker.com/r/atmoz/sftp.  The ACI/SFTP Instance has it's own unique domain-name (passed in as parm) and generated complex password.  The benefit of this implementation is that you would provide every customer/partner/employee with their own unique SFTP instance, instead of having to manage a huge monolithic FTP infrastructure.  You can still have a central Storage Account/File share for each user (upload directory is a parm) or a storage account provisioned for each SFTP instance for more secure data seperation.

Additional simple backend Server-less Functions can be triggered by Storage Account Events to support the common types of Manage File Transfer activities needed by file-based integration patterns.
