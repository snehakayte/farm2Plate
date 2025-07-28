<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
    request.setAttribute("page", "home");
%>
<%@ include file="header.jsp" %>
<c:set var="context" value="${pageContext.request.contextPath}" />


<!-- Promo Banner -->
<div id="promoBanner" class="w-full bg-yellow-400 text-gray-900 py-3 px-4 flex items-center font-raleway text-sm sm:text-base shadow-md z-50 relative overflow-hidden">

  <!-- Logo -->
  <div class="flex-shrink-0 flex items-center space-x-2">
    <img src="${context}/assets/LOGO/poultry/logo.png" alt="Farm2Thali Logo" class="h-8 w-8 rounded-full shadow" />
  </div>

  <!-- Marquee Text Container -->
  <div class="flex-grow mx-4 overflow-hidden">
    <div class="marquee-text font-semibold tracking-wide whitespace-nowrap">
      🎁 First 100 Customers Get Free Milk or Paneer Sample! Hurry Up Order Now!
    </div>
  </div>

  <!-- Close Button -->
  <button onclick="closePromoBanner()" class="text-xl font-bold hover:text-red-600 transition duration-300 absolute right-3 top-2 sm:top-3">
    &times;
  </button>
</div>

<!-- Marquee CSS -->
<style>
  .marquee-text {
    display: inline-block;
    animation: scroll-left 20s linear infinite;
  }

  @keyframes scroll-left {
    0% {
      transform: translateX(100%);
    }
    100% {
      transform: translateX(-100%);
    }
  }
</style>

<!-- Hero Section -->
<section class="bg-gray-900 py-24 text-white">
  <div class="max-w-7xl mx-auto px-6 text-center" data-aos="fade-up">
    <h1 class="text-5xl sm:text-6xl font-extrabold mb-6 tracking-tight leading-tight font-raleway">
      Welcome to <span class="bg-yellow-400 text-gray-900 px-4 py-1 rounded-2xl shadow-md">Farm2Thali</span>
    </h1>
    <p class="text-xl max-w-3xl mx-auto leading-relaxed font-light text-gray-300">
      Pure <span class="font-semibold text-yellow-400">Cow Milk</span>, <span class="font-semibold text-yellow-400">Paneer</span>, <span class="font-semibold text-yellow-400">Curd</span>, and <span class="font-semibold text-yellow-400">Desi Ghee</span> — straight from the farm. Plus, farm-fresh <span class="font-semibold text-yellow-400">White</span> & <span class="font-semibold text-yellow-400">Gavran Eggs</span> delivered hygienically to your doorstep.
    </p>

    <a href="${context}/order"
       class="mt-10 inline-block bg-yellow-400 text-gray-900 font-semibold px-10 py-4 rounded-full shadow-xl hover:bg-yellow-300 hover:scale-105 transition-transform duration-300 ease-in-out">
      Place Your Order Now
    </a>
  </div>
</section>

<!-- Dairy Vision Section -->
<section class="bg-gray-800 py-24 px-6 text-white">
  <div class="max-w-7xl mx-auto grid grid-cols-1 md:grid-cols-12 gap-12 items-center" data-aos="fade-up">

    <!-- Left Column: Image (smaller) -->
    <div class="md:col-span-4 flex justify-center">
     <img src="${context}/assets/LOGO/dairy/MilkMan.jpg"
          alt="Pure Farm Milk"
          class="rounded-3xl shadow-2xl w-full max-w-md md:max-w-lg object-cover border border-gray-700" />

    </div>

    <!-- Right Column: Text (larger) -->
    <div class="md:col-span-8 text-center md:text-left md:pr-8">
      <h2 class="text-4xl font-bold text-yellow-400 mb-6 font-raleway">
        Redefining Dairy with Trust and Technology
      </h2>
      <p class="text-lg text-gray-300 leading-relaxed font-light">
        At <span class="text-yellow-400 font-semibold">Farm2Thali</span>, we blend age-old farming traditions with modern innovation to deliver dairy products that are both pure and purposeful.
        Every drop of milk and every bite of paneer reflects our promise of quality, sustainability, and wellness.
        By putting nature first and sourcing ethically, we nourish families and protect the planet.
        Welcome to a healthier tomorrow — powered by tradition, perfected by technology.
      </p>
    </div>

  </div>
