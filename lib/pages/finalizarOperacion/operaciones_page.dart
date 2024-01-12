import 'package:flutter/material.dart';
import 'package:memoria/models/models.dart';

class OperacionesPage extends StatefulWidget {
  const OperacionesPage({super.key});

  @override
  State<OperacionesPage> createState() => _ResumenPageState();
}

class _ResumenPageState extends State<OperacionesPage> {
  @override
  Widget build(BuildContext context) {
    final List<CardDataOperaciones> cards = [
      CardDataOperaciones(name: "Operacion 1", hora: "12:35", icon: Icons.scuba_diving),
      CardDataOperaciones(name: "Operacion 2", hora: "05:00", icon: Icons.scuba_diving),
      CardDataOperaciones(name: "Operacion 3", hora: "19:00", icon: Icons.scuba_diving),
      CardDataOperaciones(name: "Operacion 4", hora: "18:00", icon: Icons.scuba_diving),
      CardDataOperaciones(name: "Operacion 5", hora: "13:00", icon: Icons.scuba_diving),
      // Agrega más datos de tarjetas según necesites
    ];
    return Column(
      children: [
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Listado de Operaciones'),
            ),
            body: ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) {
                return CardWidget(cardData: cards[index]);
              },
            ),
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
    );
  }
}

class CardWidget extends StatelessWidget {
  final CardDataOperaciones cardData;

  CardWidget({required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      child: ListTile(
        leading: Icon(cardData.icon),
        title: Text(cardData.name),
        subtitle: Text("Tiempo: ${cardData.hora}"),
        onTap: () {
          Navigator.pushNamed(context, 'ResumenOperaciones');
        },
      ),
    );
  }
}
