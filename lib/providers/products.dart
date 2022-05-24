import 'package:flutter/material.dart';
import 'package:shop_app/providers/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://phshirt.com/wp-content/uploads/2021/05/Red-T-Shirt.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers',
      price: 59.99,
      imageUrl:
          'https://dynamic.zacdn.com/BV06dtK-ryhwJYUhiHXNYBFGFPU=/fit-in/346x500/filters:quality(95):fill(ffffff)/https://static-ph.zacdn.com/p/well-suited-8998-2501001-1.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter',
      price: 19.99,
      imageUrl:
          'https://media.istockphoto.com/photos/scarf-picture-id174929654?k=20&m=174929654&s=612x612&w=0&h=m7Za7eAbZilqDUFc9bIB1_pr9GERJiYm_C6zeqOqe0E=',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want',
      price: 49.99,
      imageUrl:
          'https://www.tescomaonline.com/media/images/catalog/item/zoom/pr7_602020__1.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Cowboy Hat',
      description: 'a wide-brimmed hat, usually of felt, with a soft, high crown, traditionally worn by American cowboys.',
      price: 21.99,
      imageUrl:
      'https://thumbs.dreamstime.com/b/cowboy-hat-11233520.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Belt',
      description: 'Leather and faux-leather styles in black and brown make buckling up the polish every outfit benefits from jeans, cargo pants and tailored trousers',
      price: 39.99,
      imageUrl:
      'https://www.montblanc.com/variants/images/19971654706766190/A/w747.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((productItems) => productItems.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
