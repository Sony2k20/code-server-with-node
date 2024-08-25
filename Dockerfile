FROM codercom/code-server:latest

# Update and install dependencies
RUN sudo apt update && \
    sudo apt install -y build-essential curl

# Install Node Version Manager (nvm) and Node.js with sudo
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | sudo bash && \
    sudo bash -c "export NVM_DIR=\"$HOME/.nvm\" && \
    [ -s \"$NVM_DIR/nvm.sh\" ] && \. \"$NVM_DIR/nvm.sh\" && \
    nvm install 20"