part of 'counter_bloc.dart';

//to pass multiple event throw bloc then we create a parent class and add other classes as their child(use sealed classes***)
sealed class CounterEvent {}

//increment event
class CounterIncrement extends CounterEvent {}

//decrement event
final class CounterDecrement extends CounterEvent {}

//restart event
final class CounterRestart extends CounterEvent {}
