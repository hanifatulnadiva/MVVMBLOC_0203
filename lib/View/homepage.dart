import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvmbloc_0203/ViewModel/userbloc.dart';
import 'package:mvvmbloc_0203/ViewModel/userevent.dart';
import 'package:mvvmbloc_0203/ViewModel/userstate.dart';

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
            ),
            TextField(
              decoration: InputDecoration(labelText: "Masukkan Email"),
              onChanged: (value){
                context.read<Userbloc>().add(EmailChanged(value));
              },
            ),
            SizedBox(height: 20),
            BlocBuilder<Userbloc, Userstate>(
              builder: (context, state){
                return Text(
                  
                  "Halo, ${state.nama}..., is ${state.email} your electronic mail?",
                  style: TextStyle(fontSize: 20),
                );
              },
            )
          ],
        ),
      )
    );
  }
}