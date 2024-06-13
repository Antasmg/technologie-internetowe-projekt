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
                        <div class="buttons">
                            <h3>${item.price} PLN</h3>
                            <button class="phone-button" data-hover-text="${item.phone_number}">
                                <p><i class="fas fa-phone"></i></p>
                            </button>
                            <button onclick="usun(${item.id})"><i class="fas fa-trash"></i></button>
                        </div>`
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
        price = document.getElementById('price').value
        phone_number = document.getElementById('phone_number').value

        if (vin.trim() !== '' && brand.trim() !== '' && model.trim() !== '' &&
            year.trim() !== '' && mileage.trim() !== '' && engine.trim() !== '' &&
            owner_count.trim() !== '' && photo_path.trim() !== '' && price.trim() !== '' && phone_number.trim() !== '') {
            fetch('php/dodaj.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: `vin=${vin}&brand=${brand}&model=${model}&year=${year}
                       &mileage=${mileage}&engine=${engine}&fuel_type=${fuel_type}
                       &owner_count=${owner_count}&damage_state=${damage_state}
                       &photo_path=${photo_path}&price=${price}&phone_number=${phone_number}`,
            })
                .then(response => response.json())
                .then(data => {
                    console.log(data.message)
                    wyswietlDane()
                    document.getElementById('vin').value = ''
                    document.getElementById('brand').value = ''
                    document.getElementById('model').value = ''
                    document.getElementById('year').value = ''
                    document.getElementById('mileage').value = ''
                    document.getElementById('engine').value = ''
                    document.getElementById('fuel_type').value = ''
                    document.getElementById('owner_count').value = ''
                    document.getElementById('damage_state').value = ''
                    document.getElementById('photo_path').value = ''
                    document.getElementById('price').value = ''
                    document.getElementById('phone_number').value = ''

                })
                .catch(error => console.error('Błąd:', error))
        } else {
            alert('Żadne pole nie może być puste!')
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