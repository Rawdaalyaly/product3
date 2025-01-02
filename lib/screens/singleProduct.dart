import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/productsProvider.dart';

class Singleproduct extends StatelessWidget {
var index ;
Singleproduct({required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ProductsProvider>(builder: (context , x , child){
        var data = x.productsModel?.products;
        return Container(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Image.network(data?[index]["image"],width: 200,),
                    SizedBox(height: 25,),
                    Text(data?[index]["name"],style: TextStyle(fontSize: 15 , color: CupertinoColors.white)),
                    SizedBox(height: 25,),
                    Text(data![index]["price"].toString(),style: TextStyle(fontSize: 15 , color: CupertinoColors.white)),
                    SizedBox(height: 25,),
                    Card(
                      child: Text(data?[index]["description"] , style: TextStyle(fontSize: 15 , color: CupertinoColors.black),),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