</section>




<!-- Featured Products Section -->
<section class="bg-gray-800 py-24 px-6 text-white">
  <div class="max-w-6xl mx-auto text-center">
    <h2 class="text-4xl font-bold text-yellow-400 mb-16 font-poppins" data-aos="fade-up">Our Fresh Offerings</h2>
    <div class="grid grid-cols-1 sm:grid-cols-2 gap-12">

<!-- Fresh Cow Milk -->
<div class="group bg-gray-900 p-6 rounded-3xl shadow-2xl border border-gray-700 overflow-hidden hover:shadow-yellow-400 transition-shadow duration-300" data-aos="zoom-in">
  <div class="relative overflow-hidden rounded-2xl">
    <img src="${context}/assets/LOGO/products/GirCow.jpeg" alt="Fresh Cow Milk"
         class="w-full h-64 object-cover rounded-2xl shadow-md transform group-hover:scale-110 transition-transform duration-500 ease-in-out" />
    <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-all duration-300 rounded-2xl"></div>
  </div>

  <h3 class="text-2xl font-bold text-yellow-400 mt-6 mb-2">Fresh Cow Milk</h3>

<!-- Quantity Selector -->
<div class="flex items-center justify-center space-x-3 mt-4">
  <button type="button"
    class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
    onclick="updateQuantityUniversal(this, -1)">−</button>

<input type="number"
  style="appearance: textfield; -moz-appearance: textfield; -webkit-appearance: none; margin: 0; text-align: center; vertical-align: middle; line-height: normal; height: 2rem;"
  class="w-12 font-semibold text-yellow-400 bg-gray-900 border border-gray-700 rounded-md quantity-input"
  value="1"
  min="1"
  oninput="updateQuantityUniversal(this, 0)" />


  <button type="button"
    class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
    onclick="updateQuantityUniversal(this, 1)">+</button>
</div>



  <p class="text-gray-300 text-base leading-relaxed font-light mt-4">
    Delivered straight from the farm, our pure and creamy cow milk is free from additives and preservatives.
  </p>

<!-- Price Block -->
<div class="mt-6 relative price-block inline-block group/price" onmouseover="showAddToCart(this)" onmouseout="hideAddToCart(this)">
  <div class="text-xl font-semibold text-white transition-opacity duration-300 price-text opacity-100">
    ₹ <span class="text-yellow-400 total-price" data-unit=" / liter" data-price="60">60</span><span class="unit"> / liter</span>
  </div>
  <!-- Add to Cart Button -->
  <button
    class="absolute top-0 left-1/2 -translate-x-1/2 opacity-0 invisible add-btn bg-yellow-400 text-gray-900 font-semibold px-6 py-2 rounded-full shadow-md transition-all duration-300 hover:bg-yellow-300 hover:scale-105 whitespace-nowrap flex items-center space-x-2"
    onclick="handleAddToCart(this)">
    <span class="text-xl">🛒</span>
    <span>Add to Cart</span>
  </button>

</div>



