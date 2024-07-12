import 'package:bloc_pro/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsingDiffFile extends StatelessWidget {
  const UsingDiffFile({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("passing cubic"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () => counterCubit.increment(),
            icon: const Icon(Icons.add),
            color: Colors.deepPurple,
          ),
          IconButton(
            color: Colors.deepPurple,
            onPressed: () => counterCubit.decrement(),
            icon: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
