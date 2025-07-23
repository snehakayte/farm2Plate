<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.farm2thali.model.Testimonial" %>
<%@ page import="com.farm2thali.controller.TestimonialLoader" %>

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
  <div class="max-w-6xl mx-auto" data-aos="fade-up">

      <c:choose>
        <c:when test="${not empty testimonials}">
          <div class="grid gap-6">
            <c:forEach var="t" items="${testimonials}">
              <div class="bg-gray-900 border border-gray-700 rounded-3xl p-6 shadow-xl hover:shadow-yellow-400/20 transition duration-300">
                <p class="text-lg text-gray-300 mb-6 leading-relaxed">“${t.message}”</p>
                <div class="flex items-center gap-4">
                  <img src="${pageContext.request.contextPath}/assets/LOGO/poultry/${t.image}" alt="${t.name}" class="w-12 h-12 rounded-full border-2 border-yellow-400" />
                  <div>
                    <h4 class="text-base font-semibold text-yellow-400">${t.name}</h4>
                    <p class="text-sm text-gray-400">${t.role}, ${t.city}</p>
                  </div>
                </div>
              </div>
            </c:forEach>
          </div>
        </c:when>
      </c:choose>

    <!-- If no testimonials, show "be first" message -->
    <c:if test="${empty testimonials}">
      <div class="bg-gray-900 rounded-3xl shadow-xl p-10 text-center max-w-3xl mx-auto mb-12">
        <h3 class="text-3xl font-semibold text-yellow-400 mb-4">Be the first to review our services!</h3>
        <p class="text-gray-300">We’d love to hear your thoughts. Share your experience and help us grow!</p>
      </div>
    </c:if>

    <!-- Always visible review form -->
   <form action="/submitReview" method="post" class="space-y-6">

        <!-- Full Name -->
        <div class="relative z-0 w-full group">
          <input type="text" name="name" id="name"
                 class="peer bg-transparent border-b-2 border-gray-600 text-white placeholder-transparent focus:outline-none focus:border-yellow-400 w-full px-0 py-2 text-sm"
                 placeholder="Name" required />
          <label for="name"
                 class="absolute left-0 top-2.5 text-sm text-gray-400 peer-placeholder-shown:top-2.5 peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-500 transition-all peer-focus:top-0 peer-focus:text-yellow-400 peer-focus:text-sm">
            Full Name
          </label>
        </div>



        <!-- Message -->
        <div class="relative z-0 w-full group">
          <textarea id="message" name="message" rows="5"
                    class="peer bg-transparent border-b-2 border-gray-600 text-white placeholder-transparent focus:outline-none focus:border-yellow-400 w-full px-0 py-2 text-sm"
                    placeholder="Your Review" required></textarea>
          <label for="message"
                 class="absolute left-0 top-2.5 text-sm text-gray-400 peer-placeholder-shown:top-2.5 peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-500 transition-all peer-focus:top-0 peer-focus:text-yellow-400 peer-focus:text-sm">
            Your Message
          </label>
        </div>

        <!-- Submit Button -->
        <button type="submit"
                class="w-full bg-yellow-400 hover:bg-yellow-500 text-gray-900 font-bold py-3 rounded-xl transition shadow-md">
          Send Message
        </button>
      </form>

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