</div>


      <!-- Fresh Paneer -->
      <div class="group bg-gray-900 p-6 rounded-3xl shadow-2xl border border-gray-700 overflow-hidden hover:shadow-yellow-400 transition-shadow duration-300" data-aos="zoom-in">
        <div class="relative overflow-hidden rounded-2xl">
          <img src="${context}/assets/LOGO/products/Paneer.jpg" alt="Paneer"
               class="w-full h-64 object-cover rounded-2xl shadow-md transform group-hover:scale-110 transition-transform duration-500 ease-in-out" />
          <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-all duration-300 rounded-2xl"></div>
        </div>

        <h3 class="text-2xl font-bold text-yellow-400 mt-6 mb-2">Homemade Paneer</h3>

        <!-- Quantity Selector -->
        <div class="flex items-center justify-center space-x-3 mt-4">
          <button type="button"
            class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
            onclick="updateQuantityUniversal(this, -1)">−</button>

          <input type="text"
            class="w-12 text-center font-semibold text-yellow-400 bg-gray-900 border border-gray-700 rounded-md quantity-input"
            value="1" readonly />

          <button type="button"
            class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
            onclick="updateQuantityUniversal(this, 1)">+</button>
        </div>

        <p class="text-gray-300 text-base leading-relaxed font-light mt-4">
          Soft, rich, and freshly made from full cream milk. Perfect for your curries, grills, or healthy meals.
        </p>

        <!-- Price Block -->
        <div class="mt-6 relative price-block inline-block group/price" onmouseover="showAddToCart(this)" onmouseout="hideAddToCart(this)">
          <div class="text-xl font-semibold text-white transition-opacity duration-300 price-text opacity-100">
            ₹ <span class="text-yellow-400 total-price" data-unit=" / 250g" data-price="90">90</span><span class="unit"> / 250g</span>
          </div>

          <!-- Add to Cart Button -->
          <button
            class="absolute top-0 left-1/2 -translate-x-1/2 opacity-0 invisible add-btn bg-yellow-400 text-gray-900 font-semibold px-6 py-2 rounded-full shadow-md transition-all duration-300 hover:bg-yellow-300 hover:scale-105 whitespace-nowrap flex items-center space-x-2"
            onclick="handleAddToCart(this)">
            <span class="text-xl">🛒</span>
            <span>Add to Cart</span>
          </button>
        </div>
      </div>

      <!-- Fresh Curd -->
      <div class="group bg-gray-900 p-6 rounded-3xl shadow-2xl border border-gray-700 overflow-hidden hover:shadow-yellow-400 transition-shadow duration-300" data-aos="zoom-in">
        <div class="relative overflow-hidden rounded-2xl">
          <img src="${context}/assets/LOGO/products/Curd.jpg" alt="Curd"
               class="w-full h-64 object-cover rounded-2xl shadow-md transform group-hover:scale-110 transition-transform duration-500 ease-in-out" />
          <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-all duration-300 rounded-2xl"></div>
        </div>

        <h3 class="text-2xl font-bold text-yellow-400 mt-6 mb-2">Farm-Fresh Curd</h3>

        <!-- Quantity Selector -->
        <div class="flex items-center justify-center space-x-3 mt-4">
          <button type="button"
            class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
            onclick="updateQuantityUniversal(this, -1)">−</button>

          <input type="text"
            class="w-12 text-center font-semibold text-yellow-400 bg-gray-900 border border-gray-700 rounded-md quantity-input"
            value="1" readonly />

          <button type="button"
            class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
            onclick="updateQuantityUniversal(this, 1)">+</button>
        </div>

        <p class="text-gray-300 text-base leading-relaxed font-light mt-4">
          Thick, creamy curd made from natural milk — a perfect probiotic for your daily health and digestion.
        </p>

        <!-- Price Block -->
        <div class="mt-6 relative price-block inline-block group/price" onmouseover="showAddToCart(this)" onmouseout="hideAddToCart(this)">
          <div class="text-xl font-semibold text-white transition-opacity duration-300 price-text opacity-100">
            ₹ <span class="text-yellow-400 total-price" data-unit=" / 500ml" data-price="30">30</span><span class="unit"> / 500ml</span>
          </div>

          <!-- Add to Cart Button -->
          <button
            class="absolute top-0 left-1/2 -translate-x-1/2 opacity-0 invisible add-btn bg-yellow-400 text-gray-900 font-semibold px-6 py-2 rounded-full shadow-md transition-all duration-300 hover:bg-yellow-300 hover:scale-105 whitespace-nowrap flex items-center space-x-2"
            onclick="handleAddToCart(this)">
            <span class="text-xl">🛒</span>
            <span>Add to Cart</span>
          </button>
        </div>
      </div>

