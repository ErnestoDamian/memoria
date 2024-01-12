import 'package:flutter/material.dart';
import 'package:memoria/models/models.dart';

class ResumenOperacionesPages extends StatefulWidget {
  const ResumenOperacionesPages({super.key});

  @override
  State<ResumenOperacionesPages> createState() => _ResumenOperacionesPagesState();
}

class _ResumenOperacionesPagesState extends State<ResumenOperacionesPages> {
  @override
  Widget build(BuildContext context) {
    final List<CardDataResumen> cards = [
      CardDataResumen(name: "Esmeralda Ana", code: "JB6BPNG7", icon: Icons.person),
      CardDataResumen(name: "Matías Torres", code: "JB6BPNG7", icon: Icons.person),
      CardDataResumen(name: "Isabella Vargas", code: "JB6BPNG7", icon: Icons.person),
      CardDataResumen(name: "Nicolás Herrera", code: "JB6BPNG7", icon: Icons.person),
      // Agrega más datos de tarjetas según necesites
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumen Operacion'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 5.0,),
          const Row(
            children: [
              SizedBox(width: 100.0,),
              Text("Hora Inicio: "),
              SizedBox(width: 100.0,),
              Text("Hora Termino: "),
            ],
          ),
          const SizedBox(height: 5.0,),
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
              child: const Text('Aceptar'))
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
      margin: const EdgeInsets.all(5.0),
      child: ListTile(
        leading: Icon(cardData.icon),
        title: Text(cardData.name),
        subtitle: Text("Codigo: ${cardData.code}"),
      ),
    );
  }
}
