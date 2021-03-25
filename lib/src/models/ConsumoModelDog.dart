

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());
@JsonSerializable()
class Welcome {
    Welcome({
        this.dogs,
    });

    List<Dog> dogs;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        dogs: List<Dog>.from(json["dogs"].map((x) => Dog.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "dogs": List<dynamic>.from(dogs.map((x) => x.toJson())),
    };
}

class Dog {
    Dog({
        this.porte,
        this.peso,
        this.gramas,
    });

    String porte;
    List<Grama> peso;
    List<Grama> gramas;

    factory Dog.fromJson(Map<String, dynamic> json) => Dog(
        porte: json["porte"],
        peso: List<Grama>.from(json["peso"].map((x) => Grama.fromJson(x))),
        gramas: List<Grama>.from(json["gramas"].map((x) => Grama.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "porte": porte,
        "peso": List<dynamic>.from(peso.map((x) => x.toJson())),
        "gramas": List<dynamic>.from(gramas.map((x) => x.toJson())),
    };
}

class Grama {
    Grama({
        this.min,
        this.max,
    });

    int min;
    int max;

    factory Grama.fromJson(Map<String, dynamic> json) => Grama(
        min: json["min"],
        max: json["max"] == null ? null : json["max"],
    );

    Map<String, dynamic> toJson() => {
        "min": min,
        "max": max == null ? null : max,
    };
}
