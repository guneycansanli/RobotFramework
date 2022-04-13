*** Settings ***
Library     DatabaseLibrary
Library    OperatingSystem


Suite Setup    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBName}    mydb
${DBUser}    root
${DBPass}    root
${DBHost}    127.0.0.1
${DBPort}    3306

*** Test Cases ***
#Create person table
 #   ${output}=  Execute SQL String  Create table person(id integer,first_name varchar(20),last_name varchar(20));
  #  log to console    ${output}
   # should be equal as strings    ${output}    None

#Inserting Data in person Table
    #Single record
    #${output}=  Execute SQL String  Insert into person values(101,"john","canady");

    #Multiple record
    #${output}=  Execute SQL String  ./TestData/mydb_person_insertData.sql
    #log to console    ${output}
    #should be equal as strings    ${output}    None

Check David record present in person Table
    #check if exists in database    select id from mydb.person where first_name="Daviddd";
    check if exists in database    select id from mydb.person where first_name="David";

Check jio record present in person Table
    check if not exists in database    select id from mydb.person where first_name="jio";

Check person table exist in mydb database
    table must exist    person

Verify Row Count is Zero
    row count is 0    select id from mydb.person where first_name="xyz";

Verify Row Count is Equal to some value
    row count is equal to x    select id from mydb.person where first_name="David";    1    # 1  row is expected

Verify Row Count is Greater than some value
    row count is greater than x    select id from mydb.person where first_name="David";    0    # more than 0 row

Verify Row Count is less than some value
    row count is less than x    select id from mydb.person where first_name="David";    5    #less than 5 rows

Update a record in person table
    ${output}=  Execute SQL String  Update mydb.person set first_name="jio" where id=102;
    log to console    ${output}
    should be equal as strings    ${output}    None

Retrive Records from Person Table
    @{queryResults}=    query    Select * from mydb.person;
    log to console    many @{queryResults}

Delete Records From person table
    ${output}=    Execute SQL String    Delete from mydb.person;
    should be equal as strings    ${output}    None
