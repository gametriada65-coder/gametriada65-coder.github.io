<!DOCTYPE html>
<html lang="el">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>BookStore E-Shop</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: Arial, sans-serif;
      background: #f8f5f0;
      color: #2d2a26;
    }

    header {
      background: linear-gradient(135deg, #5b3a29, #8b5e3c);
      color: white;
      padding: 28px 20px;
      text-align: center;
    }

    header h1 {
      font-size: 2.3rem;
      margin-bottom: 8px;
    }

    nav {
      background: #3e2723;
      display: flex;
      justify-content: center;
      gap: 20px;
      padding: 14px;
      flex-wrap: wrap;
      position: sticky;
      top: 0;
      z-index: 10;
    }

    nav a {
      color: white;
      text-decoration: none;
      font-weight: bold;
    }

    nav a:hover {
      color: #ffd7a8;
    }

    .hero {
      text-align: center;
      padding: 55px 20px;
      background: #fffaf3;
    }

    .hero h2 {
      font-size: 2rem;
      margin-bottom: 12px;
      color: #6d4c41;
    }

    .hero p {
      max-width: 760px;
      margin: 0 auto 20px;
      line-height: 1.7;
    }

    .hero button {
      background: #8b5e3c;
      color: white;
      border: none;
      padding: 12px 22px;
      border-radius: 10px;
      cursor: pointer;
      font-size: 1rem;
      font-weight: bold;
    }

    .hero button:hover {
      background: #6d4c41;
    }

    .container {
      max-width: 1200px;
      margin: auto;
      padding: 30px 20px;
    }

    .section-title {
      font-size: 1.8rem;
      margin-bottom: 20px;
      color: #5b3a29;
    }

    .books {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 24px;
    }

    .book-card {
      background: white;
      border-radius: 16px;
      overflow: hidden;
      box-shadow: 0 8px 20px rgba(0,0,0,0.08);
      transition: transform 0.2s ease;
    }

    .book-card:hover {
      transform: translateY(-4px);
    }

    .book-cover {
      height: 240px;
      background: linear-gradient(135deg, #e7d7c9, #d7b899);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 4rem;
    }

    .book-info {
      padding: 18px;
    }

    .book-info h3 {
      margin-bottom: 8px;
      font-size: 1.15rem;
    }

    .author {
      font-size: 0.95rem;
      color: #6b5b53;
      margin-bottom: 10px;
    }

    .book-info p {
      font-size: 0.95rem;
      margin-bottom: 10px;
      color: #4e443d;
      line-height: 1.5;
    }

    .price {
      font-size: 1.2rem;
      font-weight: bold;
      color: #8b5e3c;
      margin-bottom: 12px;
    }

    .book-info button,
    .checkout button,
    .contact-form button {
      width: 100%;
      padding: 12px;
      background: #8b5e3c;
      color: white;
      border: none;
      border-radius: 10px;
      font-weight: bold;
      cursor: pointer;
    }

    .book-info button:hover,
    .checkout button:hover,
    .contact-form button:hover {
      background: #6d4c41;
    }

    .cart, .about, .contact {
      margin-top: 40px;
      background: white;
      border-radius: 16px;
      padding: 24px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.08);
    }

    .cart h3 {
      margin-bottom: 15px;
      font-size: 1.5rem;
    }

    .cart ul {
      list-style: none;
      margin-bottom: 15px;
    }

    .cart li {
      padding: 10px 0;
      border-bottom: 1px solid #eee0d1;
      display: flex;
      justify-content: space-between;
      gap: 12px;
    }

    .cart-total {
      font-size: 1.2rem;
      font-weight: bold;
      margin-bottom: 15px;
    }

    .contact-form {
      display: grid;
      gap: 14px;
      margin-top: 20px;
    }

    .contact-form input,
    .contact-form textarea {
      padding: 12px;
      border: 1px solid #d7c2af;
      border-radius: 10px;
      font-size: 1rem;
    }

    .contact-form textarea {
      min-height: 120px;
      resize: vertical;
    }

    footer {
      margin-top: 40px;
      background: #3e2723;
      color: white;
      text-align: center;
      padding: 20px;
    }

    @media (max-width: 600px) {
      header h1 {
        font-size: 1.8rem;
      }

      .hero h2 {
        font-size: 1.5rem;
      }
    }
  </style>
</head>
<body>
  <header>
    <h1>BookStore</h1>
    <p>Ηλεκτρονικό κατάστημα βιβλίων με καλάθι αγορών</p>
  </header>

  <nav>
    <a href="#books">Βιβλία</a>
    <a href="#cart">Καλάθι</a>
    <a href="#about">Σχετικά</a>
    <a href="#contact">Επικοινωνία</a>
  </nav>

  <section class="hero">
    <h2>Ανακάλυψε το επόμενο αγαπημένο σου βιβλίο</h2>
    <p>Ένα απλό και όμορφο e-shop για βιβλία. Μπορείς να αλλάξεις τίτλους, συγγραφείς, τιμές και περιγραφές για να το προσαρμόσεις όπως θέλεις.</p>
    <button onclick="document.getElementById('books').scrollIntoView({ behavior: 'smooth' })">Δες βιβλία</button>
  </section>

  <main class="container">
    <section id="books">
      <h2 class="section-title">Διαθέσιμα Βιβλία</h2>
      <div class="books">
        <div class="book-card">
          <div class="book-cover">📘</div>
          <div class="book-info">
            <h3>Ο Μικρός Πρίγκιπας</h3>
            <div class="author">Antoine de Saint-Exupéry</div>
            <p>Ένα διαχρονικό λογοτεχνικό έργο γεμάτο νόημα, φαντασία και συναίσθημα.</p>
            <div class="price">€12.90</div>
            <button onclick="addToCart('Ο Μικρός Πρίγκιπας', 12.90)">Προσθήκη στο καλάθι</button>
          </div>
        </div>

        <div class="book-card">
          <div class="book-cover">📕</div>
          <div class="book-info">
            <h3>1984</h3>
            <div class="author">George Orwell</div>
            <p>Ένα κλασικό δυστοπικό μυθιστόρημα για την εξουσία, την επιτήρηση και την ελευθερία.</p>
            <div class="price">€14.50</div>
            <button onclick="addToCart('1984', 14.50)">Προσθήκη στο καλάθι</button>
          </div>
        </div>

        <div class="book-card">
          <div class="book-cover">📗</div>
          <div class="book-info">
            <h3>Το Όνομα του Ρόδου</h3>
            <div class="author">Umberto Eco</div>
            <p>Μυστήριο, φιλοσοφία και ιστορική ατμόσφαιρα σε ένα μοναδικό μυθιστόρημα.</p>
            <div class="price">€16.80</div>
            <button onclick="addToCart('Το Όνομα του Ρόδου', 16.80)">Προσθήκη στο καλάθι</button>
          </div>
        </div>

        <div class="book-card">
          <div class="book-cover">📙</div>
          <div class="book-info">
            <h3>Η Αλχημιστής</h3>
            <div class="author">Paulo Coelho</div>
            <p>Ένα εμπνευσμένο βιβλίο για τα όνειρα, το πεπρωμένο και το προσωπικό ταξίδι.</p>
            <div class="price">€11.90</div>
            <button onclick="addToCart('Η Αλχημιστής', 11.90)">Προσθήκη στο καλάθι</button>
          </div>
        </div>
      </div>
    </section>

    <section id="cart" class="cart">
      <h3>Καλάθι Αγορών</h3>
      <ul id="cartItems">
        <li>Το καλάθι είναι άδειο</li>
      </ul>
      <div class="cart-total">Σύνολο: €<span id="cartTotal">0.00</span></div>
      <div class="checkout">
        <button onclick="checkout()">Ολοκλήρωση Παραγγελίας</button>
      </div>
      <p id="checkoutMessage" style="margin-top: 12px; font-weight: bold;"></p>
    </section>

    <section id="about" class="about">
      <h2 class="section-title">Σχετικά με το BookStore</h2>
      <p>
        Αυτό είναι ένα demo e-shop για βιβλία. Μπορείς να το επεκτείνεις με κατηγορίες βιβλίων,
        αναζήτηση, πραγματικές εικόνες εξωφύλλων, login χρηστών και σύστημα πληρωμών.
      </p>
    </section>

    <section id="contact" class="contact">
      <h2 class="section-title">Επικοινωνία</h2>
      <form class="contact-form" id="contactForm">
        <input type="text" id="name" placeholder="Το όνομά σου" required>
        <input type="email" id="email" placeholder="Το email σου" required>
        <textarea id="message" placeholder="Γράψε το μήνυμά σου" required></textarea>
        <button type="submit">Αποστολή</button>
      </form>
      <p id="formMessage" style="margin-top: 12px; font-weight: bold;"></p>
    </section>
  </main>

  <footer>
    <p>© 2026 BookStore | Demo ηλεκτρονικό κατάστημα βιβλίων</p>
  </footer>

  <script>
    const cart = [];

    function addToCart(bookName, price) {
      cart.push({ bookName, price });
      renderCart();
    }

    function renderCart() {
      const cartItems = document.getElementById('cartItems');
      const cartTotal = document.getElementById('cartTotal');

      cartItems.innerHTML = '';

      if (cart.length === 0) {
        cartItems.innerHTML = '<li>Το καλάθι είναι άδειο</li>';
        cartTotal.textContent = '0.00';
        return;
      }

      let total = 0;

      cart.forEach((item, index) => {
        total += item.price;
        const li = document.createElement('li');
        li.innerHTML = `<span>${index + 1}. ${item.bookName}</span><strong>€${item.price.toFixed(2)}</strong>`;
        cartItems.appendChild(li);
      });

      cartTotal.textContent = total.toFixed(2);
    }

    function checkout() {
      const checkoutMessage = document.getElementById('checkoutMessage');
      if (cart.length === 0) {
        checkoutMessage.textContent = 'Το καλάθι σου είναι άδειο.';
        return;
      }

      checkoutMessage.textContent = 'Η παραγγελία σου καταχωρήθηκε επιτυχώς!';
      cart.length = 0;
      renderCart();
    }

    document.getElementById('contactForm').addEventListener('submit', function(e) {
      e.preventDefault();
      const name = document.getElementById('name').value.trim();
      document.getElementById('formMessage').textContent = `Ευχαριστούμε, ${name}! Θα επικοινωνήσουμε σύντομα μαζί σου.`;
      this.reset();
    });
  </script>
</body>
</html>
