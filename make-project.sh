#!/usr/bin/env bash

# Don't overwrite files, just to be safe.
set -o noclobber

# Exit immediately if any command returns an error code.
set -e

# Exit if no arguments were provided.
if [ $# -eq 0 ] ; then
    echo "Create a new project directory."
    echo "Usage: $0 <project>"
    exit 1
fi

# The first argument passed into the script should be the name of the directory
# where you want your new project setup.
project_dir="$1"

echo "Setting up folder structure in ${project_dir}"

# Make the project directory then cd into it.
mkdir "${project_dir}"
cd "${project_dir}"

# Create subdirectories.
mkdir bin data docs notebooks results src

# Create data subdirectories.
mkdir data/anthro data/derived data/raw 

# Ignore some files.
cat > .gitignore << EOF
.env
tmp
EOF

# Create dummy files so that Git will know about these directories. IE, even if
# you don't want the files in these directories to be tracked by git, you still
# want to be sure that the same directory structure exists on any/all remotes.
touch bin/.gitkeep
touch data/anthro/.gitkeep
touch data/derived/.gitkeep
touch data/raw/.gitkeep
touch docs/.gitkeep
touch notebooks/.gitkeep
touch results/.gitkeep
touch src/.gitkeep

# Ignore (almost) everything inside the data directory.
cat > data/.gitignore << EOF
*
!.gitignore
!.gitkeep
EOF

echo "Folders created."


# Create the README file.
cat > README.md << EOF
# PROJECT TITLE

Description of your project.

## Project structure


    ${project_dir}
    ├── README.md
    ├── bin        => Compiled binaries or scripts
    ├── data       => Immutable data
    ├── docs       => Documentation of this project
    ├── notebooks  => Notebooks (e.g., Jupyter, R Markdown)
    ├── results    => Tables, figures, etc., (i.e., for the *results* section of your manuscript)
    └── src        => Source code


<!-- END OF README -->
EOF

echo "Top-level README.md created"

# Create a citation file. For more information about citation files, see:
#   https://citation-file-format.github.io/
# Example cff from:
#   https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files
cat > CITATION.cff << EOF
cff-version: 1.2.0
title: "My Research Software"
authors:
- family-names: "Lisa"
  given-names: "Mona"
  orcid: "https://orcid.org/0000-0000-0000-0001"
- family-names: "Bot"
  given-names: "Hew"
  orcid: "https://orcid.org/0000-0000-0000-0002"
version: 2.0.4
doi: 10.5281/zenodo.1234
date-released: 2017-12-18
url: "https://github.com/github-linguist/linguist"
message: "If you use this software, please cite it as below."
EOF

echo "CITATION.cff created"

# Set up the .env file. Use single quotes with `echo` to avoid expanding variables.
echo 'export PATH="$PATH:$(pwd -P)/bin"' > .env

# Initialize the repo.
git init .
git add .
git commit -m "Initialize new project repository"

# All done!
exit 0
