import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? inputType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.inputType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      keyboardType: inputType,
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        //se consigue el valor
        formValues[formProperty] = value;
      },
      validator: (value) {
        //validacion de lo que ingresado
        if (value == null) return 'este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 caracteres',
        prefixIcon: const Icon(Icons.verified_user_outlined), //icono al inicio
        suffixIcon:
            suffixIcon == null ? null : Icon(suffixIcon), //icono al final,
        icon: icon == null
            ? null
            : Icon(icon), //corre la linea para poner el icono
      ),
    );
  }
}
