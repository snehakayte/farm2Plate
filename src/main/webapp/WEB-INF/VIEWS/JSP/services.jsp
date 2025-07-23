<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setAttribute("page", "services");
%>
<%@ include file="header.jsp" %>
<c:set var="context" value="${pageContext.request.contextPath}" />

<!-- Services Hero -->
<section class="bg-gray-900 text-white py-24 px-6 text-center">
  <div class="max-w-5xl mx-auto">
    <h1 class="text-5xl font-extrabold tracking-tight mb-6 drop-shadow-lg leading-tight font-raleway">
      Wholesome Dairy, Eggs & More — From <span class="text-yellow-400">Farm2Thali</span>
    </h1>
    <p class="text-xl font-light leading-relaxed text-gray-300 drop-shadow-md">
      Experience the purity of <span class="text-yellow-400 font-medium">A2 Gir Cow Milk, Paneer, Curd</span> and <span class="text-yellow-400 font-medium">Desi Ghee</span>, along with <span class="text-yellow-400 font-medium">herbal-fed eggs</span> and <span class="text-yellow-400 font-medium">farm-grown vegetables</span> — delivered fresh from our farm to your thali.
    </p>
  </div>
</section>


<!-- What We Offer -->
<section class="bg-gray-800 py-24 px-6 text-white">
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
    <h2 class="text-4xl font-bold text-yellow-400 mb-16 font-poppins" data-aos="fade-up">Our Fresh Offerings</h2>
    
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-12">

 <!-- Dairy Product Carousel -->
      <div class="group bg-gray-900 p-6 rounded-3xl shadow-2xl border border-gray-700 overflow-hidden hover:shadow-yellow-400 transition-shadow duration-300" data-aos="zoom-in">
        <div class="relative overflow-hidden rounded-2xl h-64">
          <img id="dairyCarousel" src="${context}/assets/LOGO/dairy/GirCow.jpeg" alt="Dairy Products"
               class="w-full h-full object-cover rounded-2xl shadow-md transition-all duration-500 ease-in-out" />
          <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-all duration-300 rounded-2xl"></div>
        </div>
        <h3 class="text-2xl font-bold text-yellow-400 mt-6 mb-2">A2 Milk & Dairy</h3>
        <p class="text-gray-300 text-base leading-relaxed font-light">
          Fresh A2 milk, soft paneer, creamy curd, and aromatic desi ghee — all from our indigenous Gir cows.
        </p>
      </div>
      
      <!-- White Eggs Carousel -->
      <div class="group bg-gray-900 p-6 rounded-3xl shadow-2xl border border-gray-700 overflow-hidden hover:shadow-yellow-400 transition-shadow duration-300" data-aos="zoom-in">
        <div class="relative overflow-hidden rounded-2xl h-64">
          <img id="whiteEggCarousel" src="${context}/assets/LOGO/poultry/white1.jpg" alt="White Eggs"
               class="w-full h-full object-cover rounded-2xl shadow-md transition-all duration-500 ease-in-out" />
          <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-all duration-300 rounded-2xl"></div>
        </div>
        <h3 class="text-2xl font-bold text-yellow-400 mt-6 mb-2">Farm Fresh White Eggs</h3>
        <p class="text-gray-300 text-base leading-relaxed font-light">
          Clean, protein-rich eggs laid by healthy poultry. Ideal for your daily breakfast and fitness needs.
        </p>
      </div>

      <!-- Gavran Eggs Carousel -->
      <div class="group bg-gray-900 p-6 rounded-3xl shadow-2xl border border-gray-700 overflow-hidden hover:shadow-yellow-400 transition-shadow duration-300" data-aos="zoom-in">
        <div class="relative overflow-hidden rounded-2xl h-64">
          <img id="brownEggCarousel" src="${context}/assets/LOGO/poultry/brown1.jpg" alt="Brown Eggs"
               class="w-full h-full object-cover rounded-2xl shadow-md transition-all duration-500 ease-in-out" />
          <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-all duration-300 rounded-2xl"></div>
        </div>
        <h3 class="text-2xl font-bold text-yellow-400 mt-6 mb-2">Desi Gavran Eggs</h3>
        <p class="text-gray-300 text-base leading-relaxed font-light">
          Native desi hens raised in open environments, offering better taste and high immunity-boosting nutrition.
        </p>
      </div>

     

    </div>
  </div>
</section>


