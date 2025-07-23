<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<%
  request.setAttribute("page", "cart");
%>

<%@ include file="header.jsp" %>
<c:set var="context" value="${pageContext.request.contextPath}" />

<div class="max-w-5xl mx-auto p-6 mt-10">
  <h1 class="text-4xl font-bold text-yellow-400 mb-6">🛒 Your Cart</h1>

  <div id="cartItems" class="space-y-6"></div>

  <div class="mt-8 text-right">
    <p class="text-2xl font-semibold text-gray-200">Total: ₹ <span id="cartTotal">0</span></p>
    
    <div class="flex items-center justify-end space-x-4 mt-4">
      <button onclick="clearCart()" class="bg-red-600 text-white px-6 py-2 rounded-full hover:bg-red-700 transition">
        🗑️ Clear Cart
      </button>
      <button onclick="alert('Proceeding to order placement...')"
              class="bg-yellow-400 text-gray-900 font-bold px-6 py-2 rounded-full hover:bg-yellow-300 transition">
        Continue to Order
      </button>
    </div>
  </div>
</div>

<script>
  // Load cart from sessionStorage
  let cart = JSON.parse(sessionStorage.getItem('cart')) || [];
  console.log("cart.jsp cart  is " + JSON.stringify(cart));

  function renderCart() {
   
    console.log("container  is " + container);
    console.log("cartTotalEl  is " + cartTotalEl);

    container.innerHTML = "";
    let grandTotal = 0;

    if (cart.length === 0) {
      container.innerHTML = `<p class="text-gray-400 text-lg">Your cart is empty.</p>`;
      cartTotalEl.textContent = "0";
      return;
    }

    cart.forEach((item, index) => {
    	  const itemDiv = document.createElement("div");
    	  itemDiv.className = "bg-gray-800 p-4 rounded-xl flex items-center space-x-6 shadow-md";

    	  const img = document.createElement("img");
    	  img.src = item.image;
    	  img.alt = item.name;
    	  img.className = "w-24 h-24 rounded-lg object-cover border border-gray-600";

    	  const flexDiv = document.createElement("div");
    	  flexDiv.className = "flex-1";

    	  const nameEl = document.createElement("h3");
    	  nameEl.className = "text-xl font-bold text-yellow-300 mb-2";
    	  nameEl.textContent = item.name;

    	  const unitEl = document.createElement("p");
    	  unitEl.className = "text-gray-400 text-sm mb-1";
    	  unitEl.textContent = `₹${item.price} / ${item.unit}`;

    	  const qtyDiv = document.createElement("div");
    	  qtyDiv.className = "flex items-center space-x-3 mt-2";

    	  const btnMinus = document.createElement("button");
    	  btnMinus.className = "bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full hover:bg-yellow-300";
    	  btnMinus.textContent = "−";
    	  btnMinus.onclick = () => updateQuantity(index, -1);

    	  const qtySpan = document.createElement("span");
    	  qtySpan.className = "text-white";
    	  qtySpan.textContent = item.quantity;

    	  const btnPlus = document.createElement("button");
    	  btnPlus.className = "bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full hover:bg-yellow-300";
    	  btnPlus.textContent = "+";
    	  btnPlus.onclick = () => updateQuantity(index, 1);

    	  qtyDiv.appendChild(btnMinus);
    	  qtyDiv.appendChild(qtySpan);
    	  qtyDiv.appendChild(btnPlus);

    	  flexDiv.appendChild(nameEl);
    	  flexDiv.appendChild(unitEl);
    	  flexDiv.appendChild(qtyDiv);

    	  const rightDiv = document.createElement("div");
    	  rightDiv.className = "text-right";

    	  const priceP = document.createElement("p");
    	  priceP.className = "text-lg font-semibold text-white";
    	  const totalPrice = item.price * item.quantity;
    	  priceP.textContent = `₹${totalPrice.toFixed(2)}`;

    	  const removeBtn = document.createElement("button");
    	  removeBtn.className = "mt-2 text-red-400 text-sm hover:underline";
    	  removeBtn.textContent = "Remove";
    	  removeBtn.onclick = () => removeItem(index);

    	  rightDiv.appendChild(priceP);
    	  rightDiv.appendChild(removeBtn);

    	  itemDiv.appendChild(img);
    	  itemDiv.appendChild(flexDiv);
    	  itemDiv.appendChild(rightDiv);

    	  container.appendChild(itemDiv);
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

  function clearCart() {
    if (confirm("Are you sure you want to clear your entire cart?")) {
      cart = [];
      sessionStorage.removeItem("cart");
      renderCart();
    }
  }

  // On load
  renderCart();
</script>

<%@ include file="footer.jsp" %>
