<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Search</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script defer src="js/script.js"></script>
</head>
<body>
    <div class="container">
        <h1>Car Search</h1>
        <div id="dane"></div>
        <h2>Add new car:</h2>
        <form id="formularz">
            <input type="text" id="vin" placeholder="Numer vin">
            <input type="text" id="brand" placeholder="Marka">
            <input type="text" id="model" placeholder="Model">
            <input type="text" id="year" placeholder="Rocznik">
            <input type="text" id="mileage" placeholder="Przebieg">
            <input type="text" id="engine" placeholder="Silnik">
            <select id="fuel_type">
                <option value="">Typ silnika</option>
                <option value="Benzyna">benzyna</option>
                <option value="Diesel">diesel</option>
                <option value="Electric">electric</option>
            </select>
            <input type="number" id="owner_count" placeholder="Liczba właścicieli">
            <select id="damage_state">
                <option value="">Stan</option>
                <option value="Bardzo dobry">bardzo dobry</option>
                <option value="Dobry">dobry</option>
            </select>
            <input type="text" id="photo_path" placeholder="Link do zdjęcia">
            <input type="text" id="price" placeholder="price">
            <input type="text" id="phone_number" placeholder="Numer telefonu">
            <button type="submit">Dodaj</button>
        </form>
    </div>

</body>
</html>