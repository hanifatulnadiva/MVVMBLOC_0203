import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvmbloc_0203/ViewModel/userevent.dart';
import 'package:mvvmbloc_0203/ViewModel/userstate.dart';

class Userbloc extends Bloc<UserEvent, Userstate> {
  Userbloc():super(Userstate()){
    on<NamaChanged>((event,emit){
      emit(state.copyWith(nama: event.nama));
    });
    on<EmailChanged>((event,emit){
      emit(state.copyWith(email: event.email));
    });
  }
}