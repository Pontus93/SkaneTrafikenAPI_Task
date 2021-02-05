<script>
// Variables for Latitude/Longitude coords.
var Latitude = document.getElementById("Latitude");
var Longitude = document.getElementById("Longitude");

// Collect your coordinates.
window.onload = function getLocation() {
	tasteCookie();
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);

  } else { 
    console.log("Geolocation is not supported by this browser.");
  }
}

// Shows your coordinates on index.
function showPosition(position) {
  Latitude.innerHTML = "Latitude: " + position.coords.latitude; 
  Longitude.innerHTML = "Longitude: " + position.coords.longitude;
  let xcoords = position.coords.latitude;
  let ycoords = position.coords.longitude; 
  
	  document.getElementById("lat").value = xcoords;
	  document.getElementById("long").value = ycoords; 
}

// Check if you have accepted cookies before.
function tasteCookie(){
	let onlyCookie = Cookies.get("trafficCookie");
	
	if(onlyCookie){
		console.log("Cookies have been accepted before");
	}
	else{
    document.getElementById("CookiePopUp").innerHTML = `<div class="card" style="width: 100%; margin:auto;">
    <div class="card-body">
    <h5 class="card-title">Cookies!</h5>
    <p class="card-text">Our use of cookies and other technologies, We, our Affiliates and Vendors use cookies and other technologies to process personal data (including device identifiers and IP addresses</p>
    <button class="btn btn-primary" onclick="acceptCookie()">Accept</button>
    </div>
    </div>`;
 }
}

// OnClick function "accepting the cookie".
function acceptCookie(){
	Cookies.set("trafficCookie", "true", { expires: 2});
	document.getElementById("CookiePopUp").innerHTML = "";
}
</script>


