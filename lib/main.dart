import 'package:flutter/material.dart';
import 'package:product3/providers/productsProvider.dart';
import 'package:product3/screens/allProducts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>ProductsProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: AllProducts(),
      ),
    );
  }
}