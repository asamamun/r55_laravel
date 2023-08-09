class Cart {
    constructor() {
      // localStorage.removeItem('cartItems');
      // Get the cart items from local storage, if any
      this.items = JSON.parse(localStorage.getItem('cartItems')) || [];
    }
  
    // Add an item to the cart
/*     addItem(item) {
      this.items.push(item);
      this.updateStorage();
    } */
    addItem(item) {
      const existingItem = this.items.find((i) => i.id === item.id);
  
      if (existingItem) {
        // If the item already exists in the cart, increment its quantity
        existingItem.quantity += 1;
      } else {
        // If the item doesn't exist in the cart, add it as a new item
        item.quantity = 1; // Add a 'quantity' property to the item
        this.items.push(item);
      }
  
      this.updateStorage();
    }
  
    // Remove an item from the cart
    removeItem(itemid) {
      this.items = this.items.filter(i => i.id!=itemid);
      this.updateStorage();    
    }
  
    // Update the items in local storage
    updateStorage() {
      localStorage.setItem('cartItems', JSON.stringify(this.items));
    }
  
    // Get the total price of all items in the cart
    getTotalPrice() {
      return this.items.reduce((total, item) => total + item.price*item.quantity, 0);
    }
    totalItems(){
        return this.items.length;
    }
    emptyCart(){
      this.items = [];
      localStorage.removeItem('cartItems');
    }
  }
  