# ClientSideAutodelete
This batch script searches the specified folder for any files that have any part of thier file name matching an entry in a specified .txt file list. Each entry is in plain text and seperated by line (see ModRemovalList.txt). It will then list all of the matching files and asks the user if the list of files to delete looks good (y/n) and if it does it deletes all the listed files.  
This only took 3 tries with ChatGPT 3.5.
  
_If you don't want to type the directory and list file path every time then you'll first have to delete the /p's after both of the first two 'set' commands in the script. Then just replace 'Enter the path of the directory to search: ' with the directory path you want and 'Enter the path of the .txt file: ' with the file path you want it to always use. Now when you run the script it should just list the files and ask you if you want to delete them._
  
This was made because explorer's search stopped... well, searching.  
(if I type "dfu" I would expext to see the file "Lazydfu.jar" to show up because that used to work 1 hour ago but I guess not anymore? Plus this is way faster than slow explorer search speeds anyway)
