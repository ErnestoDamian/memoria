import 'package:flutter/material.dart';

import 'package:memoria/pages/pages.dart';

class AppRoutes {
  static const initialRoute = 'login';

  static Map<String, Widget Function(BuildContext)> routes = {
    'login': (BuildContext context) => const LoginPage(),
    'menuprincipal': (BuildContext context) => const MenuPage(),
    'seleccionbuzos': (BuildContext context) => const SeleccionBuzos(),
    'salidabuzos': (BuildContext context) => const SalidaBuzos(),
    'AnexoDispositivo': (BuildContext context) => const AnexoDispositivoPage(),
    //'Resumen': (BuildContext context) => const ResumenPage(),
    'Operaciones': (BuildContext context) => const OperacionesPage(),
  };
}
