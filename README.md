# Web Chat Application

## 📝 Overview
This is a simple web-based chat application developed using Core Java technologies including JSP, Servlets, JDBC, and MySQL as the database. The application allows users to register, login, and exchange messages in real-time through a user-friendly interface.

## ✨ Features
- User registration and authentication
- Sending and receiving messages between users
- Persistent storage of users and messages in MySQL
- JSP-based frontend for interaction
- Servlet-based backend handling business logic and database connectivity

## 🛠 Technologies Used
- Core Java
- JSP (JavaServer Pages)
- Servlets
- JDBC (Java Database Connectivity)
- MySQL Database
- Apache Tomcat

## 📁 Project Structure

```plaintext 
webchat
│
├── src
│   └── main
│       ├── java
│       │   ├── mypackage
│       │   │   └── (Java files - servlets, utilities)
│       │   └── url_manager
│       │       └── (Java files - URL routing helpers)
│       └── webapp
│           ├── cssfiles
│           ├── js
│           ├── jsp
│           ├── META-INF
│           └── WEB-INF
│               ├── lib (mysql and jakarta jar files)
│               └── web.xml

``` 


## ⚙️ Configuration

### 1. Database Setup
Create a MySQL database and tables by running:

Creating a Database :
    
```sql
CREATE DATABASE chat;
```

Using the Database :

```sql
USE chat;
```

Creating a table for messages :

```sql
CREATE TABLE `messages` (
  `msg_id` int(20) NOT NULL AUTO_INCREMENT,
  `incoming_msg_id` varchar(255) NOT NULL,
  `outgoing_msg_id` varchar(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
 PRIMARY KEY (`msg_id`)) AUTO_INCREMENT = 100;
``` 

Creating a table for users :

```sql
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL,
 PRIMARY KEY (`user_id`)) AUTO_INCREMENT = 100;
```

### 2. 🔐 Update Database Credentials

Configure your database connection in your Java servlet or utility class using JDBC:
```java
String url = "jdbc:mysql://localhost:3306/chat";
String username = "your_mysql_username";
String password = "your_mysql_password";

Connection conn = DriverManager.getConnection(url, username, password);

```

### 3. 📚 Add Required Libraries

Place the following JAR files in the `WEB-INF/lib` directory:

- MySQL Connector/J  
- Jakarta Servlet API  

---

### 4. ⚙️ Configure `pom.xml` for Maven

Add below code under dependencies for MySQL mapping:

```xml
<dependency>
    <groupId>com.mysql</groupId>
    <artifactId>mysql-connector-j</artifactId>
    <version>8.1.0</version>
</dependency>

```
### ▶️ Running the Application

**1. Build the Project**  
Compile the Java source files using your IDE (like IntelliJ or Eclipse) or command line (`javac`) if not using a build tool.

**2. Deploy to Tomcat**  
   - Package your project into a WAR file or use exploded directory.
   - Place the WAR file or directory in the `webapps/` folder of Apache Tomcat.

**3. Start MySQL Database**  
   Ensure MySQL server is running and the database (`chat`) and tables are properly set up.

**4. Access the Application**  
   Open a web browser and navigate to:  http://localhost:8080/webChatApp-main

**5. Test the Chat Functionality**  
- Enter your name and message in the form.
- Submit and view live messages using JSP and Servlet backend handling.

---

## 📫 Contact

For questions or suggestions, feel free to reach out:

- 📧 Email: 2001vishaly@gmail.com
- 💼 LinkedIn: [LinkedIn](https://www.linkedin.com/in/vishal1809/)

----
