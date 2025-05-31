<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Report Lost Item</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #fff;
    }
    .form-control,
    .form-select {
      background-color: #f1f2f4;
      border: none;
      padding: 12px;
    }
    textarea.form-control {
      height: 150px;
    }
    .upload-box {
      border: 2px dashed #d1d5db;
      padding: 40px;
      text-align: center;
      border-radius: 8px;
      background-color: #f9fafb;
      color: #6b7280;
    }
    .upload-box:hover {
      background-color: #f3f4f6;
      cursor: pointer;
    }
    .upload-btn {
      background-color: #e5e7eb;
      border: none;
      padding: 10px 20px;
      border-radius: 6px;
      font-weight: 500;
    }
    .navbar-brand {
      font-weight: 600;
    }
    .nav-link {
      font-weight: 500;
      color: #000;
    }
    .submit-btn {
      background-color: #4882ff;
      color: white;
      font-weight: 500;
      padding: 10px 30px;
    }
    .submit-btn:hover{
        background-color: #b2caff;
    }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg border-bottom px-4 py-2">
  <a class="navbar-brand" href="#">Campus Connect</a>
  <div class="ms-auto d-flex align-items-center">
    <a class="nav-link me-3" href="#">Home</a>
    <a class="nav-link me-3" href="#">Lost</a>
    <a class="nav-link me-3" href="#">Found</a>
    <a class="nav-link me-4" href="#">My Items</a>
    <div class="me-3"><i class="bi bi-bell"></i></div>
    <img src="https://i.pravatar.cc/32" class="rounded-circle" alt="Profile" style="width: 32px; height: 32px;">
  </div>
</nav>

<!-- Form Content -->
<div class="container mt-5 mb-5" style="max-width: 700px;">
  <h3 class="fw-bold mb-4">Report Lost Item</h3>

  <form>
    <div class="mb-3">
      <label class="form-label">Item Name</label>
      <input type="text" class="form-control" placeholder="e.g., Backpack, Phone">
    </div>

    <div class="mb-3">
      <label class="form-label">Description</label>
      <textarea class="form-control" placeholder="Describe the item in detail"></textarea>
    </div>

    <div class="mb-3">
      <label class="form-label">Location</label>
      <select class="form-select">
        <option selected disabled>Select Location</option>
        <option>Library</option>
        <option>Hostel</option>
        <option>Cafeteria</option>
        <option>Auditorium</option>
      </select>
    </div>

    <div class="mb-3">
      <label class="form-label">Date Lost</label>
      <input type="date" class="form-control">
    </div>

    <div class="mb-3">
      <label class="form-label">Contact Information</label>
      <input type="text" class="form-control" placeholder="Email or Phone Number">
    </div>

    <div class="mb-4">
      <label class="form-label">Upload Photo</label>
      <div class="upload-box">
        <p class="fw-semibold">Drag and drop or browse</p>
        <p class="small mb-3">Upload a clear photo of the item to help identify it.</p>
        <button type="button" class="upload-btn">Upload Photo</button>
      </div>
    </div>

    <button type="submit" class="btn submit-btn">Submit</button>
  </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
