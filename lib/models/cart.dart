import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;

  CatalogModel? _catalog;

  final List<int> _itemsId = [];

  CatalogModel get catalog => _catalog!;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items =>
      _itemsId.map((id) => _catalog!.getItemById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item
  void addItems(Item item) {
    _itemsId.add(item.id);
  }

  // Remove Item
  void removeItems(Item item) {
    _itemsId.remove(item.id);
  }
}
