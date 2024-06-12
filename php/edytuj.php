<?php
// Połączenie z bazą danych
$polaczenie = new mysqli('localhost', 'root', '', 'car_database');

// Weryfikacja połączenia
if ($polaczenie->connect_error) {
    die("Błąd połączenia: " . $polaczenie->connect_error);
}

// Weryfikacja czy przekazano ID i nowe dane do edycji
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

    // Zapytanie SQL do aktualizacji rekordu
    $sql = "UPDATE cars 
            SET vin='$vin', 
                brand='$brand', 
                model='$model', 
                year='$year', 
                mileage='$mileage', 
                engine='$engine', 
                fuel_type='$fuel_type', 
                owner_count='$owner_count', 
                damage_state='$damage_state', 
                photo_path='$photo_path', 
                price='$price', 
                phone_number='$phone_number' 
            WHERE id=$id";


    // Wykonanie zapytania
    if ($polaczenie->query($sql) === TRUE) {
        $response = array('status' => 'success', 'message' => 'Rekord został zaktualizowany.');
        echo json_encode($response);
    } else {
        $response = array('status' => 'error', 'message' => 'Błąd podczas aktualizacji rekordu: ' . $polaczenie->error);
        echo json_encode($response);
    }
} else {
    $response = array('status' => 'error', 'message' => 'Nieprawidłowe żądanie.');
    echo json_encode($response);
}

// Zamykanie połączenia z bazą danych
$polaczenie->close();
?>
