import 'package:ejercicio2/producto_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(14.0),
      child: ListView(children: const [
        ProductoItem(
            urlImagen:
                'https://estaticos-cdn.prensaiberica.es/clip/5916ba0b-5389-46ce-ae68-9b1ee30d8c1e_16-9-discover-aspect-ratio_default_0_x585y1103.jpg',
            nombre: 'Kebab Reyes',
            direccion: 'Calle Reyes',
            valoracionMedia: 4,
            precioMedio: 15.5),
        ProductoItem(
            urlImagen:
                'https://estaticos-cdn.prensaiberica.es/clip/5916ba0b-5389-46ce-ae68-9b1ee30d8c1e_16-9-discover-aspect-ratio_default_0_x585y1103.jpg',
            nombre: 'Panaderia Manoli',
            direccion: 'Calle Virgen',
            valoracionMedia: 3,
            precioMedio: 12.1),
        ProductoItem(
            urlImagen:
                'https://estaticos-cdn.prensaiberica.es/clip/5916ba0b-5389-46ce-ae68-9b1ee30d8c1e_16-9-discover-aspect-ratio_default_0_x585y1103.jpg',
            nombre: 'Restaurante Toscani',
            direccion: 'Calle Italia',
            valoracionMedia: 5,
            precioMedio: 22.7),
        ProductoItem(
            urlImagen:
                'https://estaticos-cdn.prensaiberica.es/clip/5916ba0b-5389-46ce-ae68-9b1ee30d8c1e_16-9-discover-aspect-ratio_default_0_x585y1103.jpg',
            nombre: 'Bodega Fernando',
            direccion: 'Calle fernando',
            valoracionMedia: 4,
            precioMedio: 27.5),
        ProductoItem(
            urlImagen:
                'https://estaticos-cdn.prensaiberica.es/clip/5916ba0b-5389-46ce-ae68-9b1ee30d8c1e_16-9-discover-aspect-ratio_default_0_x585y1103.jpg',
            nombre: 'Taberna Pedro',
            direccion: 'Calle Pedro',
            valoracionMedia: 2,
            precioMedio: 9.5),
        ProductoItem(
            urlImagen:
                'https://estaticos-cdn.prensaiberica.es/clip/5916ba0b-5389-46ce-ae68-9b1ee30d8c1e_16-9-discover-aspect-ratio_default_0_x585y1103.jpg',
            nombre: 'Restaurante Fran',
            direccion: 'Calle Fran',
            valoracionMedia: 3,
            precioMedio: 11.7),
        ProductoItem(
            urlImagen:
                'https://estaticos-cdn.prensaiberica.es/clip/5916ba0b-5389-46ce-ae68-9b1ee30d8c1e_16-9-discover-aspect-ratio_default_0_x585y1103.jpg',
            nombre: 'Taberna Pepe',
            direccion: 'Calle Pedro',
            valoracionMedia: 5,
            precioMedio: 22.5),
      ]),
    ));
  }
}
