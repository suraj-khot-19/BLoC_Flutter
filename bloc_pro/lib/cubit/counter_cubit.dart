import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  //must create a counter cubit constructor with initial state(here counter inilaly 0)

  CounterCubit() : super(0);

  //method to increment a counter
  void increment() {
    debugPrint("incrementing....");
    /*
Updates the [state] to the provided [state]. [emit] does nothing if the [state] being emitted is equal to the current [state].
To allow for the possibility of notifying listeners of the initial state, emitting a state which is equal to the initial state is allowed as long as it is the first thing emitted by the instance.
Throws a [StateError] if the bloc is closed.
*/
    emit(state + 1);
  }

  //method to decrement a counter
  void decrement() {
    debugPrint("decrementing....");

    //task 1 create a method to dcrement counter
    // emit(state - 1);

    //task 2 if counter is 0 stop decrementing
    //a)
    // emit(state < 1 ? state : state - 1);

    //b)
    if (state == 0) {
      return;
    }
    emit(state - 1);
  }
}
