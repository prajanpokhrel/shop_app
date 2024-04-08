import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/cart_provider.dart';
// import 'package:shop_app/global_variables.dart';
import 'package:shop_app/pages/home.dart';
// import 'package:shop_app/home.dart';
// import 'package:shop_app/product_detaila_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: "Shop App",
        theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              prefixIconColor: Color.fromARGB(253, 223, 209, 11)),
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(253, 223, 209, 11),
          ),
          textTheme: TextTheme(
            titleLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
