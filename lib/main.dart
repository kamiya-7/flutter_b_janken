import 'package:flutter/material.dart';
import 'package:flutter_b_janken/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JANKEN APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => JankenBloc(),
        child: Home(),
      ),
    );
  }
}