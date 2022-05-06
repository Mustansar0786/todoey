import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';

import 'screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

/*
class ProviderApp extends StatelessWidget {
  const ProviderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) {
        return Data();
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Consumer(
            builder: (context, value, child) {
              return Text(Provider.of<Data>(context).data);
            },
          )),
          body: const Level1(),
        ),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  const Level1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Lavel2();
  }
}

class Lavel2 extends StatelessWidget {
  const Lavel2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [MyText(), Level3()],
    );
  }
}

class Level3 extends StatelessWidget {
  const Level3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [MyTextFormField(), MyText()],
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context).data);
  }
}

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newText) {
        Provider.of<Data>(context, listen: false).changeData(newText);
      },
    );
  }
}

class Data extends ChangeNotifier {
  String data = "Top secrit data";
  void changeData(String newData) {
    data = newData;
    notifyListeners();
  }
}
*/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const TasksScreen()),
    );
  }
}
