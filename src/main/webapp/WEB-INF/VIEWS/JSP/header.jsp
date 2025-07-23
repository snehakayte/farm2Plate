<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<c:set var="page" value="${empty page ? 'none' : page}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Farm2Thali | Fresh Eggs from Local Farms</title>
  <meta name="description" content="Order fresh white and gavran eggs directly from our farms to your home. Hygienic, naturally raised poultry, and fast delivery." />
  <link rel="icon" href="${context}/assets/favicon.ico" type="image/x-icon" />

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&family=Poppins:wght@400;600&display=swap" rel="stylesheet" />

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    tailwind.config = {
      theme: {
        extend: {
          fontFamily: {
            poppins: ['Poppins', 'sans-serif'],
            inter: ['Inter', 'sans-serif'],
          },
          colors: {
            brand: {
              yellow: '#facc15',
              dark: '#1f2937',
              light: '#fefce8',
            }
          },
          boxShadow: {
            neon: '0 0 20px #facc15',
          }
        }
      }
    }
  </script>

  <!-- AOS Animations -->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
  <style>
    body { font-family: 'Poppins', sans-serif; }
    .glow-logo { text-shadow: 0 0 10px #facc15, 0 0 20px #facc15; }
  </style>
</head>

<body class="bg-gray-950 text-white overflow-x-hidden">

<!-- 🔥 HEADER -->
<header class="bg-gradient-to-r from-gray-900 via-gray-800 to-gray-900 sticky top-0 z-50 shadow-xl border-b border-gray-700">
  <div class="max-w-7xl mx-auto px-6 py-5 flex items-center justify-between">

    <!-- Logo with Image -->
    <a href="${context}/" class="flex items-center gap-3 group transition-transform transform hover:scale-105 duration-300 ease-in-out">
      <img src="${context}/assets/LOGO/poultry/logo.png" alt="Farm2Thali Logo"
           class="w-12 h-12 rounded-full shadow-lg transition-transform duration-300 ease-in-out group-hover:scale-110 group-hover:shadow-yellow-400" />
      <span class="text-3xl font-extrabold tracking-wide text-yellow-400 glow-logo group-hover:text-yellow-300 transition-all duration-300">
        Farm2<span class="text-white">Thali</span>
      </span>
    </a>

<<<<<<< HEAD
    <!-- Desktop Nav -->
    <nav class="hidden md:flex space-x-6 text-base font-medium">
      <a href="${context}/" class="${page eq 'home' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">Home</a>
      <a href="${context}/about" class="${page eq 'about' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">About</a>
      <a href="${context}/services" class="${page eq 'services' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">Services</a>
      <a href="${context}/order" class="${page eq 'order' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">Order Online</a>
      <a href="${context}/cart" class="${page eq 'cart' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">🛒 Cart</a>
      <a href="${context}/testimonials" class="${page eq 'testimonials' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">Testimonials</a>
      <a href="${context}/faq" class="${page eq 'faq' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">FAQ</a>
    </nav>
=======
  <!-- Desktop Nav -->
  <nav class="hidden md:flex space-x-6 text-base font-medium">
    <a href="${context}/" class="${page == 'home' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">Home</a>

    <a href="${context}/about"  class="${page == 'about' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">About</a>

    <a href="${context}/services"  class="${page == 'services' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">Services</a>

    <a href="${context}/order" class="${page == 'order' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">Order Online</a>
<!--
    <a href="${context}/cart" class="${page == 'cart' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">🛒 Cart</a>
-->
    <a href="${context}/testimonials" class="${page == 'testimonials' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200">Testimonials </a>

    <a href="${context}/faq"  class="${page == 'faq' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'} transition duration-200"> FAQ </a> </nav>

>>>>>>> a61fcd86faaacdb949b6f2480fe340177e442405

    <!-- CTA -->
    <a href="${context}/contact" class="hidden md:inline-block bg-yellow-400 text-gray-900 font-semibold px-6 py-2 rounded-full shadow-neon hover:bg-yellow-300 transition duration-300">
      Contact Us
    </a>

    <!-- Mobile Menu Icon -->
    <button id="mobileMenuBtn" class="md:hidden text-yellow-400 hover:text-white transition">
      <svg class="w-7 h-7" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
        <path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 12h16M4 18h16" />
      </svg>
    </button>
  </div>

  <!-- Mobile Nav -->
  <div id="mobileMenu" class="hidden md:hidden bg-gray-900 px-6 pb-5 pt-3 text-base font-medium space-y-3">
    <a href="${context}/" class="block ${page eq 'home' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'}">Home</a>
    <a href="${context}/about" class="block ${page eq 'about' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'}">About</a>
    <a href="${context}/services" class="block ${page eq 'services' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'}">Services</a>
    <a href="${context}/order" class="block ${page eq 'order' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'}">Order Online</a>
    <a href="${context}/cart" class="block ${page eq 'cart' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'}">🛒 Cart</a>
    <a href="${context}/testimonials" class="block ${page eq 'testimonials' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'}">Testimonials</a>
    <a href="${context}/faq" class="block ${page eq 'faq' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'}">FAQ</a>
    <a href="${context}/contact" class="block ${page eq 'contact' ? 'text-yellow-400 font-semibold' : 'text-gray-300 hover:text-yellow-400'}">Contact</a>
  </div>

  <script>
    const mobileBtn = document.getElementById('mobileMenuBtn');
    const mobileMenu = document.getElementById('mobileMenu');
    mobileBtn.addEventListener('click', () => {
      mobileMenu.classList.toggle('hidden');
    });
  </script>
</header>
