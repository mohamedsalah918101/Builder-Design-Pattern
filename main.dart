import 'user.dart';

void main(){
  // Creating a user with only required fields
  final basicUser = UserBuilder(
    firstName: 'Mohamed',
    lastName: 'Salah',
  ).build();
  print('Basic user: $basicUser');

  // Creating a user with all fields
  final fullUser = UserBuilder(
    firstName: 'Ahmed',
    lastName: 'Hany',
  )
    ..setAge(23)
    ..setPhone('+201550918101')
        .build();
  print('Full user: $fullUser');
}