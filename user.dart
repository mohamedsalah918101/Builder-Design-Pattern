class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String? phone;

  User._builder(UserBuilder builder)
      : firstName = builder._firstName,
        lastName = builder._lastName,
        age = builder._age,
        phone = builder._phone;

  @override
  String toString() {
    return 'User(firstName: $firstName, lastName: $lastName, age: $age, phone: $phone)';
  }
}

class UserBuilder {
  String _firstName;
  String _lastName;
  int? _age;
  String? _phone;

  // Constructor with required fields
  UserBuilder({
    required String firstName,
    required String lastName,
  })  : _firstName = firstName,
        _lastName = lastName;

  // setters for optional fields
  UserBuilder setAge(int age) {
    _age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    _phone = phone;
    return this;
  }

  // Build method to create the final User instance
  User build() {
    return User._builder(this);
  }
}