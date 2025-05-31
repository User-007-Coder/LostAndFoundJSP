<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Lost and Found Items</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f9fafb;
      font-family: 'Segoe UI', sans-serif;
    }
    .table th, .table td {
      vertical-align: middle;
    }
    .badge-status {
      background-color: #f3f4f6;
      color: #111827;
      padding: 6px 16px;
      border-radius: 9999px;
      font-weight: 500;
    }
    .btn-details {
      color: #3b82f6;
      text-decoration: none;
      font-weight: 500;
    }
    .form-select, .form-control {
      max-width: 200px;
    }
  </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-white border-bottom px-4">
    <a class="navbar-brand fw-bold" href="#">Campus Connect</a>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav ms-3">
        <li class="nav-item"><a class="nav-link" href="#">Dashboard</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Report Lost Item</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Report Found Item</a></li>
        <li class="nav-item"><a class="nav-link" href="#">My Items</a></li>
      </ul>
    </div>
    <form class="d-flex ms-auto">
      <input class="form-control me-2" type="search" placeholder="Search" />
    </form>
    <img src="https://via.placeholder.com/32" class="rounded-circle ms-3" alt="User">
  </nav>

  <div class="container my-5">
    <h2 class="fw-bold mb-2">Lost and Found Items</h2>
    <p class="text-muted mb-4">Browse through all reported lost and found items on campus.</p>

    <div class="input-group mb-4">
      <input type="text" class="form-control" placeholder="Search for items" />
    </div>

    <div class="d-flex gap-2 mb-3">
      <select class="form-select">
        <option selected>Category</option>
        <option value="1">Electronics</option>
        <option value="2">Personal Belongings</option>
      </select>
      <select class="form-select">
        <option selected>Date</option>
      </select>
      <select class="form-select">
        <option selected>Location</option>
      </select>
    </div>

    <table class="table table-hover border rounded">
      <thead class="table-light">
        <tr>
          <th>Item</th>
          <th>Category</th>
          <th>Date Reported</th>
          <th>Location Found</th>
          <th>Status</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Wallet</td>
          <td><a href="#" class="text-primary">Personal Belongings</a></td>
          <td>2024-07-20</td>
          <td>Library</td>
          <td><span class="badge-status">Lost</span></td>
          <td><a href="#" class="btn-details">View Details</a></td>
        </tr>
        <tr>
          <td>Laptop</td>
          <td><a href="#" class="text-primary">Electronics</a></td>
          <td>2024-07-18</td>
          <td>Student Union</td>
          <td><span class="badge-status">Found</span></td>
          <td><a href="#" class="btn-details">View Details</a></td>
        </tr>
        <tr>
          <td>Textbook</td>
          <td><a href="#" class="text-primary">Academic</a></td>
          <td>2024-07-15</td>
          <td>Classroom 201</td>
          <td><span class="badge-status">Lost</span></td>
          <td><a href="#" class="btn-details">View Details</a></td>
        </tr>
        <tr>
          <td>Keys</td>
          <td><a href="#" class="text-primary">Personal Belongings</a></td>
          <td>2024-07-12</td>
          <td>Cafeteria</td>
          <td><span class="badge-status">Found</span></td>
          <td><a href="#" class="btn-details">View Details</a></td>
        </tr>
        <tr>
          <td>Phone</td>
          <td><a href="#" class="text-primary">Electronics</a></td>
          <td>2024-07-10</td>
          <td>Gym</td>
          <td><span class="badge-status">Lost</span></td>
          <td><a href="#" class="btn-details">View Details</a></td>
        </tr>
      </tbody>
    </table>
  </div>
</body>
</html>