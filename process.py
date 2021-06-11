log_file = open("um-server-01.txt") #opens the table and creates a variable for it to be accessed through python.


def sales_reports(log_file): #Defines the function and sets the parameter.
    for line in log_file: #Loops through the file and assigns the name line to each row.
        line = line.rstrip() #Removes any blank in the end of the string
        day = line[0:3] #targets the index value of 0 to 3 and assigned it the day variable.
        if day == "Mon": # if the day value is equal to "Tue"/"Mon"
            print(line)  # then it will print the line to console.


sales_reports(log_file) #Calls the function with the server 01 table being opened.

