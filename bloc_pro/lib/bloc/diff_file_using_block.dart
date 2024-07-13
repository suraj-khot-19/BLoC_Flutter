import 'package:bloc_pro/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiffFileUsingBlock extends StatelessWidget {
  const DiffFileUsingBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBlock = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("bloc counter"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              counterBlock.add(CounterIncrement());
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              counterBlock.add(CounterDecrement());
            },
            icon: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
