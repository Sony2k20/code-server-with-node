FROM codercom/code-server:latest

# Update and install dependencies
RUN sudo apt update && \
    sudo apt install -y build-essential curl

# Install Node Version Manager (nvm) and Node.js
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash 

RUN export NVM_DIR="$HOME/.nvm" && \
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && \
    nvm install 20


# Create the file with the nvm/nodejs start script
RUN echo '#!/bin/bash\n\n# Source nvm script to set up nvm\nexport NVM_DIR="$HOME/.nvm"\n[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' > /home/coder/start-nvm.sh

# Make the script executable
RUN chmod +x /home/coder/start-nvm.sh