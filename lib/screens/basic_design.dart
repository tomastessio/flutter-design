import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // imagen
          const Image(image: AssetImage('assets/river.jpg')),

          // titulo
          const Title(),

          //boton
          const ButtonSection(),

          //descripcion
          Container(
            padding: const EdgeInsets.only(top: 10),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
                'Ex in elit elit consequat. Qui amet elit sint nostrud cillum. Est irure velit eiusmod velit officia id ea sit. Anim ex aliquip ad Lorem consectetur excepteur sit ipsum aliquip quis. In amet cupidatat sit aliqua labore quis duis culpa. Consequat sit reprehenderit sunt proident incididunt culpa mollit exercitation adipisicing cupidatat magna et. Et laborum deserunt incididunt aliquip consectetur velit officia ullamco consequat aliqua commodo duis mollit.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Estadio Antonio Vespucio Liberti',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Juntos somos mas grandes',
                style: TextStyle(color: Colors.black54, fontSize: 16),
              )
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star_outlined, color: Colors.yellow),
          const Text('5.0'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomButton(
              icon: Icons.call,
              texto: 'Reservar',
            ),
            CustomButton(
              icon: Icons.location_on,
              texto: 'Como llegar',
            ),
            CustomButton(
              icon: Icons.share,
              texto: 'Compartir',
            )
          ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String texto;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        color: Colors.blue,
        size: 30,
      ),
      Text(
        texto,
        style: const TextStyle(color: Colors.blue),
      )
    ]);
  }
}
