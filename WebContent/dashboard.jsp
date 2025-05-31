<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Dashboard - Campus Connect</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

  <style>
    body {
      min-height: 100vh;
      display: flex;
      font-family: sans-serif;
    }
    .sidebar {
      width: 250px;
      min-height: 100vh;
      background-color: #f8f9fa;
      padding-top: 1.5rem;
      border-right: 1px solid #dee2e6;
    }
    .sidebar a {
      display: flex;
      align-items: center;
      padding: 0.75rem 1.25rem;
      color: #000;
      text-decoration: none;
      font-weight: 500;
    }
    .sidebar a:hover, .sidebar a.active {
      background-color: #e9ecef;
      border-radius: 8px;
    }
    .main-content {
      flex: 1;
      padding: 2rem;
    }
    .btn-secondary {
      background-color: #f1f2f4;
      color: #000;
      font-weight: 600;
    }
    .status-btn {
      background-color: #f1f2f4;
      border: none;
      padding: 5px 15px;
      border-radius: 20px;
      font-weight: 500;
    }
    .status-btn.found {
      background-color: #d1e7dd;
      color: #0f5132;
    }
    .view-link {
      color: #0d6efd;
      font-weight: 500;
      text-decoration: none;
    }
    .items-1{
        display: flex;
        justify-content: start;
        align-items: center;
        gap: 5px;
    }
  </style>
</head>
<body>

  <!-- Sidebar -->
  <div class="sidebar d-flex flex-column">
    <h5 class="text-center mb-4">Lost & Found</h5>
    <a class="items-1" href="#" class="active"><i class="bi bi-house"></i> Home  
    <a class="items-1" href="#"><i class="bi bi-list-ul"></i>My Listings</a>
    <a class="items-1" href="#"><i class="bi bi-plus-square"></i>New Listing</a>
    <a class="items-1" href="#"><i class="bi bi-search"></i> Search</a>
    <div class="mt-auto p-3">
      <a class="items-1" href="#"><i class="bi bi-gear"></i> Settings</a>
    </div>
  </div>

  <!-- Main Content -->
  <div class="main-content">
    <h2 class="fw-bold">Dashboard</h2>
    <h5 class="mt-4">Quick Actions</h5>
    <div class="mb-4">
      <a href="#" class="btn btn-primary me-2">New Listing</a>
      <a href="#" class="btn btn-secondary">Search</a>
    </div>

    <h5 class="mb-3">My Active Listings</h5>
    <div class="table-responsive">
      <table class="table table-bordered align-middle">
        <thead class="table-light">
          <tr>
            <th>Item</th>
            <th>Description</th>
            <th>Status</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Wallet</td>
            <td><a href="#" class="text-decoration-none text-muted">Black leather wallet with ID and cards</a></td>
            <td><button class="status-btn">Lost</button></td>
            <td><a href="#" class="view-link">View</a></td>
          </tr>
          <tr>
            <td>Keys</td>
            <td><a href="#" class="text-decoration-none text-muted">Set of keys with a blue keychain</a></td>
            <td><button class="status-btn found">Found</button></td>
            <td><a href="#" class="view-link">View</a></td>
          </tr>
          <tr>
            <td>Laptop</td>
            <td><a href="#" class="text-decoration-none text-muted">Silver laptop in a black case</a></td>
            <td><button class="status-btn">Lost</button></td>
            <td><a href="#" class="view-link">View</a></td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
