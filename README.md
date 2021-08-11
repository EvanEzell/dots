# Evan Ezell's Configuration Files Directory (Dot Files)

# The main setup file (setup.sh)
The purpose of this file is to set up sym links from the home directory to configuration files 
in the syms directory. This allows all of the files to remain contained in the syms directory
and be tracked by git. The setup file is for setting up the configuration files
for a NEW system. Once this has been run, there is no need to run it again. Changes to individual
configuration files can be made directly in the syms/<filename> file and changes will be reflected
because the files are appropriately sym linked.
