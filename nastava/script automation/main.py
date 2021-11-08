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
        for j in range(4):
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
#This function uses the previous functions and sorts the file in the right folder.
def complete_make_function( file_name, folder_name ):
    current_directory = "" + file_name

    destination_directory = folder_maker_function( folder_name )
    destination_directory = destination_directory + "/" + file_name

    file_maker_function(file_name)
    sh.move(current_directory, destination_directory)

    print("File moved.")
# ---------------------------------------------------------------------------------
# main function definition
def main():

    tmp = input("Unesi 1 ako se pravi samo folder ili fajl, 2 ako se prave oba: ") #temporary variable

    if tmp == "1":
        folder_or_file = input("Da li se pravi folder ili fajl?")
    elif tmp == "2":
        user_folder_input = input("Uneti naziv foldera koji treba generisati: ")
        print("\n")
        user_file_input = input("Uneti naziv fajla koji treba generisati: ")
        print("\n")
        complete_make_function(user_file_input, user_folder_input)
    else:
        print("Unos nije validan.")

    # user_folder_input = input("Uneti naziv foldera koji treba generisati: ")
    # print("\n")
    # user_file_input = input("Uneti naziv fajla koji treba generisati: ")
    # print("\n")
    # complete_make_function(user_file_input, user_folder_input)

    return 0

if __name__ == "__main__":
    main()
# ---------------------------------------------------------------------------------