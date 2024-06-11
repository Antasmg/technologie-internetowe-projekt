document.addEventListener("DOMContentLoaded", function () {
    // Pobieranie danych z bazy
    function wyswietlDane() {
        fetch('php/odczyt.php')
            .then(response => response.json())
            .then(data => {
                let daneElement = document.getElementById('dane')
                daneElement.innerHTML = ""
                if (data.length > 0) {
                    data.forEach(item => {
                        let div = document.createElement('div')
                        div.className = 'card';
                        div.innerHTML = `
                        <img src="${item.photo_path}" alt="${item.brand} ${item.model}">
                        <div class="card-content">
                            <h3>${item.brand} ${item.model}</h3>
                            <div class="details">
                                <p><i class="fas fa-gas-pump"></i>\t${item.fuel_type}</p>
                                <p><i class="fas fa-tachometer-alt"></i>\t${item.mileage} km</p>
                                <p><i class="fas fa-cogs"></i>\t${item.engine}</p>
                                <p><i class="fas fa-calendar-alt"></i>\t${item.year}</p>
                                <p><i class="fas fa-exclamation-triangle"></i>\t${item.damage_state}</p>
                            </div>
                        </div>
                        <button onclick="usun(${item.id})"><i class="fas fa-trash"></i></button> 
                        <button onclick="edytuj(${item.id})"><i class="fas fa-edit"></i></button>`
                        daneElement.appendChild(div)
                    })
                } else {
                    daneElement.innerHTML = "Brak danych do wyświetlenia."
                }
            })
            .catch(error => console.error('Błąd:', error))
    }

    // Dodawanie nowego rekordu
    document.getElementById('formularz').addEventListener('submit', function (event) {
        event.preventDefault()
        vin = document.getElementById('vin').value
        brand = document.getElementById('brand').value
        model = document.getElementById('model').value
        year = document.getElementById('year').value
        mileage = document.getElementById('mileage').value
        engine = document.getElementById('engine').value
        fuel_type = document.getElementById('fuel_type').value
        owner_count = document.getElementById('owner_count').value
        damage_state = document.getElementById('damage_state').value
        photo_path = document.getElementById('photo_path').value

        if (nazwa.trim() !== '' && opis.trim() !== '') {
            fetch('php/dodaj.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: `nazwa=${nazwa}&opis=${opis}`,
            })
                .then(response => response.json())
                .then(data => {
                    console.log(data.message)
                    wyswietlDane()
                    document.getElementById('nazwa').value = ''
                    document.getElementById('opis').value = ''
                })
                .catch(error => console.error('Błąd:', error))
        } else {
            alert('Nazwa i opis nie mogą być puste!')
        }
    })

    wyswietlDane()
})
// Funkcja usuwająca dane
function usun(id) {
    fetch(`php/usun.php?id=${id}`, {
        method: 'DELETE',
    })
        .then(response => response.json())
        .then(data => {
            console.log(data.message)
            location.reload() // Przeładuj stronę po usunięciu
        })
        .catch(error => console.error('Błąd:', error))
}


// Funkcja edytująca dane
function edytuj(id) {
    let nazwa = prompt("Wprowadź nową nazwę:")
    let opis = prompt("Wprowadź nowy opis:")

    if (nazwa !== null && opis !== null) {
        fetch('php/edytuj.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: `id=${id}&nazwa=${nazwa}&opis=${opis}`,
        })
            .then(response => response.json())
            .then(data => {
                console.log(data.message)
                location.reload()
            })
            .catch(error => console.error('Błąd:', error))
    }
}