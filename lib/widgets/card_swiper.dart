import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =
        MediaQuery.of(context).size; // calcula el tamaño de la pantalla

    return SizedBox(
      width:
          double.infinity, // abarca el ancho total disponible del dispositivo
      height: size.height * 0.5,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        itemBuilder: (_, int index) {
          //funcion para construir el widget, el _ es por si no se usa el buildcontext
          return GestureDetector(
            // permite el ontap
            onTap: () => Navigator.pushNamed(context, 'details',
                arguments: 'movie-instance'),
            child: ClipRRect(
              // permite el border radius
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                // animacion de entrada
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
      // margin: const EdgeInsets.all(18),
    );
  }
}