<!-- Why Choose Farm2Thali -->
<section class="bg-gray-900 text-white py-20 px-6 border-t border-gray-700">
  <div class="max-w-6xl mx-auto text-center">
    <h2 class="text-4xl font-extrabold text-yellow-400 mb-6">Why Farm2Thali?</h2>
    <p class="text-lg text-gray-300 mb-10 max-w-3xl mx-auto">
      We're more than just a supplier. We're farmers, food lovers, and caretakers of your family's health. Here's what makes us different:
    </p>
    <div class="grid grid-cols-1 md:grid-cols-2 gap-6 text-left text-gray-300 text-base leading-relaxed">
      <ul class="list-disc list-inside space-y-3">
        <li>Daily delivery of farm-fresh eggs and produce</li>
        <li>Gavran and broiler poultry options, always antibiotic-free</li>
        <li>Transparent sourcing from our own farms</li>
      </ul>
      <ul class="list-disc list-inside space-y-3">
        <li>No middlemen, better pricing</li>
        <li>Commitment to natural growth, no shortcuts</li>
        <li>Custom packaging to ensure hygiene and freshness</li>
      </ul>
    </div>
  </div>
</section>

<!-- Tech + Tracking Features -->
<section class="bg-gray-800 text-white py-20 px-6 border-t border-gray-700">
  <div class="max-w-6xl mx-auto text-center">
    <h2 class="text-4xl font-extrabold text-yellow-400 mb-12 font-raleway">Farm2Thali Smart Logistics</h2>
    <div class="grid grid-cols-1 md:grid-cols-3 gap-10 text-left text-gray-300 text-base leading-relaxed">

      <!-- Feature 1 -->
      <div class="flex items-start gap-4">
        <div class="bg-green-100 text-green-700 p-3 rounded-full">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3" />
          </svg>
        </div>
        <div>
          <h3 class="text-xl font-semibold text-yellow-400 mb-2">Live Tracking</h3>
          <p>Track your order in real-time from farm to doorstep via our GPS-enabled delivery partners.</p>
        </div>
      </div>

      <!-- Feature 2 -->
      <div class="flex items-start gap-4">
        <div class="bg-yellow-100 text-yellow-700 p-3 rounded-full">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
          </svg>
        </div>
        <div>
          <h3 class="text-xl font-semibold text-yellow-400 mb-2">Freshness Guaranteed</h3>
          <p>We pack only what's harvested the same morning — ensuring zero refrigeration and zero preservatives.</p>
        </div>
      </div>

      <!-- Feature 3 -->
      <div class="flex items-start gap-4">
        <div class="bg-red-100 text-red-600 p-3 rounded-full">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 10h11M9 21V3" />
          </svg>
        </div>
        <div>
          <h3 class="text-xl font-semibold text-yellow-400 mb-2">Eco-Friendly Packaging</h3>
          <p>All products are delivered in compostable trays or cloth bags to reduce plastic use.</p>
        </div>
      </div>

    </div>
  </div>
</section>

<!-- Final CTA -->
<section class="bg-gray-900 text-white py-20 px-6 text-center">
  <div class="max-w-4xl mx-auto">
    <h2 class="text-4xl font-extrabold mb-4 text-yellow-400">Start Your Healthy Farm Journey Today</h2>
    <p class="text-lg mb-8 text-gray-300">Experience freshness, transparency, and care — only at Farm2Thali.</p>
    <a href="${context}/order" class="inline-block bg-yellow-400 hover:bg-yellow-500 text-gray-900 font-semibold px-8 py-3 rounded-xl shadow-md transition">
      Book a Free Sample Delivery
    </a>
  </div>
</section>

<!-- Carousel Script -->
<script>
  const whiteImages = [
    "${context}/assets/LOGO/poultry/white1.jpg",
    "${context}/assets/LOGO/poultry/white2.jpg",
    "${context}/assets/LOGO/poultry/white3.jpg",
    "${context}/assets/LOGO/poultry/white4.jpg",
    "${context}/assets/LOGO/poultry/white5.jpg"
  ];

  const brownImages = [
    "${context}/assets/LOGO/poultry/brown2.jpg",
    "${context}/assets/LOGO/poultry/brown1.jpg",
    "${context}/assets/LOGO/poultry/brown3.jpg",
    "${context}/assets/LOGO/poultry/brown4.jpg",
    "${context}/assets/LOGO/poultry/brown5.jpg"
  ];

  const dairyImages = [
    "${context}/assets/LOGO/dairy/Curd.jpg",
    "${context}/assets/LOGO/dairy/Ghee.jpg",
    "${context}/assets/LOGO/dairy/GirCow.jpeg",
    "${context}/assets/LOGO/dairy/Paneer.jpg",
    "${context}/assets/LOGO/dairy/GirCow.jpeg"
  ];

  let whiteIndex = 0;
  let brownIndex = 0;
  let dairyIndex = 0;

  setInterval(() => {
    whiteIndex = (whiteIndex + 1) % whiteImages.length;
    brownIndex = (brownIndex + 1) % brownImages.length;
    dairyIndex = (dairyIndex + 1) % dairyImages.length;

    document.getElementById('whiteEggCarousel').src = whiteImages[whiteIndex];
    document.getElementById('brownEggCarousel').src = brownImages[brownIndex];
    document.getElementById('dairyCarousel').src = dairyImages[dairyIndex];
  }, 3000); // Change image every 3 seconds
</script>


<%@ include file="footer.jsp" %>
