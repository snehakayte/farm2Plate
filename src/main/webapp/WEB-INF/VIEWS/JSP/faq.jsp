<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setAttribute("page", "faq");
%>
<%@ include file="header.jsp" %>
<c:set var="context" value="${pageContext.request.contextPath}" />

<!-- FAQ Hero Section -->
<section class="bg-gray-900 text-white py-20 px-6 text-center">
  <div class="max-w-4xl mx-auto" data-aos="fade-down">
    <h1 class="text-5xl font-extrabold mb-6 text-yellow-400 font-raleway">Frequently Asked Questions</h1>
    <p class="text-lg text-gray-300 font-light">
      Got questions? We’ve answered the most common ones about our eggs, farming practices, and deliveries.
    </p>
  </div>
</section>

<!-- FAQ List Section -->
<section class="bg-gray-800 text-white py-24 px-6">
  <div class="max-w-5xl mx-auto space-y-8" data-aos="fade-up">

    <!-- Q1 -->
    <div class="bg-gray-900 rounded-3xl border border-gray-700 p-6 shadow-md">
      <h3 class="text-xl font-bold text-yellow-400 mb-2">What is the difference between white and brown (Gavran) eggs?</h3>
      <p class="text-gray-300 leading-relaxed">
        White eggs typically come from commercial poultry and have a clean taste. Brown (Gavran) eggs come from native desi hens raised in open environments,
        offering richer taste and higher immunity-boosting nutrients. Both are free from chemicals and hormones.
      </p>
    </div>

    <!-- Q2 -->
    <div class="bg-gray-900 rounded-3xl border border-gray-700 p-6 shadow-md">
      <h3 class="text-xl font-bold text-yellow-400 mb-2">Are your eggs free from antibiotics and hormones?</h3>
      <p class="text-gray-300 leading-relaxed">
        Absolutely. All our eggs — white and Gavran — are 100% free from antibiotics, hormonal injections, and synthetic feed. We feed our hens with herbal,
        natural grains to ensure safe and healthy produce.
      </p>
    </div>

    <!-- Q3 -->
    <div class="bg-gray-900 rounded-3xl border border-gray-700 p-6 shadow-md">
      <h3 class="text-xl font-bold text-yellow-400 mb-2">Are Gavran eggs more nutritious than white eggs?</h3>
      <p class="text-gray-300 leading-relaxed">
        Gavran eggs are slightly richer in nutrients due to their desi origin and natural diet. They often have darker yolks, more Omega-3s,
        and a stronger flavor. However, both egg types from Farm2Thali are highly nutritious and chemical-free.
      </p>
    </div>

    <!-- Q4 -->
    <div class="bg-gray-900 rounded-3xl border border-gray-700 p-6 shadow-md">
      <h3 class="text-xl font-bold text-yellow-400 mb-2">How fresh are the eggs when delivered?</h3>
      <p class="text-gray-300 leading-relaxed">
        We collect and pack eggs on the same day of delivery. There’s no refrigeration or long-distance storage involved — just farm-fresh eggs delivered right to your home.
      </p>
    </div>

    <!-- Q5 -->
    <div class="bg-gray-900 rounded-3xl border border-gray-700 p-6 shadow-md">
      <h3 class="text-xl font-bold text-yellow-400 mb-2">Do you offer regular deliveries or subscriptions?</h3>
      <p class="text-gray-300 leading-relaxed">
        Yes, we offer both one-time and recurring deliveries. You can choose a weekly or monthly subscription model based on your family's needs.
        It ensures you never run out of fresh eggs!
      </p>
    </div>

    <!-- Q6 -->
    <div class="bg-gray-900 rounded-3xl border border-gray-700 p-6 shadow-md">
      <h3 class="text-xl font-bold text-yellow-400 mb-2">Is there a minimum order amount?</h3>
      <p class="text-gray-300 leading-relaxed">
        No, you can order as little as one tray (6 or 12 eggs). We believe in flexibility and accessibility for all our customers.
      </p>
    </div>

  </div>
</section>

<!-- Ask Your Question Section -->
<section class="bg-gray-900 py-20 px-6 text-white text-center">
  <div class="max-w-3xl mx-auto" data-aos="fade-up">
    <h2 class="text-3xl font-bold text-yellow-400 mb-4">Didn't find your question?</h2>
    <p class="text-lg text-gray-300 mb-8">Let us know your query and we'll get back to you as soon as possible.</p>
    
    <form action="/question-submit" method="post" class="space-y-6">
      <input type="text" name="name" placeholder="Your Name" required class="w-full p-3 rounded-xl bg-gray-800 text-white border border-gray-700 focus:outline-none focus:ring-2 focus:ring-yellow-400" />
      <input type="email" name="email" placeholder="Your Email" required class="w-full p-3 rounded-xl bg-gray-800 text-white border border-gray-700 focus:outline-none focus:ring-2 focus:ring-yellow-400" />
      <textarea name="question" placeholder="Your Question" rows="4" required class="w-full p-3 rounded-xl bg-gray-800 text-white border border-gray-700 focus:outline-none focus:ring-2 focus:ring-yellow-400"></textarea>
      <button type="submit" class="bg-yellow-400 text-gray-900 font-semibold px-8 py-3 rounded-xl hover:bg-yellow-500 transition shadow-md">
        Submit Question
      </button>
    </form>
  </div>
</section>

<%@ include file="footer.jsp" %>
