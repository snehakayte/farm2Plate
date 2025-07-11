<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setAttribute("page", "contact");
%>
<%@ include file="header.jsp" %>

<section class="bg-gray-900 min-h-screen flex items-center justify-center py-24 px-6 text-white">
  <div class="max-w-3xl w-full bg-gray-800 rounded-3xl shadow-2xl p-10 md:p-14 border border-gray-700" data-aos="fade-up">
    
    <h1 class="text-4xl font-extrabold text-yellow-400 mb-8 text-center font-raleway">
      Reach Out to <span class="text-white">Farm2Thali</span>
    </h1>
    <p class="text-center text-gray-300 text-sm mb-10">We’re here to answer your queries, help you order, or just say hello!</p>

    <% Boolean success = (Boolean) request.getAttribute("success"); %>
    <% String error = (String) request.getAttribute("error"); %>

    <% if (success != null && success) { %>
      <div class="mb-6 p-4 rounded bg-green-200 text-green-800 font-semibold shadow text-sm">
        ✅ Thank you! Your message has been sent successfully.
      </div>
    <% } else if (error != null) { %>
      <div class="mb-6 p-4 rounded bg-red-200 text-red-800 font-semibold shadow text-sm">
        ⚠️ <%= error %>
      </div>
    <% } %>

    <form action="${context}/contact-submit" method="post" class="space-y-6">
      
      <!-- Full Name -->
      <div class="relative z-0 w-full group">
        <input type="text" name="fullname" id="fullname"
               class="peer bg-transparent border-b-2 border-gray-600 text-white placeholder-transparent focus:outline-none focus:border-yellow-400 w-full px-0 py-2 text-sm"
               placeholder="Full Name" required />
        <label for="fullname"
               class="absolute left-0 top-2.5 text-sm text-gray-400 peer-placeholder-shown:top-2.5 peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-500 transition-all peer-focus:top-0 peer-focus:text-yellow-400 peer-focus:text-sm">
          Full Name
        </label>
      </div>

      <!-- Email -->
      <div class="relative z-0 w-full group">
        <input type="email" name="email" id="email"
               class="peer bg-transparent border-b-2 border-gray-600 text-white placeholder-transparent focus:outline-none focus:border-yellow-400 w-full px-0 py-2 text-sm"
               placeholder="Email" required />
        <label for="email"
               class="absolute left-0 top-2.5 text-sm text-gray-400 peer-placeholder-shown:top-2.5 peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-500 transition-all peer-focus:top-0 peer-focus:text-yellow-400 peer-focus:text-sm">
          Email Address
        </label>
      </div>

      <!-- Message -->
      <div class="relative z-0 w-full group">
        <textarea id="message" name="message" rows="5"
                  class="peer bg-transparent border-b-2 border-gray-600 text-white placeholder-transparent focus:outline-none focus:border-yellow-400 w-full px-0 py-2 text-sm"
                  placeholder="Your Message" required></textarea>
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

<%@ include file="footer.jsp" %>
