// The DOMContentLoaded event is fired when the initial HTML document has been completely loaded and parsed, 
// without waiting for stylesheets, images, and subframes to finish loading.
document.addEventListener("DOMContentLoaded", function () {
    // Fetching data from the database
    function display_data() {
        // Fetch data from the server using the fetch API
        fetch('php/read.php')
            .then(response => response.json()) // Parse the response as JSON
            .then(data => {
                let dataElement = document.getElementById('data') // Get the element with ID 'data'
                dataElement.innerHTML = "" // Clear any existing content in the 'data' element
    
                if (data.length > 0) {
                    // Iterate over each item in the data array
                    data.forEach(item => {
                        // Create a new div element
                        let div = document.createElement('div')
                        div.className = 'card' // Set the class of the div to 'card'
    
                        // Set the inner HTML of the div to include the item details
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
                            <button onclick="delete_data(${item.id})"><i class="fas fa-trash"></i></button>
                        </div>`
    
                        // Append the new div to the 'data' element
                        dataElement.appendChild(div)
                    })
                } else {
                    // If there is no data, display a message indicating no data
                    dataElement.innerHTML = "No data to display."
                }
            })
            .catch(error => console.error('Error:', error)) // Log any errors to the console
    }

    // Adding a new record
    document.getElementById('car_form').addEventListener('submit', function (event) {
        event.preventDefault()
        // Get form values
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

        // Ensure no field is empty
        //The trim() method in JavaScript is used to remove whitespace from both ends of a string. 
        //This includes spaces, tabs, and other whitespace characters.
        if (vin.trim() !== '' && brand.trim() !== '' && model.trim() !== '' &&
            year.trim() !== '' && mileage.trim() !== '' && engine.trim() !== '' &&
            owner_count.trim() !== '' && photo_path.trim() !== '' && price.trim() !== '' && phone_number.trim() !== '') {
            fetch('php/add.php', {
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
                    display_data()
                    // Clear form fields after successful submission
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
                .catch(error => console.error('Error:', error))
        } else {
            alert('No field can be empty!')
        }
    })

    display_data()
})
// Function to delete data
function delete_data(id) {
    fetch(`php/delete.php?id=${id}`, {
        method: 'DELETE',
    })
        .then(response => response.json())
        .then(data => {
            console.log(data.message)
            location.reload() // Reload the page after deletion
        })
        .catch(error => console.error('Error:', error))
}
