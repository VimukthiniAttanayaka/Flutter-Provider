import 'package:flutter/material.dart';
import 'package:my_app/widget/bottom_navigation.dart';
import 'package:provider/provider.dart';

import '../providers/count_provider.dart';

class CountPage extends StatefulWidget {
  const CountPage({super.key});

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Count Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${context.watch<CountProvider>().count}',
                style: const TextStyle(fontSize: 30)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CountProvider>().increment();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CountProvider>().decrement();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(currentIndex: 2,),
    );
  }
}
