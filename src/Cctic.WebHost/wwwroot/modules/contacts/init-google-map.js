function initMap() {
    var uluru = { lat: 41.794225, lng: -6.769611 };
    var map = new google.maps.Map(document.getElementById('googleMap'), {
        zoom: 14,
        center: uluru
    });
    var marker = new google.maps.Marker({
        position: uluru,
        map: map
    });
}
