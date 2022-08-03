// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

import 'package:CATALOG/models/cart.dart';
import 'package:CATALOG/models/catalog.dart';

class MyStore extends VxStore {
  CatalogModel? catalog;
  CartModel? cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart?.catalog = catalog!;
  }
}
