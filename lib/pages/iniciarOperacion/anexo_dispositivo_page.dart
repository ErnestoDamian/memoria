import 'package:flutter/material.dart';

class AnexoDispositivoPage extends StatefulWidget {
  AnexoDispositivoPage({super.key});

  @override
  State<AnexoDispositivoPage> createState() => _AnexoDispositivoPageState();
}

class _AnexoDispositivoPageState extends State<AnexoDispositivoPage> {
  final List<String> _nombresLista1 = [
    "Sofía Rodríguez",
    "Matías Torres",
    "Isabella Vargas",
    "Nicolás Herrera"
  ];

  var contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sincronizacion Dispositivo'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text('Nombre Buzo: '),
                  Text(_nombresLista1[contador])
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Codigo Dispositivo: JB6BPNG7'),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 25,
                    child: ElevatedButton(
                        onPressed: () {
                          print('por hacer');
                        },
                        child: const Text('Sincronizar')),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (contador >= _nombresLista1.length - 1) {
                    Navigator.pushNamed(context, 'Resumen');
                  }
                  if (contador < (_nombresLista1.length - 1)) {
                    contador = contador + 1;
                    print(contador);
                  }
                });
              },
              child: const Text('Siguiente'))
        ],
      ),
    );
  }
}
