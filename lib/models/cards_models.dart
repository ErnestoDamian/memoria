import 'package:flutter/material.dart';


class CardDataResumen {
  final String name;
  final String code;
  final IconData icon;

  CardDataResumen({
    required this.name,
    required this.code,
    required this.icon,
  });
}

class CardDataOperaciones {
  final String name;
  final String hora;
  final IconData icon;

  CardDataOperaciones({
    required this.name,
    required this.hora,
    required this.icon,
  });
}
