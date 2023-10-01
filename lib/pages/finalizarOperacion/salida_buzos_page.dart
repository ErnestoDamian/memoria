import 'package:flutter/material.dart';

class SalidaBuzos extends StatelessWidget {
  const SalidaBuzos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salida de Buzos'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text('Dispositivo: '),
                  const Text('JB6BPNG7'),
                  SizedBox(width: 10,),
                  SizedBox(
                    height: 25,
                    child: ElevatedButton(onPressed: () {
                        print('por hacer');
                      }, 
                      child: const Text('Sincronizar')
                    ),
                  )
                ],
              ),
            ],
          ),
        ]
      )
    );
  }
}