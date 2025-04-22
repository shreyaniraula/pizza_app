import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/app.dart';
import 'package:pizza_app/simple_bloc_observer.dart';

void main() async {
  //Make sure everything is initialised
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}
