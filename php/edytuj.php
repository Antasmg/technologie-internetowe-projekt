<?php
// Połączenie z bazą danych
$polaczenie = new mysqli('localhost', 'root', '', 'car_database');

// Weryfikacja połączenia
if ($polaczenie->connect_error) {
    die("Błąd połączenia: " . $polaczenie->connect_error);
}

// Weryfikacja czy przekazano ID i nowe dane do edycji
if (isset($_POST['id']) && isset($_POST['nazwa']) && isset($_POST['opis'])) {
    $id = $_POST['id'];
    $nazwa = $_POST['nazwa'];
    $opis = $_POST['opis'];

    // Zapytanie SQL do aktualizacji rekordu
    $sql = "UPDATE cars SET nazwa='$nazwa', opis='$opis' WHERE id=$id";

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
