# Oracle_Teaching_Management_System
Author: Yihui Wang

## Target users
The target users of this system are student users, teacher users and administrative department users.

## The main function
### Student user functions: 
1. Query personal file information
2. Modify personal information
3. Check test results
4. Online course selection
5. Query course selection information
6. Modify the login password
7. Check personal GPA
8. Query teacher information
9. Choose a teacher as a professional tutor
### Teacher user functions: 
1. Enter student results
2. Check student results
3. Modify student grades
4. Query personal information of teachers
5. Modify teacher personal information
6. Modify course information
7. View student selection information
8. Query tutoring student information
9. Modify tutoring students
### Management department user functions:
1. Backup database
2. Restore the database
3. Down the library
4. Authorize other users
5. Modify the teaching plan
6. Query teacher information
7. Count student test scores
8. Modify account
9. View audit information

## Module function description
### Assign teaching tasks
1. The teaching management department enters the teaching tasks of teachers according to the teaching task allocation table,
2. It can also be modified according to the actual situation;
3. Teachers can check their own teaching tasks.
### Course registration
Optional courses in each semester come from teaching task information. According to the teaching task information, basic course information, and basic student information, students complete the course selection within the specified date and meet the required credits and other restrictions, and save the result of the course selection in the student performance data table; teachers can check from students Extract the list of elective students from the score data table and print it.
### Results processing
After the teacher has finished marking the papers, the teacher will enter the test scores of the students in the subject, and print and submit the transcript. The name of the course should automatically appear after selecting the instructor, academic year, semester, major, and class. After selecting the course name, the system should automatically display a list of all students who have chosen the course. If the score is missed or entered incorrectly, the teacher can modify and re-enter the score after obtaining the authorization of the management department, and save it permanently.
### Statistical analysis of results
Count the excellent and good rate of courses respectively by class and major.
### Student query results
Students check their course results through the campus network or the Internet.
### Choose a professional tutor
Students select a professional tutor by querying teacher information. The teacher can modify the tutored students.


## Table Space

### Table Space allocation

The teaching management database EnterDB.dlpu.dalian stores 7 tables with a total storage capacity of about 280MB.

1. In principle, data files, redo log files, control files, and related parameter files should be stored separately as much as possible, and cannot be stored on the same disk or partition.
2. Because of the frequent results query, the data and index should be stored in the data table space and index table space respectively.
3. The main data is stored in a table space.

| Table name | Belonging mode | Corresponding department | Corresponding table space | Initial size | Growth mode |
| --- | --- | --- | --- | --- | --- |
| DB\_COLLEGE<br/>DB\_MAJOR<br/>DB\_STUDENT<br/>DB\_TEACHER<br/>DB\_COURSE<br/>DB\_TEACH\_COURSE<br/>DB\_MAJOR\_TEACH | Staffuser<br/>Staffuser<br/>Staffuser<br/>Staffuser<br/>Staffuser<br/>Staffuser<br/>Staffuser | All colleges in the school<br/>Majors in the colleges<br/>Students in the school<br/>Teachers in the school<br/>All courses in the school<br/>All majors<br/>All professional tutors| tbs\_main<br/>tbs\_main<br/>tbs\_main<br/>tbs\_main<br/>tbs\_main<br/>tbs\_main<br/>tbs\_main | 500M<br/>500M<br/>500M<br/>500M<br/>500M<br/>500M<br/>500M | Auto<br/>Auto<br/>Auto<br/>Auto<br/>Auto<br/>Auto<br/>Auto |
| DB\_GRADE | Staffuser | School of Food Science and Engineering, School of Biological Engineering | tbs\_bio\_foo | 200M | Auto |
||| School of Information Science and Engineering School of Materials Science and Engineering | tbs\_infor\_mati | 200M | Auto |
|||School of Art and Design, School of Fashion, School of Business | tbs\_art\_fash\_busi | 200M | Auto |

### Tablespace and files

| Table space | Type | Corresponding file | File size (MB) | Growth rate (%) | Growth method |
| --- | --- | --- | --- | --- | --- |
| tbs\_main | permanent/online | tbs\_main1.ora<br/>tbs\_main2.ora | 250<br/>250 | 10<br/>10 | Auto<br/>Auto |
| tbs\_bio\_foo | permanent/online | tbs\_bio\_foo1.ora<br/>tbs\_bio\_foo2.ora | 100<br/>100 | 10<br/>10 | Auto<br/>Auto |
| tbs\_infor\_mati | permanent/online | tbs\_infor\_mati1.ora<br/>tbs\_infor\_mati2.ora | 100<br/>100 | 10<br/>10 | Auto<br/>Auto |
| tbs\_art\_fash\_busi | permanent/online | tbs\_art\_fash\_busi1.ora<br/>tbs\_art\_fash\_busi2.ora | 100<br/>100 | 10<br/>10 | Auto<br/>Auto|
| tbs\_teach\_std | permanent/online | tbs\_teach\_std1.ora<br/>tbs\_teach\_std2.ora | 100<br/>100 | 10<br/>10 | Auto<br/>Auto|
| tbs\_index | permanent/online | tbs\_index1.ora<br/>tbs\_index2.ora | 100<br/>100 | 10<br/>10 | Auto<br/>Auto|
| tbs\_temp | temporary/online | tbs\_temp1.ora<br/>tbs\_temp2.ora | 100<br/>100 | 10<br/>10 | Auto<br/>Auto |

