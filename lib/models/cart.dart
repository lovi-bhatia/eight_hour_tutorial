import 'package:eight_hour_tutorial/models/catalog.dart';
import 'package:flutter/material.dart';

class CartModel {
  late CatalogModel _catalog;

  // collection of IDs, store ID of each item
  final List<int> _itemIds = [];

  // get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // get items in cart
  Iterable<Item> get items => _itemIds.map((id) => _catalog.getById(id));

  // get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
