import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_counter_provider/providers/counter_provider.dart';
import 'package:flutter_counter_provider/pages/data_page.dart'; // Importa la DataPage

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Counter>(
              builder: (context, counter, child) => Column(
                children: [
                  Text(counter.saludar),
                  const SizedBox(height: 20),
                  const Text('You have pushed the button this many times:'),
                  Text(
                    '${counter.value}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataPage()), // Navega a DataPage
                );
              },
              child: const Text('Go to Data Page'),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 30),
          FloatingActionButton(
            onPressed: () {
              var counter = context.read<Counter>();
              counter.increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              var counter = context.read<Counter>();
              counter.decrement();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
