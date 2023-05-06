import 'package:flutter/material.dart';

class BPage extends StatefulWidget {
  const BPage({super.key});

  @override
  State<BPage> createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  Color textColor = Colors.black;
  double valueSlider = 0;

  String nameBtn = 'Follow';
  Color colorBtn = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B Page StatefulWidget'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              valueSlider.toStringAsFixed(2),
              style: TextStyle(fontSize: 50, color: textColor),
            ),
            const SizedBox(height: 10),
            Slider(
              value: valueSlider,
              max: 2,
              onChanged: (newValue) {
                valueSlider = newValue;
                setState(() {});
              },
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration:
                    BoxDecoration(border: Border.all(), color: colorBtn),
                child: Text(nameBtn),
              ),
              onTap: () {
                if (nameBtn == 'Follow') {
                  nameBtn = 'Unfollow';
                  colorBtn = Colors.white;
                  setState(() {});
                } else {
                  nameBtn = 'Follow';
                  colorBtn = Colors.red;
                  setState(() {});
                }
              },
            ),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text('Follow'),
              ),
              onTap: () {},
            ),
            ElevatedButton(
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Text('Follow'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
