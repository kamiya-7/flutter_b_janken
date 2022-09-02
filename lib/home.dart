import 'package:flutter/material.dart';
import 'package:flutter_b_janken/bloc.dart';
import 'package:flutter_b_janken/logic.dart';
import 'package:flutter_b_janken/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final game = Game();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JANKEN APP')),
      body: BlocBuilder<JankenBloc, JankenState>(
        // buildWhen: (previous, current) => previous.userHand != current.userHand,
        builder: (context, state) => Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.amber,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text('COMPUTER', style: TextStyle(fontSize: 30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(42.0),
                    child: Text(state.computerHand,
                        style: const TextStyle(fontSize: 70)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 300,
              height: 30,
            ),
            Container(
              width: 200,
              height: 120,
              color: Colors.blue,
              child: Center(
                  child:
                      Text(state.result, style: const TextStyle(fontSize: 40))),
            ),
            const SizedBox(
              width: 300,
              height: 30,
            ),
            Container(
              width: 200,
              height: 120,
              color: Colors.green[100],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('YOU', style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(state.userHand,
                        style: const TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                child: const Text('Gu'),
                onPressed: () {
                  context.read<JankenBloc>().add(GuButtonPressed());
                  context.read<JankenBloc>().add(JudgeResult());
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                child: const Text('Choki'),
                onPressed: () {
                  context.read<JankenBloc>().add(ChokiButtonPressed());
                  context.read<JankenBloc>().add(JudgeResult());
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                child: const Text('Pa'),
                onPressed: () {
                  context.read<JankenBloc>().add(PaButtonPressed());
                  context.read<JankenBloc>().add(JudgeResult());
                }),
          ),
        ],
      ),
    );
  }
}
