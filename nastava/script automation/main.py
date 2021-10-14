# The main purpose of this script is to automate the process of making a script in a directory for the course of this subject. 
import os
import shutil as sh
# ---------------------------------------------------------------------------------
# This function will make a file in the directory specified
def file_maker_function(file_name):
    
    current_file = open(file_name, "w")
    for i in range(0, 2):
        for i2 in range(0, 35):
            current_file.write("%")
        if i == 1 :
            break
        for j in range(5):
            current_file.write("% \n")
    
    current_file.close()
# ---------------------------------------------------------------------------------

# This function will make a folder in the directory specified
def folder_maker_function( folder_name ):
    const_directory = "C:/Users/Teodor/Documents/Github/matlab/nastava/"
    final_directory = const_directory + folder_name
    os.mkdir(final_directory)
    print("The directory "+ final_directory + " was made!")

    return final_directory

# ---------------------------------------------------------------------------------
def complete_make_function( file_name, folder_name ):
    current_directory = "C:/Users/Teodor/Documents/Github/matlab/nastava/script automation/" + file_name

    destination_directory = folder_maker_function( folder_name )
    destination_directory = destination_directory + "/" + file_name

    file_maker_function(file_name)
    sh.move(current_directory, destination_directory)

    print("File moved.")

# ---------------------------------------------------------------------------------
# main function definition
def main():

    user_folder_input = input("Uneti naziv foldera koji treba generisati: ")
    print("\n")
    user_file_input = input("Uneti naziv fajla koji treba generisati: ")
    print("\n")
    complete_make_function(user_file_input, user_folder_input)

if __name__ == "__main__":
    main()
# ---------------------------------------------------------------------------------