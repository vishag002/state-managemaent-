import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/controller/controller.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<ColorProvider>(context).colr,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                Provider.of<MyController>(context).counter.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 70,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () => Navigator.pop(context), child: Text("back")),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Provider.of<MyController>(context, listen: false).add();
                      },
                      child: Text("increment")),
                  ElevatedButton(
                      onPressed: () {
                        Provider.of<MyController>(context, listen: false)
                            .remove();
                      },
                      child: Text("increment"))
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 80,
          width: double.infinity,
          // color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              Flexible(
                  child: InkWell(
                onTap: () {
                  Provider.of<ColorProvider>(context, listen: false)
                      .updateColor(Colors.red);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.redAccent),
                ),
              )),
              Flexible(
                  child: InkWell(
                onTap: () {
                  Provider.of<ColorProvider>(context, listen: false)
                      .updateColor(Colors.greenAccent);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.greenAccent),
                ),
              )),
              Flexible(
                  child: InkWell(
                onTap: () {
                  Provider.of<ColorProvider>(context, listen: false)
                      .updateColor(Colors.yellow);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.yellow),
                ),
              )),

              /* Container(
                width: MediaQuery.,
                color: Colors.amber,
              ), */
            ]),
          ),
        ));
  }
}
