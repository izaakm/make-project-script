Simple CompBio Project
======================

A script for creating computational biology projects.

What does this script do?

1. Create a new project directory (name provided by the user).
1. Create files and subdirectories in that directory.
1. Initialize that directory as a Git repository.

Project Structure
-----------------

The `make-project.sh` script creates a new project directory with the following
structure:

    example
    ├── CITATION.cff
    ├── README.md
    ├── bin
    ├── data
    │   ├── anthro
    │   ├── derived
    │   └── raw
    ├── docs
    ├── notebooks
    ├── results
    └── src

Usage
-----

```
$ bash /path/to/compbio-project-script/make-project.sh <project-directory>
```

The script will create `<project-directory>`. If `<project-directory>` already
exists, the script will exit with an error.

You can use a relative path to create a new project directory in the current working directory:

```
$ bash /path/to/compbio-project-script/make-project.sh example
$ cd example
```

Or you can use an absolute path to create a new project directory anywhere (as long as the parent directory already exists):

```
$ bash /path/to/compbio-project-script/make-project.sh /path/to/example
$ cd /path/to/example
```

Installation
------------

1. Fork this repo by clicking the 'Fork' button above.
1. Clone the repo to your computer:
    ```
    $ git clone https://github.com/<your-GitHub-username>/compbio-project-script.git
    $ cd compbio-project-script
    ```
1. Edit the script to create the project directory structure of your liking.
1. Optional: Create an *alias* for this script so that you can run it easily
   from anywhere. To do so, you can add the following to your `.bashrc`:

    ```
    alias mkprj='bash /path/to/compbio-project-script/make-project.sh'
    ```

    Then, you can run this script as:

    ```
    $ mkprj /path/to/your-make-project
    ```


Acknowledgements
================

- Forked from [chendaniely/computational-project-cookie-cutter][730938c] (Chen et al., 2015)


References
==========

1. Chen, D., Gonzalez, I., & Loyall, D. (2015).
   computational-project-cookie-cutter: DOI Release (v.0.1.2). Zenodo.
   https://doi.org/10.5281/ZENODO.16558
1. Noble, W. S. (2009). A Quick Guide to Organizing Computational Biology
   Projects. In F. Lewitter (Ed.), PLoS Computational Biology (Vol. 5, Issue 7,
   p. e1000424). Public Library of Science (PLoS).
   https://doi.org/10.1371/journal.pcbi.1000424


[730938c]: https://github.com/chendaniely/computational-project-cookie-cutter/tree/730938cb29a4e00c36083e242e5dd5be55b3e024

<!-- END -->
