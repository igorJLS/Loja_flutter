import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData {
  late String id;
  late String category;

  late String title;
  late String description;
  late double price;

  late List images;
  late List sizes;

  ProductData.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    title = snapshot.data["title"];
    description = snapshot.data["Descriçao"];
    price = snapshot.data["Preço"];
    images = snapshot.data["images"];
    sizes = snapshot.data["sizes"];
  }
}
