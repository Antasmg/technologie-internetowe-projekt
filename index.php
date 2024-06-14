<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Search</title>
    <link rel="stylesheet" href="css/styles.css">
    <!-- Link to Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script defer src="js/script.js"></script>
</head>
<body>
    <!-- Main container for the content -->
    <div class="container">
        <h1>Car Search</h1>
        <!-- Div element where fetched data will be displayed -->
        <div id="data"></div>
        <h2>Add new car:</h2>
        <!-- Form for adding a new car record -->
        <form id="car_form">
            <!-- Input fields for car details -->
            <input type="text" id="vin" placeholder="Vin number">
            <input type="text" id="brand" placeholder="Brand">
            <input type="text" id="model" placeholder="Model">
            <input type="text" id="year" placeholder="Year">
            <input type="text" id="mileage" placeholder="Mileage">
            <input type="text" id="engine" placeholder="Engine">
            <!-- Select field for fuel type -->
            <select id="fuel_type">
                <option value="">Fuel type</option>
                <option value="Petrol">Petrol</option>
                <option value="Diesel">Diesel</option>
                <option value="Electric">Electric</option>
            </select>
            <input type="number" id="owner_count" placeholder="Owner count">
            <!-- Select field for damage state -->
            <select id="damage_state">
                <option value="">Damage state</option>
                <option value="Very good">Very good</option>
                <option value="Good">Good</option>
            </select>
            <input type="text" id="photo_path" placeholder="Link to photo">
            <input type="text" id="price" placeholder="Price">
            <input type="text" id="phone_number" placeholder="Phone number">
            <!-- Submit button for the form -->
            <button type="submit">Submit</button>
        </form>
    </div>

</body>
</html>