## User

###  Correspondence between table space and user and table

The teaching management database EnterDB.dlpu.dalian has five database users

| Database user | Owned tables | Default table space for tables | Program objects |
| --- | --- | --- | --- |
| staffuser | DB\_COLLEGE<br/>DB\_MAJOR<br/>DB\_STUDENT<br/>DB\_TEACHER<br/>DB\_TEACH\_COURSE<br/>DB\_COURSE<br/>DB\_MAJOR\_TEACH | tbs\_main | Triggers, procedures, functions, packages and database links, etc. |
|| DB\_GRADE(Partition Table) | tbs\_bio\_foo ||
||| tbs\_infor\_mati ||
||| tbs\_art\_fash\_busi ||
| dbdatauser<br/>dbsysuser || tbs\_main ||
| teauser | DB\_FACULTY\_PER | tbs\_teach\_std | Part of the application object |
| stduser | DB\_STUDENT\_PER |

### Permissions between users and tables

| |teauser | stduser | staffuser | dbdatauser | dbsysuser |
| --- | --- | --- | --- | --- | --- |
| db\_college | S || SIUD | S | SX |
| db\_major | S || SIUD | S | SX |
| db\_Student || SU | SIUD | S | SX |
| db\_teacher | SU || SIUD | S | SX |
| db\_course | S | S | SIUD | S | SX |
| db\_grade | SU | SU || S | SX |
| db\_teach\_course | S | S | SIUD | S | SX |
| db\_faculty\_permi | SU || SIUD | S | SX |
| db\_student\_permi || SU | SIUD | S | SX |
| db\_major\_teacher | SU | SU | SIUD | S | SX |

### Initial assignment of user passwords, permissions and roles

| Username | Password | Role Granted | System Privilege Granted |
| --- | --- | --- | --- |
| staffuser | staffuser | CONNECT; RESOURCE | Create function;<br/>Create view;<br/>Create package;<br/>Drop table;<br/>Alter table |
| teauser | teauser | CONNECT; RESOURCE | Create view;<br/>Create synonym |
| stduser | stduser | CONNECT; RESOURCE | Create view;<br/>Create synonym |
| dbdatauser | dbdatauser | DATAPUMP\_EXP\_FULL\_DATABASE;<br/>DATAPUMP\_IMP\_FULL\_DATABASE;<br/>EXP\_FULL\_DATABASE;<br/>IMP\_FULL\_DATABASE;RESOURCE | EXPORT FULL DATABASE<br/>IMPORT FULL DATABASE |
| dbsysuser | dbsysuser | DBA ||

## View
There are two types of users: teachers and students
### teauser query and changeable information
The teacher user teauser queries and can change part of the information in the staffuser mode

| Define view name | Query column | Changeable column | Related table |
| --- | --- | --- | --- |
| vt\_teach\_colleg | work\_id<br/>t\_name<br/>t\_titles<br/>major\_name<br/>college\_name<br/>t\_address<br/>t\_telephone<br/>t\_position<br/>t\_email || db\_teacher<br/>db\_major<br/>db\_college |
| vt\_teach\_upd || t\_address<br/>t\_email<br/>t\_telephone<br/>t\_position | db\_teacher |
| vt\_ teach\_cs | course\_no<br/>work\_id<br/>course\_name<br/>launch\_year<br/>launch\_term<br/>executed\_plan || db\_teach\_course |
| vt\_teach\_grade | register\_no<br/>course\_name<br/>t\_name<br/>credit<br/>registered\_date<br/>registered\_year<br/>final\_Grade<br/>registered\_term<br/>makeup\_flag || db\_grade<br/>db\_teacher<br/>db\_Student |
| vt\_grade\_upd || s\_mail\_address<br/>s\_postcode<br/>s\_address<br/>s\_tele<br/>s\_email | db\_grade |

### stduser query and changeable information
The student user stduser can inquire about his own information, courses and course selection scores, and teaching tasks undertaken by teachers; it is allowed to modify part of his information.
| Define view name | Query column | Changeable column | Related table |
| --- | --- | --- | --- |
| vs\_grade\_teach | register\_no<br/>course\_name<br/>registered\_date<br/>registered\_year<br/>credit<br/>registered\_term<br/>t\_name<br/>final\_grade<br/>makeup\_flag || db\_gradedb\_teacher |
| vs\_grade\_upd || course\_name<br/>registered\_date<br/>work\_id<br/>registered\_term<br/>registered\_year | db\_grade |
| vs\_student | register\_no<br/>s\_name<br/>s\_gender<br/>s\_class<br/>s\_tele<br/>s\_dateofbirth<br/>s\_address<br/>s\_postcode<br/>s\_email<br/>s\_mail\_address || db\_Student |
| vs\_student\_upd || s\_mail\_address<br/>s\_postcode<br/>s\_address<br/>s\_tele<br/>s\_email | db\_Student |

