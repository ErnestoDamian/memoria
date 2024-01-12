import 'package:flutter/material.dart';

class SeleccionBuzos extends StatefulWidget {
  const SeleccionBuzos({super.key});

  @override
  State<SeleccionBuzos> createState() => _SeleccionBuzosState();
}

class _SeleccionBuzosState extends State<SeleccionBuzos> {
  final List<bool> _selections1 = List.generate(4, (index) => false); /*Poner el maximo de personas que se va a utilizar*/
  final List<bool> _selections2 = List.generate(4, (index) => false); /*Poner el maximo de personas que se va a utilizar*/
  final List<bool> _selections3 = List.generate(4, (index) => false); /*Poner el maximo de personas que se va a utilizar*/
  final List<bool> _selections4 = List.generate(4, (index) => false); /*Poner el maximo de personas que se va a utilizar*/
  final List<String> _nombresLista1 = ["Esmeralda Ana","Alejandro Pérez","Valentina López","Sebastián Martínez"]; /*Poner el maximo de personas que se va a utilizar*/
  final List<String> _nombresLista2 = ["Camila González","Matías Torres","Isabella Vargas","Santiago Ramírez"]; /*Poner el maximo de personas que se va a utilizar*/
  final List<String> _nombresLista3 = ["Valeria Castro","Diego Jiménez","Martina Silva","Nicolás Herrera"]; /*Poner el maximo de personas que se va a utilizar*/
  final List<String> _nombresLista4 = ["Isidora Ríos","Juan Pablo Sánchez","Antonia Ortega","Andrés Flores"]; /*Poner el maximo de personas que se va a utilizar*/
  /** 
   * TODO: dividir la lista cada 4 personas 
  */ 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccion de Buzos'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /*for (var i = 0; i < 4;i++)*/
                ToggleButtons(
                  isSelected: _selections1,
                  onPressed: (index) {
                    setState(() {
                      _selections1[index] = !_selections1[index];
                      print(_selections1);
                    });
                  },
                  children: [
                    for (var i = 0; i < 4;i++) 
                      SizedBox(
                        width: 110.0,
                        child:Column(
                          children: [
                            const Icon(Icons.person,size: 80,),
                            Text(_nombresLista1[i])
                          ],
                        ),
                      ),
          
                  ],
                ),
                ToggleButtons(
                  isSelected: _selections2,
                  onPressed: (index) {
                    setState(() {
                      _selections2[index] = !_selections2[index];
                      print(_selections2);
                    });
                  },
                  children: [
                    for (var i = 0; i < 4;i++) 
                      SizedBox(
                        width: 110.0,
                        child:Column(
                          children: [
                            const Icon(Icons.person,size: 80,),
                            Text(_nombresLista2[i])
                          ],
                        ),
                      ),
          
                  ],
                ),
                ToggleButtons(
                  isSelected: _selections3,
                  onPressed: (index) {
                    setState(() {
                      _selections3[index] = !_selections3[index];
                      print(_selections3);
                    });
                  },
                  children: [
                    for (var i = 0; i < 4;i++)
                      SizedBox(
                        width: 110.0,
                        child: Column(
                          children: [
                            const Icon(
                              Icons.person,
                              size: 80,
                            ),
                            Text(_nombresLista3[i])
                          ],
                        ),
                      ),
          
                  ],
                ),
                ToggleButtons(
                  isSelected: _selections4,
                  onPressed: (index) {
                    setState(() {
                      _selections4[index] = !_selections4[index];
                      print(_selections4);
                    });
                  },
                  children: [
                    for (var i = 0; i < 4;i++) 
                      SizedBox(
                        width: 110.0,
                        child: Column(
                          children: [
                            const Icon(
                              Icons.person,
                              size: 80,
                            ),
                            Text(_nombresLista4[i])
                          ],
                        ),
                      ),
          
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                print('por hacer');
                Navigator.pushNamed(context, 'AnexoDispositivo');
              },
              child: const Text('Aceptar')
          )
        ],
      ),
    );
  }
}
