<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
    request.setAttribute("page", "home");
%>
<%@ include file="header.jsp" %>
<c:set var="context" value="${pageContext.request.contextPath}" />

<!-- Hero Section -->
<section class="bg-gray-900 py-24 text-white">
  <div class="max-w-7xl mx-auto px-6 text-center" data-aos="fade-up">
    <h1 class="text-5xl sm:text-6xl font-extrabold mb-6 tracking-tight leading-tight font-raleway">
      Welcome to <span class="bg-yellow-400 text-gray-900 px-4 py-1 rounded-2xl shadow-md">Farm2Thali</span>
    </h1>
    <p class="text-xl max-w-3xl mx-auto leading-relaxed font-light text-gray-300">
      Premium <span class="font-semibold text-yellow-400">White Eggs</span> & <span class="font-semibold text-yellow-400">Gavran Eggs</span> delivered fresh — hygienic, ethical, and naturally raised.
    </p>
    <a href="${context}/order"
       class="mt-10 inline-block bg-yellow-400 text-gray-900 font-semibold px-10 py-4 rounded-full shadow-xl hover:bg-yellow-300 hover:scale-105 transition-transform duration-300 ease-in-out">
      Place Your Order Now
    </a>
  </div>
</section>

<!-- Featured Eggs Section -->
<section class="bg-gray-800 py-24 px-6 text-white">
  <div class="max-w-6xl mx-auto text-center">
    <h2 class="text-4xl font-bold text-yellow-400 mb-16 font-poppins" data-aos="fade-up">Our Fresh Offerings</h2>
    <div class="grid grid-cols-1 sm:grid-cols-2 gap-12">

      <!-- White Eggs -->
      <div class="group bg-gray-900 p-6 rounded-3xl shadow-2xl border border-gray-700 overflow-hidden hover:shadow-yellow-400 transition-shadow duration-300" data-aos="zoom-in">
        <div class="relative overflow-hidden rounded-2xl">
          <img src="${context}/assets/LOGO/poultry/whiteEggs.jpg" alt="White Eggs"
               class="w-full h-64 object-cover rounded-2xl shadow-md transform group-hover:scale-110 transition-transform duration-500 ease-in-out" />
          <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-30 transition-all duration-300 rounded-2xl"></div>
        </div>
        <h3 class="text-2xl font-bold text-yellow-400 mt-6 mb-2">Farm Fresh White Eggs</h3>
        <p class="text-gray-300 text-base leading-relaxed font-light">
          Clean, protein-rich eggs laid by healthy poultry. Ideal for your daily breakfast and fitness needs.
        </p>
      </div>

      <!-- Gavran Eggs -->
      <div class="group bg-gray-900 p-6 rounded-3xl shadow-2xl border border-gray-700 overflow-hidden hover:shadow-yellow-400 transition-shadow duration-300" data-aos="zoom-in">
        <div class="relative overflow-hidden rounded-2xl">
          <img src="${context}/assets/LOGO/poultry/brownEggs.jpg" alt="Gavran Eggs"
               class="w-full h-64 object-cover rounded-2xl shadow-md transform group-hover:scale-110 transition-transform duration-500 ease-in-out" />
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

<!-- Why Farm2Thali -->
<section class="bg-gray-900 text-white py-24 px-6">
  <div class="max-w-6xl mx-auto text-center">
    <h2 class="text-4xl font-extrabold text-yellow-400 mb-16 font-raleway" data-aos="fade-up">Why Choose Farm2Thali?</h2>
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-12 text-left">

      <div class="bg-gray-800 p-6 rounded-3xl shadow-xl hover:shadow-yellow-400 transition-shadow duration-300 border border-gray-700" data-aos="fade-up">
        <h4 class="text-xl font-bold text-yellow-400 mb-3">Naturally Raised</h4>
        <p class="text-gray-300 font-light leading-relaxed">
          We raise our poultry in a healthy, hormone-free environment ensuring better quality and taste.
        </p>
      </div>

      <div class="bg-gray-800 p-6 rounded-3xl shadow-xl hover:shadow-yellow-400 transition-shadow duration-300 border border-gray-700" data-aos="fade-up" data-aos-delay="100">
        <h4 class="text-xl font-bold text-yellow-400 mb-3">Daily Fresh Supply</h4>
        <p class="text-gray-300 font-light leading-relaxed">
          Eggs are collected and delivered fresh every morning — straight from the farm.
        </p>
      </div>

      <div class="bg-gray-800 p-6 rounded-3xl shadow-xl hover:shadow-yellow-400 transition-shadow duration-300 border border-gray-700" data-aos="fade-up" data-aos-delay="200">
        <h4 class="text-xl font-bold text-yellow-400 mb-3">Local & Ethical</h4>
        <p class="text-gray-300 font-light leading-relaxed">
          Supporting local farmers and traditional practices to keep food clean, nutritious, and authentic.
        </p>
      </div>

    </div>
  </div>
</section>

<!-- Call To Action -->
<section class="bg-gray-800 text-white py-24 px-6 text-center">
  <div class="max-w-4xl mx-auto" data-aos="fade-up">
    <h2 class="text-5xl font-extrabold mb-6 tracking-tight drop-shadow-md font-raleway">
      Join the <span class="text-yellow-400 underline decoration-yellow-400">Fresh Egg Revolution</span>
    </h2>
    <p class="text-xl max-w-3xl mx-auto mb-10 font-light text-gray-300">
      Taste the difference with our naturally raised farm eggs. Ethical, local, and full of nutrition.
    </p>
    <a href="${context}/contact"
       class="inline-block bg-yellow-400 text-gray-900 font-bold px-10 py-4 rounded-full shadow-xl hover:bg-yellow-300 hover:scale-105 transition-transform duration-300">
      Contact Us Now
    </a>
  </div>
</section>

<%@ include file="footer.jsp" %>
