Simple CompBio Project
======================

A simple script for creating computational biology projects.

What does this script do?

1. Create a new project directory (name provided by the user).
1. Create files and subdirectories in that directory.
1. Initialize that directory as a Git repository.

Project Structure
-----------------

the `setup_project_dir.sh` script creates the following folder structure:

    Path_Provided
    |- doc/           # directory for documentation, one subdirectory for manuscript
    |
    |- data/          # data for storing fixed data sets
    |
    |- src/           # any source code
    |
    |- bin/           # any compiled binaries or scripts
    |
    |- results/       # output for tracking computational experiments performed on data

A README containing a brief blurb is placed in each folder.
This is because git will not track empty folders and placing a README will
remind you of what goes in each folder, and also the overall
folder structure will be retained

Installation
------------

There are a few ways set everything up.

1. fork/clone the repo to your computer
1. ...


How to use this script
----------------------

Run this script from the command line:

```
$ bash /path/to/compbio-project-script/new-project.sh /path/to/your-new-project
```

Optional: Create an *alias* for this script so that you can run it easily from
anywhere. To do so, you can add the following to your `.bashrc`:

```
alias newproject='/path/to/compbio-project-script/new-project.sh'
```

Then, you can run this script as:

```
$ newproject /path/to/your-new-project
```


References
==========

1. Chen, D., Gonzalez, I., & Loyall, D. (2015).
   computational-project-cookie-cutter: DOI Release (v.0.1.2). Zenodo.
   https://doi.org/10.5281/ZENODO.16558
1. Noble, W. S. (2009). A Quick Guide to Organizing Computational Biology
   Projects. In F. Lewitter (Ed.), PLoS Computational Biology (Vol. 5, Issue 7,
   p. e1000424). Public Library of Science (PLoS).
   https://doi.org/10.1371/journal.pcbi.1000424

<!-- END -->
