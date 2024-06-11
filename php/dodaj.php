<?php
// Połączenie z bazą danych
$polaczenie = new mysqli('localhost', 'root', '', 'car_database');

// Weryfikacja połączenia
if ($polaczenie->connect_error) {
    die("Błąd połączenia: " . $polaczenie->connect_error);
}

// Weryfikacja czy przekazano nazwę i opis do dodania
if (isset($_POST['nazwa']) && isset($_POST['opis'])) {
    $nazwa = $_POST['nazwa'];
    $opis = $_POST['opis'];

    // Zapytanie SQL do dodania nowego rekordu
    $sql = "INSERT INTO cars (nazwa, opis) VALUES ('$nazwa', '$opis')";

    // Wykonanie zapytanie
    if ($polaczenie->query($sql) === TRUE) {
        $response = array('status' => 'success', 'message' => 'Nowy rekord został dodany.');
        echo json_encode($response);
    } else {
        $response = array('status' => 'error', 'message' => 'Błąd podczas dodawania nowego rekordu: ' . $polaczenie->error);
        echo json_encode($response);
    }
} else {
    $response = array('status' => 'error', 'message' => 'Nieprawidłowe żądanie.');
    echo json_encode($response);
}

// Zamkanie połączenia z bazą danych
$polaczenie->close();
?>
