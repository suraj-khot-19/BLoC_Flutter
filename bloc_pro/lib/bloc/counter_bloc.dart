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
      emit(state - 1);
    });
    //restart
    on((event, emit) {
      emit(state - 0);
    });
  }
}
