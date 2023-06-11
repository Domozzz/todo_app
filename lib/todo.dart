import 'package:flutter/material.dart';
import 'package:todo_app/widgets/button.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            title(),
            description(),
            SizedBox(
              height: 16,
              width: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 228, 228, 228),
                        blurRadius: 8,
                        spreadRadius: 2)
                  ]),
              child: Row(
                children: [
                  Checkbox(value: true, onChanged: (check) {}),
                  Text("Go to sleep")
                ],
              ),
            ),
            Button(label: "Add Todo", onPressed: () {})
          ],
        ),
      ),
    );
  }

  Text title() {
    return const Text(
      "My Todo",
      style: TextStyle(
          color: Color(0xff252D89), fontSize: 40, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}

Text description() {
  return const Text(
    "you have 3 tasks remain for today",
    style: TextStyle(
        color: Color(0xff858CA7), fontSize: 14, fontWeight: FontWeight.w500),
    textAlign: TextAlign.center,
  );
}
