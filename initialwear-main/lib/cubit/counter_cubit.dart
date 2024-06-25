import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if(state == 10){
      Fluttertoast.showToast(msg:"El limite superior es 10",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 20,
      );
    }else{
      emit(state + 1);
    }
  }
  void decrement(){
    if(state == -10){
      Fluttertoast.showToast(msg:"El limite inferior es -10",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 20,
      );
    }else{
      emit(state - 1);
    }
  } 
  
  void r() => emit(state * 0);
}