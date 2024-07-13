import 'package:bloc_pro/bloc/counter_bloc.dart';
import 'package:bloc_pro/bloc/home_using_bloc.dart';
import 'package:bloc_pro/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    /*
    Takes a [Create] function that is responsible for creating the [Bloc] or [Cubit]
    and a [child] which will have access to the instance via BlocProvider.of(context).
    It is used as a dependency injection (DI) widget so that a single instance of 
    a [Bloc] or [Cubit] can be provided to multiple widgets within a subtree.
     */
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterCubit()),
        BlocProvider(create: (_) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        // home: const HomeUsingCubit(),
        home: const HomeUsingBloc(),
      ),
    );
  }
}
