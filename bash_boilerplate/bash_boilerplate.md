
# Bash Boilerplate Project

This project demonstrates the use of Bash commands to set up a basic website file structure, manage files, and organize assets.

## Project Overview

The Bash script (`bash_boilerplate.sh`) automates the process of creating a directory structure for a simple website project. It generates HTML, CSS, and JavaScript files, organizes images and fonts, and removes unnecessary files as part of the setup.

## Workflow

The script performs the following actions:

1. **Directory Creation**:
   - Creates a `website` folder to house the project.
   - Within `website`, it creates `images` and `fonts` directories for organizing assets.

2. **File Creation**:
   - Creates an `index.html`, `styles.css`, `index.js`, and `.gitignore` file.
   - Generates placeholders for images (`background.jpg`, `header.png`, `footer.jpeg`) and fonts (`roboto.font`, `lato.font`, `menlo.font`).

3. **File Management**:
   - Moves image and font files to their respective directories (`images` and `fonts`).
   - Renames font files to the correct file types (`woff`, `ttf`, `otf`).
   - Cleans up unnecessary files after moving them.

4. **Directory Structure**:
   - After the script runs, the directory structure will look like this:

   ```
   website/
   ├── client/
   │   └── src/
   │       └── index.html
   ├── images/
   │   ├── background.jpg
   │   ├── header.png
   │   └── footer.jpeg
   ├── fonts/
   │   ├── roboto.woff
   │   ├── lato.ttf
   │   └── menlo.otf
   ├── index.js
   ├── styles.css
   ├── .gitignore
   ```

## How to Run the Script

1. Ensure you have Bash installed on your system (most Unix-based systems like Linux and macOS already have it).
2. Open a terminal and navigate to the folder where you’ve saved the `bash_boilerplate.sh` file.
3. Run the script using the following command:

   ```bash
   bash bash_boilerplate.sh
   ```

This will create the directory structure and files as described above.

## Prerequisites (Optional)

- Unix-based operating system (Linux, macOS).
- Bash shell (version 3.x or higher).
