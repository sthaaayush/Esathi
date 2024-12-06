# **Esathi Project**

## **Introduction**
**Esathi** is a user-friendly web application designed to enable users to interact with features like chat functionality, e-books, videos, articles, and more. It includes an intuitive interface and provides a seamless experience for both users and administrators.

![esathi](https://github.com/sthaaayush/Esathi/assets/93993924/28d50714-cb9e-4d1c-bf59-ac67e4352cfc)
---

## **Project Setup**

### **Requirements**
- **XAMPP/WAMP/MAMP**: For running the Apache server and MySQL database.
- **PHP 8+**: Backend scripting.
- **MySQL**: Database for storing user and chat data.
- **Web Browser**: To access the application.
- **Code Editor**: (e.g., VS Code, Sublime, or any editor of choice).

---

### **Installation Steps**
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/username/esathi.git
   cd esathi
2. **Set Up XAMPP**:

- Place the project in the htdocs directory.
- Start the Apache and MySQL servers from the XAMPP control panel.
3.**Database Configuration**:

- Open phpMyAdmin
- Import the SQL script:
```bash
esathi_db.sql
```
- Ensure the database contains the required tables, such as messages.
4. **Configure Database Connection**:
- Update the connectToDb.php file with your database credentials:
```php
$servername = "localhost";
$username = "root";
$password = "";
$database = "esathi_db";
$conn = new mysqli($servername, $username, $password, $database);
```
5. **Run the Application**:

- Access the application by navigating to:
```bash
http://localhost/Esathi/UserPage/user_page.php
```
## **Features and Functionality**
1. **User Chat Functionality**
- Users can send messages via a simple chat interface.
- Messages are stored in the database for persistence.
2. **Sidebar Navigation**
- Access various resources like:
    - E-books
    - Videos
    - Articles
    - Other interactive content.
3. **Responsive Header**
- Links to:
    - Viewer Page: A separate page for guest users.
    - About and Contact sections for additional information.
4. **Dynamic Database Integration**
- Messages are inserted into the messages table.
- PHP scripts handle form submissions and database queries.
5. Modular CSS Styling
- Custom styles applied via cssForUser.css.
## **Future Enhancements**
- Add real-time chat functionality using WebSockets or AJAX.
- Expand content categories and improve content management.
- Implement user authentication for personalized experiences.
- Optimize database queries for performance.