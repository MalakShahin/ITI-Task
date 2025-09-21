class Product {
  int _id;
  String _name;
  double _price;

  Product(this._id, this._name, this._price) {
    if (_price <= 0) {
      throw ArgumentError('Price must be greater than zero.');
    }
  }

  int get id => _id;
  String get name => _name;
  double get price => _price;

  set price(double value) {
    if (value > 0) {
      _price = value;
    } else {
      print('Price must be greater than zero.');
    }
  }

  set name(String value) {
    _name = value;
  }
}

class Cart {
  List<Product> _products = [];

  void addProduct(Product product) {
    _products.add(product);
  }

  void removeProduct(Product product) {
    _products.remove(product);
  }

  void showCart() {
    if (_products.isEmpty) {
      print('Cart is empty.');
      return;
    }
    double total = 0;
    print('Cart contents:');
    for (var product in _products) {
      print(' - ${product.name}: \$${product.price}');
      total += product.price;
    }
    print('Total price: \$${total}');
  }
}

void main() {
  var p1 = Product(1, 'Laptop', 1200);
  var p2 = Product(2, 'Smartphone', 800);
  var p3 = Product(3, 'Headphones', 150);

  var cart = Cart();
  cart.addProduct(p1);
  cart.addProduct(p3);

  cart.showCart();
}