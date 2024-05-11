# ClientSideAutodelete
This batch script searches the specified folder for any files that have any part of thier file name matching an entry in a specified .txt file list. Each entry is in plain text and seperated by line (see EXAMPLE.txt). It will then list all of the matching files and asks the user if the list of files to delete looks good (y/n) and if it does it deletes all the listed files.  
This only took 3 tries with ChatGPT 3.5  
I have also modified the script myself (that's what CustomizedAutoDelete.bat is) so that it doesn't ask you what the path is and instead has it as part of the file, however I have included the orginal by ChatGPT only for people who don't know how to modify .bat files.  
  
This was made because explorer's search stopped... well, searching.  
(if I type "dfu" I would expext to see the file "Lazydfu.jar" to show up because that used to work 1 hour ago but I guess not anymore? Plus this is way faster than slow explorer search speeds anyway)