<!-- Desi Ghee -->
<div class="group bg-gray-900 p-6 rounded-3xl shadow-2xl border border-gray-700 overflow-hidden hover:shadow-yellow-400 transition-shadow duration-300" data-aos="zoom-in">
  <div class="relative overflow-hidden rounded-2xl">
    <img src="${context}/assets/LOGO/products/Ghee.jpg" alt="Desi Ghee"
         class="w-full h-64 object-cover rounded-2xl shadow-md transform group-hover:scale-110 transition-transform duration-500 ease-in-out" />
    <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-all duration-300 rounded-2xl"></div>
  </div>

  <h3 class="text-2xl font-bold text-yellow-400 mt-6 mb-2">Pure Desi Ghee</h3>

  <!-- Quantity Selector -->
  <div class="flex items-center justify-center space-x-3 mt-4">
    <button type="button"
      class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
      onclick="updateQuantityUniversal(this, -1)">−</button>

    <input type="text"
      class="w-12 text-center font-semibold text-yellow-400 bg-gray-900 border border-gray-700 rounded-md quantity-input"
      value="1" readonly />

    <button type="button"
      class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
      onclick="updateQuantityUniversal(this, 1)">+</button>
  </div>

  <p class="text-gray-300 text-base leading-relaxed font-light mt-4">
    A2 cow ghee made using traditional bilona method — rich in aroma, flavor, and nutrition.
  </p>

  <!-- Price Block -->
  <div class="mt-6 relative price-block inline-block group/price" onmouseover="showAddToCart(this)" onmouseout="hideAddToCart(this)">
    <div class="text-xl font-semibold text-white transition-opacity duration-300 price-text opacity-100">
      ₹ <span class="text-yellow-400 total-price" data-unit=" / 250ml" data-price="150">150</span><span class="unit"> / 250ml</span>
    </div>

    <!-- Add to Cart Button -->
    <button
      class="absolute top-0 left-1/2 -translate-x-1/2 opacity-0 invisible add-btn bg-yellow-400 text-gray-900 font-semibold px-6 py-2 rounded-full shadow-md transition-all duration-300 hover:bg-yellow-300 hover:scale-105 whitespace-nowrap flex items-center space-x-2"
      onclick="handleAddToCart(this)">
      <span class="text-xl">🛒</span>
      <span>Add to Cart</span>
    </button>
  </div>
</div>

      <!-- White Eggs -->
      <div class="group bg-gray-900 p-6 rounded-3xl shadow-2xl border border-gray-700 overflow-hidden hover:shadow-yellow-400 transition-shadow duration-300" data-aos="zoom-in">
        <div class="relative overflow-hidden rounded-2xl">
          <img src="${context}/assets/LOGO/products/whiteEggs.jpg" alt="White Eggs"
               class="w-full h-64 object-cover rounded-2xl shadow-md transform group-hover:scale-110 transition-transform duration-500 ease-in-out" />
          <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-all duration-300 rounded-2xl"></div>
        </div>

        <h3 class="text-2xl font-bold text-yellow-400 mt-6 mb-2">Farm Fresh White Eggs</h3>

        <!-- Quantity Selector -->
        <div class="flex items-center justify-center space-x-3 mt-4">
          <button type="button"
            class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
            onclick="updateQuantityUniversal(this, -1)">−</button>

          <input type="text"
            class="w-12 text-center font-semibold text-yellow-400 bg-gray-900 border border-gray-700 rounded-md quantity-input"
            value="1" readonly />

          <button type="button"
            class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
            onclick="updateQuantityUniversal(this, 1)">+</button>
        </div>

        <p class="text-gray-300 text-base leading-relaxed font-light mt-4">
          Clean, protein-rich eggs laid by healthy poultry. Ideal for your daily breakfast and fitness needs.
        </p>

        <!-- Price Block -->
        <div class="mt-6 relative price-block inline-block group/price" onmouseover="showAddToCart(this)" onmouseout="hideAddToCart(this)">
          <div class="text-xl font-semibold text-white transition-opacity duration-300 price-text opacity-100">
            ₹ <span class="text-yellow-400 total-price" data-unit=" / dozen" data-price="65">65</span><span class="unit"> / dozen</span>
          </div>

          <!-- Add to Cart Button -->
          <button
            class="absolute top-0 left-1/2 -translate-x-1/2 opacity-0 invisible add-btn bg-yellow-400 text-gray-900 font-semibold px-6 py-2 rounded-full shadow-md transition-all duration-300 hover:bg-yellow-300 hover:scale-105 whitespace-nowrap flex items-center space-x-2"
            onclick="handleAddToCart(this)">
            <span class="text-xl">🛒</span>
            <span>Add to Cart</span>
          </button>
        </div>
      </div>


