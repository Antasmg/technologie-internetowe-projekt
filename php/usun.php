<?php
// Połączenie z bazą danych
$polaczenie = new mysqli('localhost', 'root', '', 'car_database');

// Weryfikacja połączenia
if ($polaczenie->connect_error) {
    die("Błąd połączenia: " . $polaczenie->connect_error);
}

// Weryfikacja czy przekazano ID do usunięcia
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Zapytanie SQL do usunięcia rekordu
    $sql = "DELETE FROM cars WHERE id=$id";

    // Wykonanie zapytanie
    if ($polaczenie->query($sql) === TRUE) {
        $response = array('status' => 'success', 'message' => 'Rekord został usunięty.');
        echo json_encode($response);
    } else {
        $response = array('status' => 'error', 'message' => 'Błąd podczas usuwania rekordu: ' . $polaczenie->error);
        echo json_encode($response);
    }
} else {
    $response = array('status' => 'error', 'message' => 'Nieprawidłowe żądanie.');
    echo json_encode($response);
}

// Zamykanie połączenia z bazą danych
$polaczenie->close();
?>
