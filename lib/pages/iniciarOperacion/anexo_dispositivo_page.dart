import 'package:flutter/material.dart';



class AnexoDispositivoPage extends StatelessWidget {
  const AnexoDispositivoPage({super.key});

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
              const Row(
                children: [
                  Text('Nombre Buzo: '),
                  Text('Ernesto Roca Mella')
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Codigo Dispositivo: JB6BPNG7'),
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
          SizedBox(width: 30,),
          ElevatedButton(onPressed: () {
              print('por hacer');
              Navigator.pushNamed(context, 'Resumen');
            }, 
            child: const Text('Siguiente')
          )
        ],
      ),
    );
  }
}