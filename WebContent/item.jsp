<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Item Details | Campus Connect</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f8f9fa;
    }

    .item-image {
      max-width: 100%;
      border-radius: 10px;
    }

    .card-info {
      background-color: white;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.05);
    }

    .user-avatar {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      object-fit: cover;
      margin-right: 15px;
    }

    .btn-contact {
      white-space: nowrap;
    }
  </style>
</head>
<body>

<div class="container py-5">

  <h2 class="mb-4">Item Details</h2>

  <div class="row g-4">
    <!-- Image Column -->
    <div class="col-md-5">
      <img src="https://via.placeholder.com/400x400?text=Backpack" alt="Backpack" class="item-image">
    </div>

    <!-- Info Column -->
    <div class="col-md-7">
      <h5><strong>Found: Backpack</strong></h5>
      <p>Found near the library entrance. Black backpack with a water bottle pocket. Contains some textbooks and a notebook.</p>
      <button class="btn btn-primary btn-contact">Contact Poster</button>
    </div>
  </div>

  <!-- Poster Info -->
  <div class="card-info mt-5">
    <div class="d-flex align-items-center mb-3">
      <img src="https://via.placeholder.com/50" class="user-avatar" alt="User">
      <div>
        <h6 class="mb-0">Sophia Clark</h6>
        <small class="text-muted">Computer Science Major</small>
      </div>
    </div>
    <p><strong>Email:</strong> sophia.clark@email.edu</p>
    <p><strong>Availability:</strong> Available after 5 PM</p>
  </div>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