## Procedure
### Some procedures related to stduser
| Procedure name | Function | Related tables and columns | Owned user |
| --- | --- | --- | --- |
| p\_query\_std\_in | Query student personal information | Related table: db\_student <br/>Query: register\_no <br/>Output: s\_address,s\_postcode,s\_mail\_address,s\_tele,s\_email | staffuser |
| p\_upd\_std\_inf | Modify student personal information | Related table: db\_student <br/>Query: register\_no <br/>Update: s\_address,s\_postcode,s\_mail\_address,s\_tele,s\_email | staffuser |
| p\_query\_std\_grade | Query test results | Related table: db\_grade <br/>Query: register\_no and course\_name | staffuser |
| p\_ins\_upd\_course | Online course selection | Related tables: db\_student, db\_teacher, db\_teach\_course, db\_grade | staffuser |
| p\_cancel\_reg\_course | Cancel selected courses | Related tables: db\_student, db\_major, db\_teach\_course, db\_grade | staffuser |
| p\_upd\_std\_pwd | Modify login password | Related table: db\_student\_per <br/>Query: register\_no, login\_pwd\_s <br/>Update: login\_pwd\_ | stduser |
| p\_std\_tot\_gpa | Query GPA | Related table: db\_grade <br/>Query: register\_no | staffuser |
| p\_ins\_maj\_tea | Select a professional tutor | Related tables: db\_student, db\_teacher, db\_major\_teacher | staffuser |

## Some procedures related to teauser
| Procedure name | Function | Related tables and columns | Owned user |
| --- | --- | --- | --- |
| p\_query\_tea\_grade | Query student grades | Related tables: db\_student, db\_major, db\_teacher, db\_grade<br/>Query: register\_no,work\_id,course\_name | staffuser |
| p\_insert\_tea\_grade | Enter student grades | Related table: db\_grade | staffuser |
| p\_upd\_tea\_grade | Modify student grades | Related table: db\_grade | staffuser |
| p\_upd\_tea\_pwd | Modify password | Related table: db\_faculty\_per<br/>Query: work\_id, login\_pwd\_f<br/>Update: login\_pwd\_f | teauser |
| p\_upd\_staf\_course | Modify teaching plan | Related tables: db\_teach\_course, db\_course<br/>Query: work\_id, course\_no<br/>Update: course\_no, course\_name | staffuser |
| p\_dele\_maj\_std | Delete tutoring student | Related table: db\_major\_teacher | staffuser |

## Function

### Required functions and functions

| Function name | Function | Related tables and columns | Owned user |
| --- | --- | --- | --- |
| fun\_query\_std\_gra | Query individual test scores | Related table: db\_grade<br/>Query: register\_no and course\_name | staffuser |
| fun\_std\_avg\_gra | Query student average grades by semester | Related table: db\_grade<br/>Query: register\_no and course\_name | staffuser |
| fun\_std\_total\_avg\_gra | Query the average grade of all courses of students | Related table: db\_grade<br/>Query: register\_no and course\_name | staffuser |
| fun\_std\_tot\_gpa | Query the GPA of a student | Related table: db\_grade<br/>Query: register\_no | staffuser |
| fun\_std\_term\_avg\_gra | Query student average grades by major and semester | Related table: db\_grade<br/>Query: register\_no, registered\_term | staffuser |

## Trigger

### Some triggers related to user staffuser

| Trigger name | Function | Owned user |
| --- | --- | --- |
| tri\_startup \_db | Record the time of starting the database, user, etc. | sys |
| tri\_shutdown\_db | Record the time of closing the database, user, etc. | sys |
| tri \_login\_user | Automatically record user information logging in to the system, including the logged-in IP, host name, login time, user name, etc. | sys |
| tri \_logout\_user | Record the user information of the logout system, including the logout IP, host name, logout time, user name, etc. | sys |
| tri\_restrict\_upd\_time | From 8 am to 5 pm on Saturday and Sunday, the database db\_grade table cannot be updated and modified | staffuser |
| tri\_dele\_faculty\_his | Automatically record the information of leaving teachers | staffuser |
| tri \_logon\_scheme | The system automatically records user information when logging in a user | staffuser |
| tri \_logoff\_scheme | When the user logs out, it automatically records the time of user logout, user name, etc. | staffuser |
| tri\_aud\_sche\_operation | Record user's DDL operation | staffuser |
