import 'package:flutter_bloc/flutter_bloc.dart';
//part
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    //increment
    on<CounterIncrement>(
      (event, emit) {
        emit(state + 1);
      },
    );
    //decrement
    on<CounterDecrement>((event, emit) {
      if (state == 0) {
        return;
      }
      emit(state - 1);
    });
    //restart
    on<CounterRestart>((event, emit) {
      emit(0); //passing initial value over here
    });
  }
}
