<?php
// Connection to the database
$connection = new mysqli('localhost', 'root', '', 'car_database');

// Connection verification
if ($connection->connect_error) {
    die("Connection error: " . $connection->connect_error);
}

// Verification if an ID to delete was passed
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // SQL query to delete a record
    $sql = "DELETE FROM cars WHERE id=$id";

    // Executing the query
    if ($connection->query($sql) === TRUE) {
        $response = array('status' => 'success', 'message' => 'Record has been deleted.');
        echo json_encode($response);
    } else {
        $response = array('status' => 'error', 'message' => 'Error deleting record: ' . $connection->error);
        echo json_encode($response);
    }
} else {
    $response = array('status' => 'error', 'message' => 'Invalid request.');
    echo json_encode($response);
}

// Closing the connection to the database
$connection->close();
?>
