# Generate ssh-key
ssh-keygen -t rsa
# Copy public key to ManagedServer
ssh-copy-id -i /root/.ssh/id_rsa.pub ManagedServerIP
# Connect ManagedServer
ssh                      ManagedServerIP
ssh -i /root/.ssh/id_rsa ManagedServerIP