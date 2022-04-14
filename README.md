# RobotFramework
RobotFramework 101

Robot Framework Test Cases

Requirements Plugins Frameworks

python

Chrome driver 

Seleninum

robotframework

robotframework-seleninum

openpyxl

robotframework-datadriver

numpy

pandas

robotframework-databaselibrary

PyMyql

Download mysql and mysql workbench (Create DB)


https://franz-see.github.io/Robotframework-Database-Library/api/0.5/DatabaseLibrary.html


robot TestCases\  (All test cases Execute)

robot TestCases\Reg*.robot  (start Reg* cases Execute)

robot TestCases\*.robot  (all cases Execute)


robotframework-pabot  (parallelly test)

pabot --processes 2 TestCases\*.robot (at the same time 2 tests)

pabot --processes 3 --outputdir Results TestCases\*.robot  (--outputdir Result for test result for another file)

pabot --processes 3 --outputdir Results TestCases\Ta*.robot  (There are 3 test cases start with Ta*)

