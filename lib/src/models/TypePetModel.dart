class TypePet {
  int id;
  String tipoPet;

  TypePet({this.id, this.tipoPet});

  TypePet.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tipoPet = json['tipoPet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tipoPet'] = this.tipoPet;
    return data;
  }
}