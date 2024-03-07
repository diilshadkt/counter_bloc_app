class CounterState{
  final int count;
  CounterState({required this.count});
}
@override
class InitialState extends CounterState{
  InitialState() : super(count: 0);

}