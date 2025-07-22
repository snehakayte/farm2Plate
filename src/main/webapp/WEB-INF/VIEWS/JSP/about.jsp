<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
    request.setAttribute("page", "about");
%>
<%@ include file="header.jsp" %>
<c:set var="context" value="${pageContext.request.contextPath}" />

<!-- About Hero Section -->
<section class="bg-gray-900 text-white py-20 text-center">
  <div class="max-w-4xl mx-auto px-6" data-aos="fade-down">
    <h1 class="text-5xl sm:text-6xl font-extrabold mb-6 tracking-tight font-raleway">
      About <span class="text-yellow-400">Farm2Thali</span>
    </h1>
    <p class="text-xl text-gray-300 font-light leading-relaxed">
      Ethical. Herbal. Local. We're not just delivering eggs — we’re delivering trust, purity, and nutrition straight from our farm to your thali.
    </p>
  </div>
</section>

<!-- Farm Story Section -->
<section class="bg-gray-800 text-white py-24 px-6">
  <div class="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
    
    <!-- Image with yellow hover glow -->
    <div data-aos="fade-right">
      <div class="relative group rounded-3xl shadow-xl overflow-hidden">
        <img 
          src="${context}/assets/LOGO/common/Roadmap.png" 
          alt="Our Poultry Farm"
          class="w-full h-full object-cover max-h-[600px] rounded-3xl transition-transform duration-500 transform group-hover:scale-110"
        />
        <div class="absolute inset-0 bg-yellow-400 bg-opacity-0 group-hover:bg-opacity-10 transition duration-500 rounded-3xl"></div>
      </div>
    </div>

<!-- Story Text -->
<div data-aos="fade-left">
  <h2 class="text-4xl font-extrabold text-yellow-400 mb-6">Our Journey Since 2014</h2>
  <p class="text-lg text-gray-300 leading-relaxed mb-5">
    Started in <span class="text-yellow-400 font-medium">Bhandara</span> with a small poultry farm, Farm2Thali has grown into a local brand trusted for its commitment to purity, freshness, and ethical farming.
  </p>
  <p class="text-lg text-gray-300 leading-relaxed mb-5">
    Our hens are fed a <span class="text-yellow-400 font-medium">100% herbal, antibiotic-free diet</span> to ensure the highest quality eggs.
  </p>
  <p class="text-lg text-gray-300 leading-relaxed mb-5">
    In <span class="text-yellow-400 font-medium">2021</span>, we proudly expanded into A2 dairy with our own <span class="text-yellow-400 font-medium">Gir cows</span>, offering A2 milk, paneer, and dahi — all free from preservatives and hormones.
  </p>
  <p class="text-lg text-gray-300 leading-relaxed">
    From farm to thali, we deliver real, clean food that you and your family can trust.
  </p>
</div>


  </div>
</section>

<!-- Our Values Section -->
<section class="bg-gray-900 text-white py-28 px-6 text-center">
  <div class="max-w-7xl mx-auto">
    <h2 class="text-5xl font-extrabold text-yellow-400 mb-16 font-raleway">Our Core Values</h2>
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-12">

      <!-- Purity First -->
      <div class="bg-gray-800 p-8 rounded-3xl border border-gray-700 shadow-2xl hover:shadow-yellow-400/20 transition duration-300" data-aos="zoom-in">
        <h4 class="text-2xl font-bold text-yellow-400 mb-4">Purity First</h4>
        <p class="text-lg text-gray-300 leading-relaxed">
          We never compromise when it comes to health. Every egg from Farm2Thali is free from harmful chemicals, preservatives, or artificial treatments.
          From nest to tray, purity is maintained at every stage. You get farm-fresh eggs just as nature intended — clean, nutritious, and full of goodness.
        </p>
      </div>

      <!-- Herbal Feeding -->
      <div class="bg-gray-800 p-8 rounded-3xl border border-gray-700 shadow-2xl hover:shadow-yellow-400/20 transition duration-300" data-aos="zoom-in" data-aos-delay="100">
        <h4 class="text-2xl font-bold text-yellow-400 mb-4">Herbal Feeding</h4>
        <p class="text-lg text-gray-300 leading-relaxed">
          Our hens are fed only with 100% herbal, natural feed enriched with essential nutrients — no antibiotics, no hormonal boosters, no factory shortcuts.
          This ensures stronger immunity in birds and a higher quality egg with a rich yellow yolk and superior taste.
          We grow our feed with care, just like we raise our flocks — the traditional way.
        </p>
      </div>

      <!-- Ethical Farming -->
      <div class="bg-gray-800 p-8 rounded-3xl border border-gray-700 shadow-2xl hover:shadow-yellow-400/20 transition duration-300" data-aos="zoom-in" data-aos-delay="200">
        <h4 class="text-2xl font-bold text-yellow-400 mb-4">Ethical Farming</h4>
        <p class="text-lg text-gray-300 leading-relaxed">
          At Farm2Thali, we follow ethical and sustainable farming practices that prioritize the well-being of both our hens and our customers.
          No cages, no cruelty — only open, ventilated, hygienic spaces where birds can roam freely. 
          Healthy hens lay healthy eggs. That’s our promise to you.
        </p>
      </div>

    </div>
  </div>
</section>



<!-- Gallery Section -->
<!-- Gallery Section -->
<section class="bg-gray-900 text-white py-24 px-6">
  <div class="max-w-7xl mx-auto">
    <h2 class="text-4xl font-bold text-yellow-400 mb-12 text-center" data-aos="fade-up">Glimpses of Our Farm</h2>
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6" data-aos="fade-up">
      <img src="${context}/assets/LOGO/poultry/Organic1.jpg" class="rounded-xl shadow-md hover:scale-105 transition-transform duration-300" />
      <img src="${context}/assets/LOGO/poultry/Organic2.jpg" class="rounded-xl shadow-md hover:scale-105 transition-transform duration-300" />
      <img src="${context}/assets/LOGO/poultry/Organic3.jpg" class="rounded-xl shadow-md hover:scale-105 transition-transform duration-300" />
      <img src="${context}/assets/LOGO/poultry/Organic4.jpg" class="rounded-xl shadow-md hover:scale-105 transition-transform duration-300" />
      <img src="${context}/assets/LOGO/poultry/Organic1.jpg" class="rounded-xl shadow-md hover:scale-105 transition-transform duration-300" />
      <img src="${context}/assets/LOGO/poultry/Organic1.jpg" class="rounded-xl shadow-md hover:scale-105 transition-transform duration-300" />
    </div>
  </div>
</section>

<%@ include file="footer.jsp" %>