<!-- Gavran Eggs -->
<div class="group bg-gray-900 p-6 rounded-3xl shadow-2xl border border-gray-700 overflow-hidden hover:shadow-yellow-400 transition-shadow duration-300" data-aos="zoom-in">
  <div class="relative overflow-hidden rounded-2xl">
    <img src="${context}/assets/LOGO/products/brownEggs.jpg" alt="Gavran Eggs"
         class="w-full h-64 object-cover rounded-2xl shadow-md transform group-hover:scale-110 transition-transform duration-500 ease-in-out" />
    <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-all duration-300 rounded-2xl"></div>
  </div>

  <h3 class="text-2xl font-bold text-yellow-400 mt-6 mb-2">Desi Gavran Eggs</h3>

  <!-- Quantity Selector -->
  <div class="flex items-center justify-center space-x-3 mt-4">
    <button type="button"
      class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
      onclick="updateQuantityUniversal(this, -1)">−</button>

    <input type="text"
      class="w-12 text-center font-semibold text-yellow-400 bg-gray-900 border border-gray-700 rounded-md quantity-input"
      value="1" readonly />

    <button type="button"
      class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full shadow hover:bg-yellow-300"
      onclick="updateQuantityUniversal(this, 1)">+</button>
  </div>

  <p class="text-gray-300 text-base leading-relaxed font-light mt-4">
    Native desi hens raised in open environments, offering better taste and high immunity-boosting nutrition.
  </p>

  <!-- Price Block -->
  <div class="mt-6 relative price-block inline-block group/price" onmouseover="showAddToCart(this)" onmouseout="hideAddToCart(this)">
    <div class="text-xl font-semibold text-white transition-opacity duration-300 price-text opacity-100">
      ₹ <span class="text-yellow-400 total-price" data-unit=" / dozen" data-price="90">90</span><span class="unit"> / dozen</span>
    </div>

    <!-- Add to Cart Button -->
    <button
      class="absolute top-0 left-1/2 -translate-x-1/2 opacity-0 invisible add-btn bg-yellow-400 text-gray-900 font-semibold px-6 py-2 rounded-full shadow-md transition-all duration-300 hover:bg-yellow-300 hover:scale-105 whitespace-nowrap flex items-center space-x-2"
       onclick="handleAddToCart(this)">
      <span class="text-xl">🛒</span>
      <span>Add to Cart</span>
    </button>
  </div>
</div>


    </div>
  </div>
</section>




