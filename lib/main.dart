import 'package:bloc/bloc.dart';
import 'package:spendly/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'simple_bloc_observer.dart';

<<<<<<< HEAD
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
=======
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
>>>>>>> a86378c00db10f8b3b206893e7070504aa4eedda
  runApp(const MyApp());
}