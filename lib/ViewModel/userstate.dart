import 'package:mvvmbloc_0203/Model/user.dart';

class Userstate {
  final String nama;
  final String email;
  Userstate({
    this.nama = "",
    this.email = "",
  });
  Userstate copyWith({String? nama, String? email}){
    return Userstate(
      nama: nama ?? this.nama,
      email: email ?? this.email,
    );
  }
}