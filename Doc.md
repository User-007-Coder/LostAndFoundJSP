# 🔧 **Project Overview**

**Goal:** Build a web portal where students/staff can report lost/found items on campus.

**Main Features:**

* Add Lost/Found item
* View all items
* Search items
* Admin can delete/manage posts

---

## 🗂️ **Folder Structure (Basic & Easy)**

``` md
LostAndFoundPortal/
│
├── WebContent/
│   ├── index.jsp
│   ├── lost.jsp
│   ├── found.jsp
│   ├── postItem.jsp
│   ├── admin.jsp
│   ├── css/
│   ├── js/
│   └── images/
│
├── src/
│   └── com.lostfound/
│       ├── DBConnect.java
│       ├── PostItemServlet.java
│       ├── ViewItemsServlet.java
│       ├── AdminServlet.java
│
├── lib/
│   └── mysql-connector.jar
│
├── database.sql
└── web.xml
```

---

## ✅ **Phase 1: Setup**

### 🔹 1. Install Required Tools

* **Java JDK**
* **Apache Tomcat Server**
* **Eclipse IDE for Java EE**
* **MySQL** (or use XAMPP for easier setup)

### 🔹 2. Create Dynamic Web Project in Eclipse

File > New > Dynamic Web Project
Project Name: `LostAndFoundPortal`

---

## ✅ **Phase 2: Design Frontend (JSP + HTML + Bootstrap)**

### Pages You Need

| Page           | Description                    |
| -------------- | ------------------------------ |
| `index.jsp`    | Homepage (Intro + Navigation)  |
| `postItem.jsp` | Form to submit lost/found item |
| `lost.jsp`     | View all lost item listings    |
| `found.jsp`    | View all found item listings   |
| `admin.jsp`    | Admin dashboard (simple table) |

Use Bootstrap for clean responsive design. Copy-paste templates from [https://getbootstrap.com](https://getbootstrap.com)

---

## ✅ **Phase 3: Create MySQL Database**

### 🗄️ Sample SQL (`database.sql`)

```sql
CREATE DATABASE lost_found;

USE lost_found;

CREATE TABLE items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  description TEXT,
  type ENUM('lost', 'found'),
  location VARCHAR(100),
  date DATE,
  image VARCHAR(255)
);
```

---

## ✅ **Phase 4: Backend with Servlets**

### 🔹 1. Connect to DB

**File: `DBConnect.java`**

```java
public class DBConnect {
    public static Connection getConn() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/lost_found", "root", "");
        } catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
```

### 🔹 2. Post Item Servlet

**`PostItemServlet.java`**

```java
@WebServlet("/postItem")
public class PostItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String name = req.getParameter("name");
        String desc = req.getParameter("description");
        String type = req.getParameter("type");
        String loc = req.getParameter("location");
        String date = req.getParameter("date");

        try (Connection con = DBConnect.getConn()) {
            PreparedStatement ps = con.prepareStatement("INSERT INTO items (name, description, type, location, date) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, name);
            ps.setString(2, desc);
            ps.setString(3, type);
            ps.setString(4, loc);
            ps.setString(5, date);
            ps.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        }

        res.sendRedirect("index.jsp");
    }
}
```

---

## ✅ **Phase 5: View Items**

**`ViewItemsServlet.java`**: Display all items in a table
Use `JSTL` or `scriptlets` to loop through records in `lost.jsp` and `found.jsp`

---

## ✅ **Phase 6: Admin Panel (optional but easy)**

Admin can:

* View all items
* Delete any suspicious/fake listing

**AdminServlet.java**: Handles simple delete using ID

---

## ✅ **Phase 7: Run and Test**

* Deploy to Tomcat from Eclipse
* Open in browser: `http://localhost:8080/LostAndFoundPortal/`
* Try posting and viewing items

---

## 📑 Final Deliverables Checklist

| Task                             | Done? |
| -------------------------------- | ----- |
| Frontend pages (JSP + Bootstrap) | ✅     |
| Database setup with 1 table      | ✅     |
| Servlets for post/view           | ✅     |
| Admin delete (optional)          | ✅     |
| Working project on Tomcat        | ✅     |
| Abstract + Report (Word/PDF)     | ✅     |
| Screenshots for presentation     | ✅     |
