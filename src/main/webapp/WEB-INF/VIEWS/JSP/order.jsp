<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    request.setAttribute("page", "order");
%>
<%@ include file="header.jsp" %>
<c:set var="context" value="${pageContext.request.contextPath}" />

<!-- Order Form Section -->
<section class="bg-gray-900 text-white py-24 px-6">
  <div class="max-w-3xl mx-auto bg-gray-800 p-10 rounded-3xl shadow-2xl border border-gray-700" data-aos="fade-up">

    <h2 class="text-4xl font-bold text-yellow-400 mb-6 text-center font-raleway">Place Your Order</h2>
    <p class="text-gray-300 text-center mb-10">Fresh farm eggs delivered to your doorstep. Kindly fill the form below to book your order.</p>

    <form action="${context}/submitOrder" method="post" class="space-y-6">

      <!-- Full Name -->
      <div>
        <label for="name" class="block text-gray-400 font-semibold mb-2">Full Name</label>
        <input type="text" id="name" name="name" required
               class="w-full p-4 bg-gray-900 border border-gray-700 rounded-xl text-white placeholder-gray-500 focus:ring-2 focus:ring-yellow-400 focus:outline-none">
      </div>

      <!-- Mobile Number -->
      <div>
        <label for="phone" class="block text-gray-400 font-semibold mb-2">Mobile Number</label>
        <input type="tel" id="phone" name="phone" required maxlength="10"
               class="w-full p-4 bg-gray-900 border border-gray-700 rounded-xl text-white placeholder-gray-500 focus:ring-2 focus:ring-yellow-400 focus:outline-none">
      </div>

      <!-- Address with location logic -->
      <div>
        <label for="address" class="block text-gray-400 font-semibold mb-2">Delivery Address</label>
        <div class="flex justify-between items-center mb-2">
          <small id="locationStatus" class="text-sm text-gray-400 hidden">Fetching location...</small>
          <button type="button" onclick="getLiveLocation()"
                  class="text-yellow-400 hover:underline text-sm">
            📍 Use My Current Location
          </button>
        </div>
        <textarea id="address" name="address" rows="3" required
                  class="w-full p-4 bg-gray-900 border border-gray-700 rounded-xl text-white placeholder-gray-500 focus:ring-2 focus:ring-yellow-400 focus:outline-none"
                  placeholder="Enter your address or use current location..."></textarea>
        <input type="hidden" id="lat" name="lat" />
        <input type="hidden" id="lon" name="lon" />
      </div>

      <!-- Egg Type -->
      <div>
        <label for="eggType" class="block text-gray-400 font-semibold mb-2">Select Egg Type</label>
        <select id="eggType" name="eggType" required
                class="w-full p-4 bg-gray-900 border border-gray-700 rounded-xl text-white focus:ring-2 focus:ring-yellow-400 focus:outline-none">
          <option value="">-- Select --</option>
          <option value="White Eggs">White Eggs</option>
          <option value="Gavran Brown Eggs">Gavran Brown Eggs</option>
        </select>
      </div>

      <!-- Quantity -->
      <div>
        <label for="quantity" class="block text-gray-400 font-semibold mb-2">Quantity (in dozens)</label>
        <input type="number" id="quantity" name="quantity" min="1" required
               class="w-full p-4 bg-gray-900 border border-gray-700 rounded-xl text-white placeholder-gray-500 focus:ring-2 focus:ring-yellow-400 focus:outline-none">
      </div>

      <!-- Payment Mode -->
      <div>
        <label for="payment" class="block text-gray-400 font-semibold mb-2">Preferred Payment Method</label>
        <select id="payment" name="payment" required
                class="w-full p-4 bg-gray-900 border border-gray-700 rounded-xl text-white focus:ring-2 focus:ring-yellow-400 focus:outline-none">
          <option value="">-- Select --</option>
          <option value="Cash on Delivery">Cash on Delivery</option>
          <option value="UPI Payment">UPI Payment</option>
        </select>
      </div>

      <!-- Notes -->
      <div>
        <label for="notes" class="block text-gray-400 font-semibold mb-2">Additional Notes (Optional)</label>
        <textarea id="notes" name="notes" rows="2"
                  class="w-full p-4 bg-gray-900 border border-gray-700 rounded-xl text-white focus:ring-2 focus:ring-yellow-400 focus:outline-none"
                  placeholder="Any delivery instructions or comments..."></textarea>
      </div>

      <!-- Submit Button -->
      <div class="text-center">
        <button type="submit"
                class="bg-yellow-400 text-gray-900 font-bold px-10 py-4 rounded-full shadow-xl hover:bg-yellow-300 hover:scale-105 transition-all duration-300">
          Submit Order
        </button>
      </div>

    </form>
  </div>
</section>
<script>
  const contextPath = '<%= request.getContextPath() %>'; // Safe JSP injection

  function getLiveLocation() {
    const status = document.getElementById("locationStatus");
    status.classList.remove("hidden");
    status.textContent = "Fetching location...";

    if (!navigator.geolocation) {
      alert("Geolocation is not supported by your browser.");
      status.classList.add("hidden");
      return;
    }

    navigator.geolocation.getCurrentPosition(
      function (position) {
        const lat = position.coords.latitude;
        const lon = position.coords.longitude;

        if (!lat || !lon || isNaN(lat) || isNaN(lon)) {
          alert("Invalid coordinates.");
          status.classList.add("hidden");
          return;
        }

        // Fill hidden fields
        document.getElementById("lat").value = lat;
        document.getElementById("lon").value = lon;

        // Build API URL using concatenation instead of template literals to avoid EL conflict
        const encodedLat = encodeURIComponent(lat);
        const encodedLon = encodeURIComponent(lon);
        const apiUrl = contextPath + "/api/location/reverse?lat=" + encodedLat + "&lon=" + encodedLon;

        fetch(apiUrl)
          .then(response => response.json())
          .then(data => {
            try {
              const address = data.display_name || "Address not found";
              document.getElementById("address").value = address;
              status.textContent = "Location fetched ✔️";
              setTimeout(() => status.classList.add("hidden"), 3000);
            } catch (e) {
              console.error("Parsing error:", e);
              alert("Could not parse address. Please enter manually.");
              status.classList.add("hidden");
            }
          })
          .catch(error => {
            console.error("Fetch error:", error);
            alert("Failed to fetch address. Please enter it manually.");
            status.classList.add("hidden");
          });
      },
      function (error) {
        console.error("Geolocation error:", error);
        alert("Location access denied or unavailable.");
        status.classList.add("hidden");
      }
    );
  }
</script>


<%@ include file="footer.jsp" %>
