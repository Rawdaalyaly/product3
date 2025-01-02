import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product3/screens/singleProduct.dart';
import 'package:provider/provider.dart';

import '../providers/productsProvider.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Products"),
        centerTitle: true,
      ),
      body: Container(
        child: Consumer<ProductsProvider>(builder: (context, x, child) {
          var products = x.productsModel?.products;
          if (products == null) {
            x.getProducts();
            return Center(child: CircularProgressIndicator());
          }
          else {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Singleproduct(index: index)));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(products[index]["image"], width: 75,),
                        SizedBox(height: 25,),
                        Text(products[index]["name"]),
                        SizedBox(height: 25,),
                        Text(products[index]["price"].toString()),
                      ],
                    ),
                  ),
                );
              },
              itemCount: products.length,
            );
          }
        }),
      ),
    );
  }
}
