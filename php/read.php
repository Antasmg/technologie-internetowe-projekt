<?php
// Connection to DB
$connection = new mysqli('localhost', 'root', '', 'car_database');

// Connection verification
if ($connection->connect_error) {
    die("Connection error: " . $connection->connect_error);
}

// SQL query
$sql = "SELECT * FROM cars";

// Query execution
$result = $connection->query($sql);

// Converting the query result to an array
$rows = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $rows[] = $row;
    }
}

// Returning data in JSON format
echo json_encode($rows);

// Closing the connection to the database
$connection->close();
?>
