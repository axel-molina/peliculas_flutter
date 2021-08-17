import 'package:flutter/material.dart';
import 'package:peliculas/screens/screens.dart'; //en esta ruta estan todas las screens que tendra la app

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final primary = const Color(0xff915dff);
  final secondary = const Color(0xff151620);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita la marca debug
      title: 'Películas',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'details': (_) => const DetailsScreen(),
      },
      theme: ThemeData.light().copyWith(
        //modifica todas las appbar de la aplicacion con el mismo color
        appBarTheme: AppBarTheme(color: secondary),
      ),
    );
  }
}
