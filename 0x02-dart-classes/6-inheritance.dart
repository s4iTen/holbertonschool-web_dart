import '6-password.dart';

class User {
  int id;
  String name;
  int age;
  double height;
  late Password _password;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) {
    _password = Password(password: user_password);
  }

  String get user_password => _password.password;

  set user_password(String newPassword) {
    _password.password = newPassword; 
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "age": age,
      "height": height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] as int,
      name: userJson['name'] as String,
      age: userJson['age'] as int,
      height: userJson['height'] as double,
      user_password: userJson['user_password'] as String,
    );
  }

   @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${_password.isValid()})';
  }
}
