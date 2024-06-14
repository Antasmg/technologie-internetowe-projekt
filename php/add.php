<?php
// Connection to the database
$connection = new mysqli('localhost', 'root', '', 'car_database');

// Verify the connection
if ($connection->connect_error) {
    die("Connection error: " . $connection->connect_error);
}

// Verify the data
if (isset($_POST['vin']) && isset($_POST['brand']) && isset($_POST['model']) && 
    isset($_POST['year']) && isset($_POST['mileage']) && isset($_POST['engine']) && 
    isset($_POST['fuel_type']) && isset($_POST['owner_count']) && isset($_POST['damage_state']) && 
    isset($_POST['photo_path']) && isset($_POST['price']) && isset($_POST['phone_number'])) {
    $vin = $_POST['vin'];
    $brand = $_POST['brand'];
    $model = $_POST['model'];
    $year = $_POST['year'];
    $mileage = $_POST['mileage'];
    $engine = $_POST['engine'];
    $fuel_type = $_POST['fuel_type'];
    $owner_count = $_POST['owner_count'];
    $damage_state = $_POST['damage_state'];
    $photo_path = $_POST['photo_path'];
    $price = $_POST['price'];
    $phone_number = $_POST['phone_number'];

    // SQL insert query
    $sql = "INSERT INTO cars (vin, brand, model, year, mileage, engine, fuel_type, owner_count, damage_state, photo_path, price, phone_number) 
            VALUES ('$vin', '$brand', '$model', '$year', '$mileage', '$engine', '$fuel_type', '$owner_count', '$damage_state', '$photo_path', '$price', '$phone_number')";

    // Execute the query
    if ($connection->query($sql) === TRUE) {
        $response = array('status' => 'success', 'message' => 'New record has been added.');
        echo json_encode($response);
    } else {
        $response = array('status' => 'error', 'message' => 'Error adding new record: ' . $connection->error);
        echo json_encode($response);
    }
} else {
    $response = array('status' => 'error', 'message' => 'Invalid request.');
    echo json_encode($response);
}

// Close the connection to the database
$connection->close();
?>
