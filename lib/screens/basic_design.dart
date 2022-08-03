import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [Image(image: AssetImage('assets/river.jpg')), Title()],
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
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Estadio Antonio Vespucio Liberti',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Juntos somos mas grandes',
                style: TextStyle(color: Colors.black54),
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
