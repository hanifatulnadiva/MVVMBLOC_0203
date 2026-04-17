import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvmbloc_0203/ViewModel/userbloc.dart';
import 'package:mvvmbloc_0203/ViewModel/userevent.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MVVM with BloC Example")),
      body:Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "masukkan Nama"),
              onChanged: (value){
                context.read<Userbloc>().add(NamaChanged(value));
              },
            )
          ],
        ),)
    );
  }
}