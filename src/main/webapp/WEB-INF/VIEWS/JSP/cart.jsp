<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<%
  request.setAttribute("page", "cart");
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Your Cart</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-white font-sans">

  <div class="max-w-5xl mx-auto p-6 mt-10">
    <h1 class="text-4xl font-bold text-yellow-400 mb-6">🛒 Your Cart</h1>

    <div id="cartItems" class="space-y-6"></div>

    <div class="mt-8 text-right">
      <p class="text-2xl font-semibold text-gray-200">Total: ₹ <span id="cartTotal">0</span></p>
      <button onclick="alert('Proceeding to order placement...')"
              class="mt-4 bg-yellow-400 text-gray-900 font-bold px-6 py-2 rounded-full hover:bg-yellow-300 transition-all">
        Continue to Order
      </button>
    </div>
  </div>

  <script>
    let cart = JSON.parse(sessionStorage.getItem('cart')) || [];

    function renderCart() {
      const container = document.getElementById("cartItems");
      const cartTotalEl = document.getElementById("cartTotal");
      container.innerHTML = "";
      let grandTotal = 0;

      if (cart.length === 0) {
        container.innerHTML = `<p class="text-gray-400 text-lg">Your cart is empty.</p>`;
        cartTotalEl.textContent = "0";
        return;
      }

      cart.forEach((item, index) => {
        const totalPrice = item.price * item.quantity;
        grandTotal += totalPrice;

        const itemHTML = `
          <div class="bg-gray-800 p-4 rounded-xl flex items-center space-x-6 shadow-md">
            <img src="${item.image}" alt="${item.name}" class="w-24 h-24 rounded-lg object-cover border border-gray-600" />
            <div class="flex-1">
              <h3 class="text-xl font-bold text-yellow-300 mb-2">${item.name}</h3>
              <p class="text-gray-400 text-sm mb-1">Unit Price: ₹${item.price} / ${item.unit}</p>
              <div class="flex items-center space-x-3 mt-2">
                <button onclick="updateQuantity(${index}, -1)"
                        class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full hover:bg-yellow-300">−</button>
                <span class="w-8 text-center font-semibold">${item.quantity}</span>
                <button onclick="updateQuantity(${index}, 1)"
                        class="bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full hover:bg-yellow-300">+</button>
              </div>
            </div>
            <div class="text-right">
              <p class="text-lg font-semibold text-white">₹${totalPrice.toFixed(2)}</p>
              <button onclick="removeItem(${index})"
                      class="mt-2 text-red-500 text-sm hover:underline">Remove</button>
            </div>
          </div>
        `;
        container.innerHTML += itemHTML;
      });

      cartTotalEl.textContent = grandTotal.toFixed(2);
    }

    function updateQuantity(index, change) {
      cart[index].quantity += change;
      if (cart[index].quantity < 1) cart[index].quantity = 1;
      sessionStorage.setItem("cart", JSON.stringify(cart));
      renderCart();
    }

    function removeItem(index) {
      if (confirm("Remove this item from cart?")) {
        cart.splice(index, 1);
        sessionStorage.setItem("cart", JSON.stringify(cart));
        renderCart();
      }
    }

    renderCart();
  </script>

</body>
</html>
