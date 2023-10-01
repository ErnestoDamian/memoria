import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 90,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'seleccionbuzos');
                    // TODO: imprimir valores del formulario
                  },
                  child: const Center(child: Text('Iniciar Operacion', textAlign: TextAlign.center, style: TextStyle(fontSize:25),),),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 150,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {
                    print('hola');
                    // TODO: imprimir valores del formulario
                  },
                  child: const Center(child: Text('Reanudar Operacion', textAlign: TextAlign.center,style: TextStyle(fontSize:25),),),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 150,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Operaciones');
                    // TODO: imprimir valores del formulario
                  },
                  child: const Center(child: Text('Finalizar Operacion',textAlign: TextAlign.center, style: TextStyle(fontSize:25,),),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
