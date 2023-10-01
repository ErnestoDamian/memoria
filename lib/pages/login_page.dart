import 'package:flutter/material.dart';
import 'package:memoria/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> formValue = {
      'first_name': 'Ernesto',
      'last_name': 'Roca',
      'email': 'ernesto.roca@mail.com',
      'password': 'latengoregrande',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Log in')),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Nombre', textAlign: TextAlign.left),
              const SizedBox(height: 25,),
              CustomInputField(
                formProperty: 'formProperty',
                formValues: formValue
              ),
              const SizedBox(height: 25,),
              const Text('Contraseña'),
              CustomInputField(
                formProperty: 'formProperty', 
                formValues: formValue
              ),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      /*FocusScope.of(context).requestFocus(FocusNode()); //para minimizar el teclado despues de apretar el boton
                    if(!myFormKey.currentState!.validate()){
                      return;
                    } */
                      print(formValue);
                      Navigator.pushNamed(context, 'menuprincipal');

                      // TODO: imprimir valores del formulario
                    },
                    child: const Center(child: Text('Ingresar')),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
