import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola Furro asqueroso',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 8),
        _ImageBubble(),
        const SizedBox(height: 10),
        // Todo: imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://i.pinimg.com/originals/7c/55/f0/7c55f0f6fba17f99c899bd3909ce5441.gif', // Aquí necesitas proporcionar la URL de la imagen
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        //width: 100, // Definir un ancho deseado para la imagen
        //height: 100, // Definir un alto deseado para la imagen
        //fit: BoxFit.cover, // Ajuste de la imagen dentro del contenedor
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('mi amor manda un mensaje'),
          );
        },
      ),
    );
  }
}
