import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lojaflutter/tiles/category_tale.dart';

class ProductsTab extends StatelessWidget {
  const ProductsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: Firestore.instance
          .collection("products")
          .getDocuments(), // Pegando a categoria Product do meu Firebase
      builder: (context, snapshot) {
        if (!snapshot.hasData)
          return Center(
            child:
                CircularProgressIndicator(), // Retornando Circulo de loading caso nao tenha carregado ainda
          );
        else {
          var dividerTiles = ListTile.divideTiles(
                  tiles: snapshot.data!.documents.map((doc) {
                    return CategoryTile(doc);
                  }).toList(),
                  color: Colors.grey[500])
              .toList();

          return ListView(
            children: dividerTiles,
          );
        }
      },
    );
  }
}
