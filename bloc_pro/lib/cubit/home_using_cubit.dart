import 'package:bloc_pro/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeUsingCubit extends StatefulWidget {
  const HomeUsingCubit({super.key});

  @override
  State<HomeUsingCubit> createState() => _HomeUsingCubitState();
}

class _HomeUsingCubitState extends State<HomeUsingCubit> {
  //creating instance of the class
  final counterCubit = CounterCubit();
  @override
  Widget build(BuildContext context) {
    //using a instance every time when UI re-builds.
    // final counter = counterCubit.state;
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
            }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterCubit.increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 30,
          ),
          FloatingActionButton(
            onPressed: () {
              counterCubit.decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
