# This short Julia script lets the user delete unwanted characters
# from file names, designed in the context of anonymised
# feedback files in Moodle not relating back to desired
# ID due to "_1" and "_2" additions to filenames when 
# submitting multiple files. 

list = readdir("PATH/TO/ORIGINAL/FILES")

for i in 1:length(list)

    name = list[i]
  
    #this has to be repeated for the number of files submitted by the student, multiple 
    #replacements are allowed in Julia 1.7 in the same replace command
    
    newname = replace(name,"_1"=> "")
    newname = replace(newname,,"_2" => "") 
    
    #new and old paths to files
    #they could be identical
    
    newpath= "PATH/TO/ORIGINAL/FILES"*newname
    oldpath = "/PATH/TO/RENAMED/FILES"*list[i]

    #we move the file from the existing folder into a new one & rename
    mv(oldpath, newpath) 

end
