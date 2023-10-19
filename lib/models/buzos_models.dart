import 'dart:convert';

class Buzos {
    String dispositivo;
    String nombre;
    String profundidad;

    Buzos({
        required this.dispositivo,
        required this.nombre,
        required this.profundidad,
    });

    factory Buzos.fromRawJson(String str) => Buzos.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Buzos.fromJson(Map<String, dynamic> json) => Buzos(
        dispositivo: json["dispositivo"],
        nombre: json["nombre"],
        profundidad: json["profundidad"],
    );

    Map<String, dynamic> toJson() => {
        "dispositivo": dispositivo,
        "nombre": nombre,
        "profundidad": profundidad,
    };
}
