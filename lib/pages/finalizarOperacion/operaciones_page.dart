import 'package:flutter/material.dart';

class CardData {
  final String name;
  final String hora;
  final IconData icon;

  CardData({
    required this.name,
    required this.hora,
    required this.icon,
  });
}

class OperacionesPage extends StatefulWidget {
  const OperacionesPage({super.key});

  @override
  State<OperacionesPage> createState() => _ResumenPageState();
}

class _ResumenPageState extends State<OperacionesPage> {
  @override
  Widget build(BuildContext context) {
    final List<CardData> cards = [
    CardData(name: "Operacion 1", hora: "12:35", icon: Icons.scuba_diving),
    CardData(name: "Tarjeta 2", hora: "5678", icon: Icons.person),
    // Agrega más datos de tarjetas según necesites
  ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Operaciones'),
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
        subtitle: Text("Código: ${cardData.hora}"),
      ),
    );
  }
}