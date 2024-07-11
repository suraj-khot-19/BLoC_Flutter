import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  //must create a counter cubit constructor with initial state(here counter inilaly 0)

  CounterCubit() : super(0);

  //method to increment a counter
  void increment() {
    emit(state + 1);
  }

  //method to decrement a counter
  void decrement() {
    emit(state - 1);
  }
}
