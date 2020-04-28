# Installation Manual of how to run the application:
Full file can be found in the repository with pdf file named "Installation Manual"

# Step-1:
Download java on the user's personal computer or laptop. Minimum java version required to run this setup is JDK11. The link to download java is mentioned below. After the setup has been downloaded, run the setup to complete the installation of java in the users machine.

	https://www.oracle.com/in/java/technologies/javase-downloads.html

# Step-2:
After downloading and installing java in the system, add the path of the bin folder to the system environment variables. To make sure that the java has been installed correctly, open the command prompt and type java and javac and if everything is installed correctly, the user will not find any errors. If in case any errors are found, please follow the instructions on how to install java from the link below.
                    
	https://www.youtube.com/watch?v=IJ-PJbvJBGs		(Windows Users)
  	https://www.youtube.com/watch?v=y6szNJ4rMZ0		(Mac Users)
    https://www.youtube.com/watch?v=wxZ-R7XWWBs	        (Linux Users)

# Step-3:
Now, the IDE required for the application running are either of Eclipse or Spring Tool Suite. If the user system has eclipse already installed, then the user can directly download spring plugin from the eclipse marketplace in eclipse. The instructions to download spring plugins in the eclipse is mentioned in the link below.
					
	https://www.eclipse.org/community/eclipse_newsletter/2018/february/springboot.php
If the user system does not have eclipse installed, then it is recommended to download Spring Tool Suite (STS) as we used this tool for the implementation purpose. The link to download the spring tool suite is mentioned below. During the application development time, the latest version of STS available is STS-4 but we have used version 3.9.11 for the implementation. The link to download both the versions of the software are mentioned below.
					
	https://github.com/spring-projects/toolsuite-distribution/wiki/Spring-Tool-Suite-3
	https://spring.io/tools (for latest versions)

# Step-4:
The database to be implemented can be any of users choice but we used the database postgreSQL for the implementation purpose. To download the postgreSQL database for the user machine, follow the link mentioned below.
					
	https://www.postgresql.org/download/
The download and setup instructions for the database if not able to install is in the link.

	https://www.youtube.com/watch?v=e1MwsT5FJRQ			    (Windows Users)
	https://www.youtube.com/watch?v=5AOkxqFaYEE&t=402s		    (Mac Users)
	https://www.youtube.com/watch?v=-LwI4HMR_Eg			    (Linux Users)

# Step-5:
Now that all the tools required to run the application have been installed, download the source code from the github link provided below. After downloading the code, import the project in STS.
					
	https://github.com/SriHarshaBonala/chemsdam

After importing has been completed, the user might come across so many errors and will be indicated by the red cross mark on the project name folder and if entered inside the directory structure, the user can see that the errors are present in the pom.xml file. It is mostly because the dependencies have not been injected properly. So in this case, to remove the errors, follow the steps below.

    Run the steps named Maven Build, Maven Clean and Maven install in the succession steps so that all the dependencies will be installed and the errors will be removed after each dependency has been installed.
    Even if the above step has been performed and the errors have not been reduced, then the next step is to update the maven project as shown in the image below.
    Update project if errors are still available.

Now if in case, updating the project has not removed the errors, the last way is to download the dependencies manually from the link 

	https://mvnrepository.com/
Now search for the dependencies that are present in the pom.xml file which have errors, download the jar files and place the downloaded jar file in the very end of the path location C:\Users\{username}\.m2\repository\ of respective dependency folder. And then after manually adding all the jar files, repeat the update project step above to remove all errors possible.



# Step-6:
After importing the project and removing all errors (if available), then the next step is to configure the properties of the application. For that, traverse to the file called application.properties from the root directory as 
                
	chemsdam --> src/main/resources --> application.properties
Any change in configuration which may include application running port or change in spring user credentials is done here and the file has to be saved before running the application. Also if a different database other than postgreSQL is being used, the url has to be changed correspondingly.



# Step-7:
After importing the project and removing all errors (if available), then configure the database with the tables mentioned in the code or if new own tables with different schema is being used then, do change in the source code accordingly for proper running of the application.



# Step-8: 
Now that all the configurations have been completed, run the application using the spring boot app as shown below
      
	Right Click Project Name --> Run as --> Spring Boot App 
After successful running of the application, go to any of your favourite browsers and can use the application from the localhost with port 9090 (default) or if there is any change in server.port configuration in application.properties file then changed port number is to be used.



# NOTE:
Any requirements or questions on how to install and run the application, contact any of the developers via email as mentioned. Also, the continuation of this is the user manual where application is explained on how to use basis….
