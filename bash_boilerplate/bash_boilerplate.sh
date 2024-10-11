#!/bin/bash
# Bash Boilerplate Project
# Organized setup for creating and managing files and directories

# Create a website folder and files for HTML, CSS, JS, and assets
mkdir website
cd website

# Create basic project files
touch index.html styles.css index.js .gitignore

# Create image and font files
touch background.jpg header.png footer.jpeg
touch roboto.font lato.font menlo.font

# Organize assets by creating directories
mkdir images fonts

# Move image and font files into respective directories
cp background.jpg images/
cp header.png images/
cp footer.jpeg images/
mv roboto.font fonts/robot.woff
mv lato.font fonts/lato.ttf
mv menlo.font fonts/menlo.otf

# Clean up original files
rm background.jpg header.png footer.jpeg

# Create client folder structure
mkdir -p client/src
mv index.html client/src/

# Display the directory tree after setup
find
