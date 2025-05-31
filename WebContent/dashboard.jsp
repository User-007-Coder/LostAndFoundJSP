<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.ItemDAO, models.Item, java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Campus Connect</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        .card {
            transition: transform 0.2s;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .status-badge {
            position: absolute;
            top: 10px;
            right: 10px;
            padding: 5px 15px;
            border-radius: 20px;
            font-weight: 500;
        }
        .status-lost {
            background-color: #fee2e2;
            color: #dc2626;
        }
        .status-found {
            background-color: #dcfce7;
            color: #16a34a;
        }
    </style>
</head>
<body class="bg-light">
    <%
        String userEmail = (String) session.getAttribute("userEmail");
        if (userEmail == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        List<Item> items = ItemDAO.getAllItems();
    %>

    <nav class="navbar navbar-expand-lg navbar-light bg-white border-bottom">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#">Campus Connect</a>
            <div class="d-flex align-items-center">
                <a href="postItem.jsp" class="btn btn-primary me-3">Report Item</a>
                <a href="LogoutServlet" class="btn btn-outline-danger">Logout</a>
            </div>
        </div>
    </nav>

    <div class="container py-5">
        <div class="row mb-4">
            <div class="col">
                <h2 class="fw-bold mb-0">Recent Reports</h2>
                <p class="text-muted">Browse through recently reported items</p>
            </div>
        </div>

        <div class="row g-4">
            <% for (Item item : items) { %>
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body">
                            <span class="status-badge <%= item.getType().equals("lost") ? "status-lost" : "status-found" %>">
                                <%= item.getType().substring(0, 1).toUpperCase() + item.getType().substring(1) %>
                            </span>
                            <h5 class="card-title mb-3"><%= item.getName() %></h5>
                            <p class="card-text text-muted"><%= item.getDescription() %></p>
                            <div class="d-flex justify-content-between align-items-center mt-3">
                                <small class="text-muted">
                                    <i class="bi bi-geo-alt"></i> <%= item.getLocation() %>
                                </small>
                                <small class="text-muted">
                                    <i class="bi bi-calendar"></i> <%= item.getDate() %>
                                </small>
                            </div>
                        </div>
                        <div class="card-footer bg-white border-top-0">
                            <a href="item.jsp?id=<%= item.getId() %>" class="btn btn-outline-primary w-100">View Details</a>
                        </div>
                    </div>
                </div>
            <% } %>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>