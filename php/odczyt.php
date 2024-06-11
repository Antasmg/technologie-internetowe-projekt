<?php
// Połączenie z bazą danych
$polaczenie = new mysqli('localhost', 'root', '', 'car_database');

// Weryfikacja połączenia
if ($polaczenie->connect_error) {
    die("Błąd połączenia: " . $polaczenie->connect_error);
}

// Zapytanie SQL
$sql = "SELECT * FROM cars";

// Wykonanie zapytania
$result = $polaczenie->query($sql);

// Konwertacja wyniku zapytania na tablicę
$rows = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $rows[] = $row;
    }
}

// Zwrot dane_2 w formacie JSON
echo json_encode($rows);

// Zamykanie połączenia z bazą danych
$polaczenie->close();
?>
