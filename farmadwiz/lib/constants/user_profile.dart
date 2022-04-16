class SignupProfile {
  String text;
  String value;

  SignupProfile(this.text, this.value);
}

List<SignupProfile> signup_profile_list = [
  SignupProfile('Producteur Agricole', 'PA'),
  SignupProfile('Producteur Semencier', 'PS'),
  SignupProfile('Prestataire  de Services', 'PRS'),
  SignupProfile('Agripreneurs', 'AP'),
  SignupProfile('Acteur de la Formation', 'AF'),
  SignupProfile('Administration Publique', 'APU'),
  SignupProfile('Fournisseur d\'intrants agricole', 'FIA'),
];
