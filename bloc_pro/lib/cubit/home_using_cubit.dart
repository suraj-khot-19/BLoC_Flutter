import 'package:bloc_pro/cubit/counter_cubit.dart';
import 'package:bloc_pro/cubit/using_diff_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeUsingCubit extends StatelessWidget {
  const HomeUsingCubit({super.key});
  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    debugPrint("build method is called");
    return Scaffold(
      appBar: AppBar(
        title: const Text("counter using cubit"),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          //if we dont add block error=>Could not find the correct Provider<CounterCubit> above this BlocBuilder<CounterCubit, int> Widget
          bloc: counterCubit,
          builder: (context, value) {
            return Text(
              value.toString(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const UsingDiffFile(),
            ),
          );
        },
      ),
    );
  }
}
