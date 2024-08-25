FROM codercom/code-server:latest

# Update and install dependencies
RUN sudo apt update && \
    sudo apt install -y build-essential curl

# Install Node Version Manager (nvm) and Node.js
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | sudo bash && \
    sudo export NVM_DIR="$HOME/.nvm" && \
    sudo [ -s "$NVM_DIR/nvm.sh" ] && \. sudo "$NVM_DIR/nvm.sh" && \
    sudo nvm install 20