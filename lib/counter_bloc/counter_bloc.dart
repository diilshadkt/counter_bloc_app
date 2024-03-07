import 'package:bloc/bloc.dart';
import 'package:counter_bloc/counter_bloc/counter_event.dart';
import 'package:counter_bloc/counter_bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final currentStateValue = state.count;
      final incrementedValue = currentStateValue + 1;
      return emit(CounterState(count: incrementedValue));
    });

    on<Decrement>((event, emit) {
      final currentStateValue = state.count;
      final decrementedValue = currentStateValue - 1;
      return emit(CounterState(count: decrementedValue));
    });
  }
}
