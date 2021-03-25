// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        this.cats,
    });

    List<Cat> cats;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        cats: List<Cat>.from(json["cats"].map((x) => Cat.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "cats": List<dynamic>.from(cats.map((x) => x.toJson())),
    };
}

class Cat {
    Cat({
        this.porte,
        this.peso,
        this.gramas,
    });

    String porte;
    List<Grama> peso;
    List<Grama> gramas;

    factory Cat.fromJson(Map<String, dynamic> json) => Cat(
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

    double min;
    double max;

    factory Grama.fromJson(Map<String, dynamic> json) => Grama(
        min: json["min"].toDouble(),
        max: json["max"] == null ? null : json["max"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "min": min,
        "max": max == null ? null : max,
    };
}
