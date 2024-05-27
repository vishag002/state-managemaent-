import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/controller/controller.dart';
import 'package:provider_statemanagement/views/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      backgroundColor: Provider.of<ColorProvider>(context).colr,
      appBar: AppBar(
        title: Text("Provider App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<MyController>().add();
                  },
                  child: Text("Increment"),
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                ),
                Consumer<MyController>(
                  builder: (context, value, child) => Text(
                    value.counter.toString(),
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<MyController>().remove();
                  },
                  child: Text("Decrement"),
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ],
            ),
            SizedBox(height: 40), // Adds space between rows
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ),
              ),
              child: Text("Next"),
              style: ElevatedButton.styleFrom(primary: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
