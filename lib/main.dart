import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/screens/screens.dart'; //en esta ruta estan todas las screens que tendra la app
import 'package:provider/provider.dart'; 

void main() => runApp(AppState()); //llamamos appstate para que se cree primero

class AppState extends StatelessWidget {
  // clase para inicializar la instacia de películas
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
          lazy: false, // desactiva el comportamiento por defecto de esperar a llamar la instancia cuando lo necesite (lo carga de una con la app)
        )
      ], // lista de providers (por ahora solo necesito uno)
      child: MyApp(), // luego se ejecuta el resto de la app
    );
  }
}

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
