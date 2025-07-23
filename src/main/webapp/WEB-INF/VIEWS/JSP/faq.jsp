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
      <h3 class="text-xl font-bold text-yellow-400 mb-2">What is Farm2Thali?</h3>
      <p class="text-gray-300 leading-relaxed">
        Farm2Thali is a farm-direct initiative delivering fresh, chemical-free dairy and livestock products like milk, paneer, curd, eggs, and more — straight from trusted farms to your thali.
      </p>
    </div>

    <!-- Q2 -->
    <div class="bg-gray-900 rounded-3xl border border-gray-700 p-6 shadow-md">
      <h3 class="text-xl font-bold text-yellow-400 mb-2">What makes your milk different from regular packaged milk?</h3>
      <p class="text-gray-300 leading-relaxed">
        Our milk is unadulterated, preservative-free, and sourced daily from local farms. It is non-homogenized, non-pasteurized, and contains natural fat and nutrition — just as nature intended.
      </p>
    </div>

    <!-- Q3 -->
    <div class="bg-gray-900 rounded-3xl border border-gray-700 p-6 shadow-md">
      <h3 class="text-xl font-bold text-yellow-400 mb-2">How do you ensure the quality of your products?</h3>
      <p class="text-gray-300 leading-relaxed">
        We personally verify and partner only with ethical, clean, and organic farm vendors. All our suppliers follow hygienic milking and processing standards. Our products go through routine quality checks.
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
    
    <form action="${context}/submitQuestion" method="post" class="space-y-6">
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
