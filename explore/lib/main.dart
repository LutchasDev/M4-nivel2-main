import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title Section',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Easy Traveling'),
        ),
        body: Column(
          children: [
            Image.asset(
              'imagens/licensed-image.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            buildTitleSection(),
            buildButtonSection(context),
            buildTextSection(),
            // Outros elementos do corpo do aplicativo podem ser adicionados aqui.
          ],
        ),
      ),
    );
  }

  Widget buildTitleSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Salar de Uyuni',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Andes, Bolivia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('69'),
        ],
      ),
    );
  }

  Widget buildButtonSection(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
  }

  Widget buildTextSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Salar de Uyuni (ou Salar de Tunupa) é o maior e mais alto deserto de sal do mundo, com 10 582 quilômetros quadrados e a 3 656 metros acima do nível médio do mar. Ele está localizado nos departamentos de Potosí e Oruro, no sudoeste da Bolívia, perto da borda da Cordilheira dos Andes. O salar é também o único ponto natural brilhante que pode ser visto do espaço. Ele serviu de guia para os astronautas da Apollo 11, que chegaram à lua em 1969. Quando os astronautas viram a planície branca pela primeira vez, chegaram a pensar que fosse uma geleira.',
        softWrap: true,
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
