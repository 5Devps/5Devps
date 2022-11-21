class User {
  var _uid;
  var _name;
  var _email;
  var _password;

  get uid => _uid;
  set uid(value) => _uid = value;

  get name => _name;
  set name(value) => _name = value;

  get email => _email;
  set email(value) => _email = value;

  get password => _password;
  set password(value) => _password = value;

  User(
    this._uid,
    this._name,
    this._email,
    this._password,
  );

  User.Empty();

  User.fromJson(Map<String, dynamic> json)
      : _uid = json['uid'],
        _name = json['name'],
        _email = json['email'],
        _password = json['password'];

  Map<String, dynamic> ToJson() =>
      {'uid': _uid, 'name': _name, 'email': _email, 'password': _password};
}
