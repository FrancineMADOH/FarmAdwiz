// ceci est la classe generique sur les utilisateurs
//elle rassemble les informations a donner au moment de l'incription ou de la connexion

class User {
  String? name;
  String? profile;
  String? phone;
  String? email;
  String? localization;
  String? password;

  User(
      {this.name,
      this.profile,
      this.phone,
      this.email,
      this.localization,
      this.password});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    profile = json['profile'];
    phone = json['phone'];
    email = json['email'];
    localization = json['localization'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['profile'] = profile;
    data['phone'] = phone;
    data['email'] = email;
    data['localization'] = localization;
    data['password'] = password;
    return data;
  }
}
