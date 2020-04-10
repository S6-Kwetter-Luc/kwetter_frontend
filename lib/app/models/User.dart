class User {
  String _email;
  String _password;
  String _token;

  User.map(dynamic obj) {
    this._email = obj["email"];
    this._password = obj["password"];
    this._token = obj["token"];
  }

  String get email => _email;
  String get password => _password;
  String get token => _token;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["email"] = _email;
    map["password"] = _password;
    map["token"] = _token;

    return map;
  }
}