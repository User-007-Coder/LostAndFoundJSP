<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.ItemDAO, models.Item" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Details - Campus Connect</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        .status-badge {
            padding: 8px 20px;
            border-radius: 20px;
            font-weight: 500;
            display: inline-block;
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
        int itemId = Integer.parseInt(request.getParameter("id"));
        Item item = ItemDAO.getItemById(itemId);
        if (item == null) {
            response.sendRedirect("dashboard.jsp");
            return;
        }
    %>

    <nav class="navbar navbar-expand-lg navbar-light bg-white border-bottom">
        <div class="container">
            <a class="navbar-brand fw-bold" href="dashboard.jsp">Campus Connect</a>
        </div>
    </nav>

    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <h2 class="fw-bold mb-0"><%= item.getName() %></h2>
                            <span class="status-badge <%= item.getType().equals("lost") ? "status-lost" : "status-found" %>">
                                <%= item.getType().substring(0, 1).toUpperCase() + item.getType().substring(1) %>
                            </span>
                        </div>

                        <div class="mb-4">
                            <h5 class="text-muted mb-3">Description</h5>
                            <p><%= item.getDescription() %></p>
                        </div>

                        <div class="row mb-4">
                            <div class="col-md-6">
                                <h5 class="text-muted mb-3">Location</h5>
                                <p><i class="bi bi-geo-alt"></i> <%= item.getLocation() %></p>
                            </div>
                            <div class="col-md-6">
                                <h5 class="text-muted mb-3">Date</h5>
                                <p><i class="bi bi-calendar"></i> <%= item.getDate() %></p>
                            </div>
                        </div>

                        <div class="border-top pt-4">
                            <h5 class="text-muted mb-3">Contact Information</h5>
                            <p><i class="bi bi-person"></i> <%= item.getUserName() %></p>
                            <p><i class="bi bi-envelope"></i> <%= item.getUserEmail() %></p>
                            <a href="mailto:<%= item.getUserEmail() %>" class="btn btn-primary">
                                Contact Reporter
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>