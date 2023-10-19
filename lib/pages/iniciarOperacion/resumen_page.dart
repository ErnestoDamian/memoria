import 'package:flutter/material.dart';
import 'package:memoria/models/models.dart';

class ResumenPage extends StatefulWidget {
  const ResumenPage({super.key});

  @override
  State<ResumenPage> createState() => _ResumenPageState();
}

class _ResumenPageState extends State<ResumenPage> {
  @override
  Widget build(BuildContext context) {
    final List<CardDataResumen> cards = [
      CardDataResumen(
          name: "Sofía Rodríguez", code: "JB6BPNG7", icon: Icons.person),
      CardDataResumen(name: "Matías Torres", code: "5678", icon: Icons.person),
      CardDataResumen(
          name: "Isabella Vargas", code: "5678", icon: Icons.person),
      CardDataResumen(
          name: "Nicolás Herrera", code: "5678", icon: Icons.person),
      // Agrega más datos de tarjetas según necesites
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumen Operacion'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) {
                return _CardWidget(cardData: cards[index]);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('por hacer');
              //Elimina la ruta hasta la señalada, en este caso el menuprincipal
              Navigator.of(context).popUntil((route) {
                return route.settings.name == 'menuprincipal';
              });
            },
            child: const Text('Aceptar')
          )
        ],
      ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  final CardDataResumen cardData;

  _CardWidget({required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: ListTile(
        leading: Icon(cardData.icon),
        title: Text(cardData.name),
        subtitle: Text("Codigo: ${cardData.code}"),
      ),
    );
  }
}
