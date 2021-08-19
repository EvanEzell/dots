# Evan Ezell's Configuration Files Directory (Dot Files)

## The main setup file (setup.sh)
The purpose of this script is to set up sym links from the home directory to
configuration files in the syms directory. This allows all of the files to
remain contained in the syms directory and be tracked by git. The setup file is
for setting up the configuration files for a NEW system. Once this has been
run, there is no need to run it again. Changes to individual configuration
files can be made directly in the `syms/<filename>` file and changes will be
reflected because the files are appropriately sym linked.

If no arguments are passed to `setup.sh` then it will set up the file(s) listed
in `config_files.txt`. If filenames are passed as arguments, it will set up
only the files for which the filenames were passed. At the end of the script,
`setup.sh` will run file specific setups for each file in the `setup`
directory, if a setup file exists (see below).

## setup directory
The setup directory contains scripts that need to be run on a new machine
before the configuration files will work properly. These files must have the
correct name to be run by `setup.sh`. The naming convention used is the name of
the configuration file followed by `_setup.sh`. For example, the setup script
to run for the vim configuration file (`vimrc`) is named `vimrc_setup.sh`.

The setup files may contain specific software or plugins that needs to be
downloaded to make the configuration file work properly.

## modular configuration files
I tried to make my configuration files as modular as possible by creating
individual files for logical sections and importing those individual files
within the actual configuration file. This keeps everything nicely laid out. I
made a directory for each of the configuration files that have imported files.

## uninstall.sh
If no arguments are passed to `uninstall.sh` then it will remove sym links of
config files found in `config_files.txt`. If filenames are passed as arguments,
it will remove sym links only the files for which the filenames were passed. 
