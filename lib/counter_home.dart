import 'package:counter_bloc/counter_bloc/counter_bloc.dart';
import 'package:counter_bloc/counter_bloc/counter_event.dart';
import 'package:counter_bloc/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterHomePage extends StatelessWidget {
  const CounterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bloc Counter App"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc,CounterState>(
              builder: (context, state) {
                return Text(
                "${state.count}",
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(Increment());
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(Decrement());
            },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
