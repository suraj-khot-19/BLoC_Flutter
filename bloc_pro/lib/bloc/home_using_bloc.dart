import 'package:bloc_pro/bloc/counter_bloc.dart';
import 'package:bloc_pro/bloc/diff_file_using_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeUsingBloc extends StatelessWidget {
  const HomeUsingBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home using bloc"),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, counter) {
            return Text(
              counter.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const DiffFileUsingBlock(),
            ),
          );
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