<!-- Why Farm2Thali -->
<section class="bg-gray-900 text-white py-24 px-6">
  <div class="max-w-6xl mx-auto text-center mb-20">
    <h2 class="text-4xl font-extrabold text-yellow-400 font-raleway" data-aos="fade-up">Why Choose Farm2Thali?</h2>
  </div>

  <!-- 🥛 Milk Comparison First -->
  <div class="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-2 gap-12 items-center mb-24">
    <!-- Milk Comparison Image -->
    <div data-aos="fade-right">
      <div class="relative group rounded-3xl shadow-xl overflow-hidden">
        <img
          src="${context}/assets/LOGO/dairy/MilkComparing.png"
          alt="Milk Comparison"
          class="w-full h-[24rem] md:h-[28rem] object-contain rounded-3xl transition-transform duration-500 transform group-hover:scale-110"
        />
        <div class="absolute inset-0 bg-yellow-400 bg-opacity-0 group-hover:bg-opacity-10 transition duration-500 rounded-3xl"></div>
      </div>
    </div>

    <!-- Milk Highlights -->
    <div data-aos="fade-left">
      <h2 class="text-3xl font-bold text-yellow-400 mb-4">Pure A2 Goodness vs Market Milk</h2>
      <ul class="list-disc list-inside text-gray-300 text-lg space-y-3">
        <li><span class="text-yellow-400 font-medium">Sourced from Gir Cows</span> – Naturally A2, easier to digest</li>
        <li><span class="text-yellow-400 font-medium">Fresh within 12 hours</span> – No long storage or transit</li>
        <li><span class="text-yellow-400 font-medium">No water or chemical dilution</span></li>
        <li>Ethical, hormone-free farming with complete traceability</li>
        <li>Market milk often lacks transparency, freshness, and purity</li>
      </ul>
    </div>
  </div>

  <!-- 🥚 Egg Comparison Second -->
  <div class="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
    <!-- Egg Comparison Image -->
    <div data-aos="fade-right">
      <div class="relative group rounded-3xl shadow-xl overflow-hidden">
        <img
          src="${context}/assets/LOGO/poultry/Eggscomparing.png"
          alt="Yolk Comparison"
          class="w-full h-[24rem] md:h-[28rem] object-contain rounded-3xl transition-transform duration-500 transform group-hover:scale-110"
        />
        <div class="absolute inset-0 bg-yellow-400 bg-opacity-0 group-hover:bg-opacity-10 transition duration-500 rounded-3xl"></div>
      </div>
    </div>

    <!-- Egg Highlights -->
    <div data-aos="fade-left">
      <h2 class="text-3xl font-bold text-yellow-400 mb-4">Farm-Fresh Nutrition vs Regular Eggs</h2>
      <ul class="list-disc list-inside text-gray-300 text-lg space-y-3">
        <li><span class="text-yellow-400 font-medium">100% Herbal Feed</span> – No antibiotics or hormone injections</li>
        <li><span class="text-yellow-400 font-medium">Deep Yellow Yolks</span> – Packed with natural nutrition</li>
        <li>Strong shells and hygienic packaging</li>
        <li>Delivered fresh daily from our farm</li>
        <li>Unlike factory eggs with artificial enhancers and weak quality</li>
      </ul>
    </div>
  </div>
</section>


<!-- Call To Action -->
<section class="bg-gray-800 text-white py-24 px-6 text-center">
  <div class="max-w-4xl mx-auto" data-aos="fade-up">
<h2 class="text-4xl font-extrabold mb-6 tracking-tight drop-shadow-md font-raleway">
  Discover the <span class="text-yellow-400 underline decoration-yellow-400">Fresh Dairy & Egg Revolution</span>
</h2>
<p class="text-xl max-w-3xl mx-auto mb-10 font-light text-gray-300">
  Experience purity in every drop and bite — from creamy farm-fresh milk and paneer to ethically sourced nutritious eggs. Farm2Thali brings wholesome goodness straight to your doorstep.
</p>


    <a href="${context}/contact"
       class="inline-block bg-yellow-400 text-gray-900 font-bold px-10 py-4 rounded-full shadow-xl hover:bg-yellow-300 hover:scale-105 transition-transform duration-300">
      Contact Us Now
    </a>
  </div>
</section>

<script>

//Handle + and - button clicks
function updateQuantityUniversal(button, delta) {
  const input = button.parentElement.querySelector(".quantity-input");
  let value = parseInt(input.value);
  if (isNaN(value)) value = 1;

  value += delta;
  if (value < 1) value = 1;

  input.value = value;
}

