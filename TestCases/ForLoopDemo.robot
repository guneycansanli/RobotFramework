*** Test Cases ***
#ForLoop1
 #   FOR    ${i}    IN RANGE    1    10
  #  LOG TO CONSOLE    ${i}
   # END

#ForLoop2
   #FOR  ${i}  IN    1 2 3 4 5 6 7 8    #ForLoop2    1 2 3 4 5 6 7 8 array
 #  FOR  ${i}  IN    1    2    3    4    5    6    7    8    #multiple lines
  # LOG TO CONSOLE    ${i}
   #END

#ForLoop3WithList
 #   @{items}    create list    1    2    3    4    5    #list variable
  #  FOR    ${i}    IN    @{items}
   # LOG TO CONSOLE    ${i}
    #END

#ForLoop4
 #   FOR  ${i}  IN    john    david    smith    scott
  #  LOG TO CONSOLE    ${i}
   # END

#ForLoop5
 #   @{nameList}    CREATE LIST    john    david    smith    scott
  #  FOR  ${i}  IN    @{nameList}
   # LOG TO CONSOLE    ${i}
    #END

ForLoop6WithExit
    @{items}    create list    1    2    3    4    5
    FOR    ${i}    IN    @{items}
    LOG TO CONSOLE    ${i}
    exit for loop if    ${i}==3
    END