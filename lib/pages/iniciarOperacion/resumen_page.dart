import 'package:flutter/material.dart';

class CardData {
  final String name;
  final String code;
  final IconData icon;

  CardData({
    required this.name,
    required this.code,
    required this.icon,
  });
}

class ResumenPage extends StatefulWidget {
  const ResumenPage({super.key});

  @override
  State<ResumenPage> createState() => _ResumenPageState();
}

class _ResumenPageState extends State<ResumenPage> {
  @override
  Widget build(BuildContext context) {
    final List<CardData> cards = [
    CardData(name: "Ernesto Roca Mella", code: "JB6BPNG7", icon: Icons.person),
    CardData(name: "Tarjeta 2", code: "5678", icon: Icons.person),
    // Agrega más datos de tarjetas según necesites
  ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumen Operacion'),
      ),
      body: Column(
        children: [
          CardWidget(cardData: cards[0]),
          ElevatedButton(
                onPressed: () {
                  print('por hacer');
                  Navigator.popAndPushNamed(context, 'menuprincipal');
                },
                child: const Text('Aceptar')
            )
        ],
      )
      
      /*ListView.builder(
          itemCount: cards.length,
          itemBuilder: (context, index) {
            return CardWidget(cardData: cards[index]);
          },
        ),*/
    );
  }
}
class CardWidget extends StatelessWidget {
  final CardData cardData;

  CardWidget({required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: ListTile(
        leading: Icon(cardData.icon),
        title: Text(cardData.name),
        subtitle: Text("Código: ${cardData.code}"),
      ),
    );
  }
}