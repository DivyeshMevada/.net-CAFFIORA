/**
 * CAFFIORA - Frontend Interactions & Dynamic State
 */

document.addEventListener('DOMContentLoaded', function () {
    // 1. Password Visibility Toggle
    const togglePassBtns = document.querySelectorAll('.password-toggle-btn');
    togglePassBtns.forEach(btn => {
        btn.addEventListener('click', function () {
            const input = this.parentElement.querySelector('input');
            const icon = this.querySelector('i');
            if (input.type === 'password') {
                input.type = 'text';
                icon.classList.remove('fa-eye');
                icon.classList.add('fa-eye-slash');
            } else {
                input.type = 'password';
                icon.classList.remove('fa-eye-slash');
                icon.classList.add('fa-eye');
            }
        });
    });

    // 2. Role Switcher on Sign In Page
    const roleTabs = document.querySelectorAll('.role-tab-btn');
    if (roleTabs.length > 0) {
        roleTabs.forEach(tab => {
            tab.addEventListener('click', function () {
                roleTabs.forEach(t => t.classList.remove('active'));
                this.classList.add('active');

                const role = this.getAttribute('data-role');
                const titleEl = document.getElementById('loginTitle');
                const subEl = document.getElementById('loginSubtitle');
                const footerEl = document.getElementById('loginFooterArea');
                const heroImgEl = document.getElementById('loginHeroSide');
                const roleInput = document.getElementById('roleInput');
                if (roleInput) roleInput.value = role;

                if (role === 'staff') {
                    if (titleEl) titleEl.textContent = 'Welcome, CAFFIORA Staff';
                    if (subEl) subEl.textContent = 'Sign in to manage café operations.';
                    if (footerEl) footerEl.innerHTML = '<span style="font-size:12px; color:#7E736B;">Staff access is provided by CAFFIORA.</span>';
                    if (heroImgEl) heroImgEl.style.backgroundImage = "url('images/staff-espresso-machine.jpg')";
                } else if (role === 'admin') {
                    if (titleEl) titleEl.textContent = 'Welcome, CAFFIORA Admin';
                    if (subEl) subEl.textContent = 'Sign in to manage your café business.';
                    if (footerEl) footerEl.innerHTML = '<span style="font-size:12px; color:#7E736B;">Authorized administrators only.</span>';
                    if (heroImgEl) heroImgEl.style.backgroundImage = "url('images/admin-bakery-counter.jpg')";
                } else {
                    if (titleEl) titleEl.textContent = 'Welcome to CAFFIORA';
                    if (subEl) subEl.textContent = 'Sign in to continue your café experience';
                    if (footerEl) footerEl.innerHTML = 'New to CAFFIORA? <a href="Register.aspx" class="auth-footer-link">CREATE NEW ACCOUNT</a>';
                    if (heroImgEl) heroImgEl.style.backgroundImage = "url('images/cafe-interior.jpg')";
                }
            });
        });
    }

    // 3. Menu Category Filter
    const filterPills = document.querySelectorAll('.menu-filter-pill');
    const productCards = document.querySelectorAll('.product-card');

    if (filterPills.length > 0 && productCards.length > 0) {
        filterPills.forEach(pill => {
            pill.addEventListener('click', function () {
                filterPills.forEach(p => p.classList.remove('active'));
                this.classList.add('active');

                const category = this.getAttribute('data-category').toUpperCase();

                productCards.forEach(card => {
                    const cardCat = (card.getAttribute('data-category') || '').toUpperCase();
                    if (category === 'ALL' || cardCat === category) {
                        card.style.display = card.classList.contains('product-card-featured') ? 'grid' : 'flex';
                    } else {
                        card.style.display = 'none';
                    }
                });
            });
        });
    }

    // 4. Product Details Options (Cup size, Sugar level)
    const optionBtns = document.querySelectorAll('.option-pill-btn');
    optionBtns.forEach(btn => {
        btn.addEventListener('click', function () {
            const parent = this.parentElement;
            parent.querySelectorAll('.option-pill-btn').forEach(b => b.classList.remove('active'));
            this.classList.add('active');
        });
    });

    // 5. Quantity Selectors
    window.updateQty = function (element, delta) {
        const wrap = element.closest('.quantity-control') || element.closest('.qty-row-wrap');
        const numEl = wrap ? wrap.querySelector('.qty-number') : null;
        if (!numEl) return;

        let val = parseInt(numEl.textContent.trim(), 10) || 1;
        val += delta;
        if (val < 1) val = 1;
        numEl.textContent = val;

        // If in Cart, recalculate item and order totals
        const cartItem = element.closest('.cart-item-card');
        if (cartItem) {
            const unitPrice = parseFloat(cartItem.getAttribute('data-unit-price')) || 0;
            const itemTotalEl = cartItem.querySelector('.cart-item-total');
            const total = unitPrice * val;
            if (itemTotalEl) {
                itemTotalEl.textContent = '₹ ' + total.toFixed(2);
            }
            recalculateCart();
        }
    };

    // 6. Recalculate Cart Summary
    function recalculateCart() {
        let subtotal = 0;
        const items = document.querySelectorAll('.cart-item-card');
        items.forEach(item => {
            const qtyEl = item.querySelector('.qty-number');
            const qty = qtyEl ? parseInt(qtyEl.textContent.trim(), 10) : 1;
            const price = parseFloat(item.getAttribute('data-unit-price')) || 0;
            subtotal += price * qty;
        });

        const tax = Math.round(subtotal * 0.05);
        const total = subtotal + tax;

        const subtotalEl = document.getElementById('cartSubtotal');
        const taxEl = document.getElementById('cartTax');
        const totalEl = document.getElementById('cartTotal');

        if (subtotalEl) subtotalEl.textContent = '₹ ' + subtotal.toLocaleString('en-IN', { minimumFractionDigits: 2 });
        if (taxEl) taxEl.textContent = '₹ ' + tax.toLocaleString('en-IN', { minimumFractionDigits: 2 });
        if (totalEl) totalEl.textContent = '₹ ' + total.toLocaleString('en-IN', { minimumFractionDigits: 2 });
    }

    // 7. Remove item from Cart
    window.removeCartItem = function (btn) {
        const item = btn.closest('.cart-item-card');
        if (item) {
            item.remove();
            recalculateCart();
            showToast('Item removed from cart');
        }
    };

    // 8. Toast Helper
    window.showToast = function (message) {
        let toast = document.getElementById('caffioraToast');
        if (!toast) {
            toast = document.createElement('div');
            toast.id = 'caffioraToast';
            toast.className = 'caffiora-toast';
            document.body.appendChild(toast);
        }
        toast.innerHTML = '<i class="fas fa-check-circle"></i> ' + message;
        toast.classList.add('show');
        setTimeout(() => {
            toast.classList.remove('show');
        }, 3200);
    };

    // 9. Quick Add to Cart button handlers
    const addToCartBtns = document.querySelectorAll('.btn-add-to-cart, .btn-add-circle');
    addToCartBtns.forEach(btn => {
        btn.addEventListener('click', function (e) {
            e.preventDefault();
            e.stopPropagation();
            const name = this.getAttribute('data-product-name') || 'Item';
            showToast(name + ' added to your cart!');
            // Update badge count
            const badge = document.querySelector('.cart-badge-count');
            if (badge) {
                let cnt = parseInt(badge.textContent.trim(), 10) || 0;
                badge.textContent = cnt + 1;
            }
        });
    });
});
