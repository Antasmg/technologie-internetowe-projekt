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
        <div class="search-bar">
            <select id="brandFilter">
                <option value="">Select Brand</option>
                <option value="Audi">Audi</option>
                <option value="BMW">BMW</option>
                <!-- Add more brands as needed -->
            </select>
            <select id="engineFilter">
                <option value="">Select Engine</option>
                <option value="Benzyna">Benzyna</option>
                <option value="Diesel">Diesel</option>
                <!-- Add more engine types as needed -->
            </select>
            <select id="mileageFilter">
                <option value="">Select Mileage</option>
                <option value="0-100000">0-100000 km</option>
                <option value="100000-200000">100000-200000 km</option>
                <option value="200000+">200000+ km</option>
            </select>
            <select id="priceFilter">
                <option value="">Select Price</option>
                <option value="0-10000">0-10000</option>
                <option value="10000-20000">10000-20000</option>
                <option value="20000+">20000+</option>
            </select>
            <select id="conditionFilter">
                <option value="">Select Condition</option>
                <option value="bardzo">bardzo dobry</option>
                <option value="dobry">dobry</option>
            </select>
            <button type="submit">Szukaj</button>
        </div>
        <div id="dane"></div>
        <h2>Dodaj nowy rekord:</h2>
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