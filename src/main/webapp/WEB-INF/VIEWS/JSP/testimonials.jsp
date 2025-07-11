<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setAttribute("page", "testimonials");
%>
<%@ include file="header.jsp" %>
<c:set var="context" value="${pageContext.request.contextPath}" />

<!-- Testimonials Hero -->
<section class="bg-gray-900 text-white py-20 px-6 text-center">
  <div class="max-w-4xl mx-auto" data-aos="fade-down">
    <h1 class="text-5xl font-extrabold mb-6 text-yellow-400 font-raleway">What Our Customers Say</h1>
    <p class="text-lg text-gray-300 font-light">
      Real experiences from our happy customers who believe in fresh, ethical, and local food.
    </p>
  </div>
</section>

<!-- Testimonials Section -->
<section class="bg-gray-800 py-24 px-6 text-white">
  <div class="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-10" data-aos="fade-up">

    <!-- Testimonial 1 -->
    <div class="bg-gray-900 border border-gray-700 rounded-3xl p-6 shadow-xl hover:shadow-yellow-400/20 transition duration-300">
      <p class="text-lg text-gray-300 mb-6 leading-relaxed">
        “I switched to Farm2Thali eggs six months ago and haven't looked back. The taste, freshness, and yolk color are just unbeatable.
        I love that they’re free from chemicals,antibiotics,cruelty and truly local.”
      </p>
      <div class="flex items-center gap-4">
        <img src="${context}/assets/LOGO/poultry/girl1.jpg" alt="Priya Deshmukh" class="w-12 h-12 rounded-full border-2 border-yellow-400" />
        <div>
          <h4 class="text-base font-semibold text-yellow-400">Priya Deshmukh</h4>
          <p class="text-sm text-gray-400">Homemaker, Nagpur</p>
        </div>
      </div>
    </div>

    <!-- Testimonial 2 -->
    <div class="bg-gray-900 border border-gray-700 rounded-3xl p-6 shadow-xl hover:shadow-yellow-400/20 transition duration-300">
      <p class="text-lg text-gray-300 mb-6 leading-relaxed">
        “As a fitness trainer, quality protein matters. I recommend Farm2Thali’s white eggs to my clients for their high nutritional value.
        Their delivery is always on time, and the eggs stay fresh longer.”
      </p>
      <div class="flex items-center gap-4">
        <img src="${context}/assets/LOGO/poultry/boy1.jpg" alt="Rahul Chavan" class="w-12 h-12 rounded-full border-2 border-yellow-400" />
        <div>
          <h4 class="text-base font-semibold text-yellow-400">Rahul Chavan</h4>
          <p class="text-sm text-gray-400">Fitness Coach, Pune</p>
        </div>
      </div>
    </div>

    <!-- Testimonial 3 -->
    <div class="bg-gray-900 border border-gray-700 rounded-3xl p-6 shadow-xl hover:shadow-yellow-400/20 transition duration-300">
      <p class="text-lg text-gray-300 mb-6 leading-relaxed">
        “I’ve been ordering from Farm2Thali every week. The desi brown eggs remind me of my childhood village days. So much flavor and freshness!
        Great service and eco-friendly packaging too.”
      </p>
      <div class="flex items-center gap-4">
        <img src="${context}/assets/LOGO/poultry/boy2.jpg" alt="Suresh Patil" class="w-12 h-12 rounded-full border-2 border-yellow-400" />
        <div>
          <h4 class="text-base font-semibold text-yellow-400">Suresh Patil</h4>
          <p class="text-sm text-gray-400">Retired Govt Officer, Bhandara</p>
        </div>
      </div>
    </div>

  </div>
</section>

<!-- Final CTA -->
<section class="bg-yellow-400 text-gray-900 py-16 text-center px-6">
  <h2 class="text-3xl font-extrabold mb-4 font-raleway">Ready to taste the difference?</h2>
  <p class="text-lg font-light mb-6">Join hundreds of happy families who’ve made the switch to ethical, healthy eating.</p>
  <a href="${context}/order" class="inline-block bg-gray-900 text-yellow-400 font-semibold px-8 py-3 rounded-full hover:bg-gray-800 transition-all shadow-md">
    Order Now
  </a>
</section>

<%@ include file="footer.jsp" %>
