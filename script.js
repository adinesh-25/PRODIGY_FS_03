fetch('http://localhost:8080/api/products')
  .then(response => response.json())
  .then(data => {
    const productList = document.getElementById('product-list');
    data.forEach(product => {
      const div = document.createElement('div');
      div.classList.add('product');
      div.innerHTML = `
        <img src="${product.imageUrl}" alt="${product.name}">
        <h3>${product.name}</h3>
        <p>${product.description}</p>
        <p>₹${product.price}</p>
      `;
      productList.appendChild(div);
    });
  })
  .catch(err => console.log(err));