<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("page", "checkout");
%>
<c:set var="context" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Checkout</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-white min-h-screen">

<jsp:include page="header.jsp" />

<div class="max-w-3xl mx-auto mt-12 p-6 bg-gray-800 rounded-lg shadow-md">
  <h2 class="text-3xl font-bold text-yellow-400 mb-6">Checkout</h2>

  <!-- Cart Summary -->
  <div id="cartSummary" class="mb-8 space-y-4"></div>

  <!-- Total -->
  <div class="flex justify-between items-center border-t border-gray-700 pt-4 mb-6">
    <p class="text-lg font-semibold text-white">Grand Total</p>
    <p id="checkoutTotal" class="text-lg font-semibold text-yellow-400">₹0.00</p>
  </div>

  <!-- Order Form -->
  <form id="orderForm" class="space-y-4">
    <input type="text" name="name" placeholder="Your Full Name" required
           class="w-full px-4 py-2 rounded-md bg-gray-900 border border-gray-700 text-white placeholder-gray-500" />

<input type="email" name="email" placeholder="Email Address (for confirmation)" required
       class="w-full px-4 py-2 rounded-md bg-gray-900 border border-gray-700 text-white placeholder-gray-500" />

    <input type="tel" name="phone" placeholder="Mobile Number" pattern="[0-9]{10}" required
           class="w-full px-4 py-2 rounded-md bg-gray-900 border border-gray-700 text-white placeholder-gray-500" />

    <input type="text" name="state" placeholder="State" required
           class="w-full px-4 py-2 rounded-md bg-gray-900 border border-gray-700 text-white placeholder-gray-500" />

    <input type="text" name="city" placeholder="City" required
           class="w-full px-4 py-2 rounded-md bg-gray-900 border border-gray-700 text-white placeholder-gray-500" />

    <input type="text" name="landmark" placeholder="Landmark (optional)"
           class="w-full px-4 py-2 rounded-md bg-gray-900 border border-gray-700 text-white placeholder-gray-500" />

    <textarea name="address" placeholder="Full Delivery Address" rows="4" required
              class="w-full px-4 py-2 rounded-md bg-gray-900 border border-gray-700 text-white placeholder-gray-500"></textarea>

    <button type="submit"
            class="bg-yellow-400 hover:bg-yellow-300 text-black font-semibold px-6 py-2 rounded-md transition duration-300 w-full">
      Place Order
    </button>
  </form>

  <p id="orderStatus" class="mt-4 hidden text-center font-medium"></p>
</div>

<jsp:include page="footer.jsp" />

<script>
  const cart = JSON.parse(sessionStorage.getItem('cart')) || [];
  const cartSummary = document.getElementById("cartSummary");
  const checkoutTotal = document.getElementById("checkoutTotal");
  const orderForm = document.getElementById("orderForm");
  const orderStatus = document.getElementById("orderStatus");
  const context = "${context}";

  let grandTotal = 0;

  if (cart.length === 0) {
    cartSummary.innerHTML = `<p class="text-gray-400 text-center">Your cart is empty. <a href="${context}/" class="text-yellow-400 underline">Go back to shopping.</a></p>`;
    orderForm.querySelector("button[type='submit']").disabled = true;
  } else {
    cart.forEach(item => {
      const total = item.price * item.quantity;
      grandTotal += total;

      const itemEl = document.createElement("div");
      itemEl.className = "flex justify-between items-center border-b border-gray-700 pb-2";

      const leftDiv = document.createElement("div");
      const nameP = document.createElement("p");
      nameP.className = "font-medium text-yellow-300";
      nameP.textContent = item.name;

      const detailsP = document.createElement("p");
      detailsP.className = "text-sm text-gray-400";
      detailsP.textContent = "₹" + item.price + " × " + item.quantity;

      leftDiv.appendChild(nameP);
      leftDiv.appendChild(detailsP);

      const totalP = document.createElement("p");
      totalP.className = "font-semibold text-white";
      totalP.textContent = "₹" + total.toFixed(2);

      itemEl.appendChild(leftDiv);
      itemEl.appendChild(totalP);

      cartSummary.appendChild(itemEl);
    });

    checkoutTotal.textContent = "₹" + grandTotal.toFixed(2);
  }

  orderForm.addEventListener("submit", async function (e) {
    e.preventDefault();

    const formData = new FormData(orderForm);
    const orderData = {
      customerName: formData.get("name"),
       email: formData.get("email"),
      phone: formData.get("phone"),
      state: formData.get("state"),
      city: formData.get("city"),
      landmark: formData.get("landmark"),
      address: formData.get("address"),
      items: cart,
      total: grandTotal.toFixed(2)
    };

    try {
      const response = await fetch(context + "/bookorder", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify(orderData)
      });

      if (!response.ok) throw new Error("Failed to place order");

      const result = await response.json();

      orderStatus.textContent = "🎉 Order placed successfully!";
      orderStatus.className = "mt-4 text-green-400 text-center font-semibold";

      sessionStorage.removeItem("cart");

      setTimeout(() => {
        window.location.href = context + "/";
      }, 2500);
    } catch (err) {
      orderStatus.textContent = "❌ Failed to place order. Please try again.";
      orderStatus.className = "mt-4 text-red-400 text-center font-semibold";
    }
  });
</script>

</body>
</html>