// Handle direct manual input
function manualQuantityInput(input) {
  let val = parseInt(input.value);
  if (isNaN(val) || val < 1) {
    input.value = 1; // reset invalid input
  }
}


  // Close top promo banner
  function closePromoBanner() {
    const banner = document.getElementById('promoBanner');
    banner.classList.add('translate-y-[-100%]');
    setTimeout(() => banner.remove(), 700);
  }

  // Quantity selector + price update
  function updateQuantityUniversal(element, change) {
  let container, input;

  if (element.classList.contains('quantity-input')) {
    // Case: manual input
    input = element;
    container = input.closest('.group');
  } else {
    // Case: + or - button
    container = element.closest('.group');
    input = container.querySelector('.quantity-input');
    let currentQty = parseInt(input.value) || 1;
    currentQty += change;
    if (currentQty < 1) currentQty = 1;
    input.value = currentQty;
  }

  // Ensure quantity is valid
  let qty = parseInt(input.value) || 1;
  if (qty < 1) {
    qty = 1;
    input.value = qty;
  }

  // Update price
  const priceEl = container.querySelector('.total-price');
  const unitEl = container.querySelector('.unit');
  const unitPrice = parseFloat(priceEl.dataset.price);
  const unitLabel = priceEl.dataset.unit || '';

  priceEl.textContent = (unitPrice * qty).toFixed(2);
  unitEl.textContent = qty === 1 ? unitLabel : '';
}


  // Show "Add to Cart" button on hover
  function showAddToCart(container) {
    const priceText = container.querySelector('.price-text');
    const addBtn = container.querySelector('.add-btn');

    priceText.classList.add('opacity-0');
    addBtn.classList.remove('opacity-0', 'invisible');
    addBtn.classList.add('opacity-100', 'visible');
  }

  // Hide "Add to Cart" button on mouse leave
  function hideAddToCart(container) {
    const priceText = container.querySelector('.price-text');
    const addBtn = container.querySelector('.add-btn');

    priceText.classList.remove('opacity-0');
    priceText.classList.add('opacity-100');
    addBtn.classList.add('opacity-0', 'invisible');
    addBtn.classList.remove('opacity-100', 'visible');
  }

  // Utility: Get cart from sessionStorage
  function getCart() {
    return JSON.parse(sessionStorage.getItem('cart')) || [];
  }

  // Utility: Save cart to sessionStorage
  function saveCart(cart) {
    sessionStorage.setItem('cart', JSON.stringify(cart));
  }

  // Add or update product in cart
  function addToCart(product) {
    let cart = getCart();

    const index = cart.findIndex(item => item.id === product.id);
    if (index > -1) {
      cart[index].quantity = product.quantity; // update quantity
    } else {
      cart.push(product); // new item
    }

    saveCart(cart);

showCenterAlert(product.name + " added to cart", product.quantity + " " + product.unit);
  }

function showCenterAlert(title, message) {
  // Create overlay
  const overlay = document.createElement('div');
  overlay.className = 'fixed inset-0 bg-black bg-opacity-60 flex items-center justify-center z-50 alert-overlay';


  // Create modal box
  const modal = document.createElement('div');
  modal.className = 'bg-white text-gray-900 px-8 py-6 rounded-xl shadow-2xl max-w-md text-center animate-fade-in-out';

  // Set inner HTML
modal.innerHTML =
  '<div class="text-5xl mb-4">🛒</div>' +
  '<div class="text-2xl font-bold mb-2">' + title + '</div>' +
  '<div class="text-lg">' + message + '</div>';


  overlay.appendChild(modal);
  document.body.appendChild(overlay);

  // Auto remove after 2 seconds
  setTimeout(() => {
    overlay.classList.add('opacity-0', 'transition-opacity', 'duration-500');
    setTimeout(() => overlay.remove(), 500);
  }, 2000);
}





  // Handle Add to Cart button click
  function handleAddToCart(btn) {
    const card = btn.closest(".group");
    const name = card.querySelector("h3").innerText;
    const priceEl = card.querySelector(".total-price");
    const quantity = parseInt(card.querySelector(".quantity-input").value);
    const price = parseFloat(priceEl.dataset.price);
    const unit = priceEl.dataset.unit?.replace(" / ", "") || "";
    const image = card.querySelector("img").getAttribute("src");

    const product = {
      id: name.toLowerCase().replace(/\s+/g, '-'),
      name,
      price,
      quantity,
      unit,
      image
    };

    addToCart(product);
  }
</script>

<style>
@keyframes fadeInOut {
  0% { opacity: 0; transform: scale(0.9); }
  10% { opacity: 1; transform: scale(1); }
  90% { opacity: 1; }
  100% { opacity: 0; transform: scale(0.9); }
}

.animate-fade-in-out {
  animation: fadeInOut 2s ease-in-out forwards;
}
</style>



<%@ include file="footer.jsp" %>