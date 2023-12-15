import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();

  String result1 = '';
  String result2 = '';
  String result3 = '';
  String result4 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Interface'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // First half - Input forms and result texts
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TextField(
                            controller: _controller1,
                            decoration: InputDecoration(
                              labelText: 'Input 1',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 8.0), // Add margin
                          Text(
                            result1,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          TextField(
                            controller: _controller2,
                            decoration: InputDecoration(
                              labelText: 'Input 2',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(result2),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TextField(
                            controller: _controller3,
                            decoration: InputDecoration(
                              labelText: 'Input 3',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            result3,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          TextField(
                            controller: _controller4,
                            decoration: InputDecoration(
                              labelText: 'Input 4',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(result4),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    double x1 = double.tryParse(_controller1.text) ?? 0.0;
                    double x2 = double.tryParse(_controller2.text) ?? 0.0;
                    double x3 = double.tryParse(_controller3.text) ?? 0.0;
                    double x4 = double.tryParse(_controller4.text) ?? 0.0;

                    double denominator = exp(x1) + exp(x2) + exp(x3) + exp(x4);

                    setState(() {
                      result1 = 'Pi1 = ${exp(x1) / denominator}';
                      result2 = 'Pi2 = ${exp(x2) / denominator}';
                      result3 = 'Pi3 = ${exp(x3) / denominator}';
                      result4 = 'Pi4 = ${exp(x4) / denominator}';
                    });
                  },
                  child: Text('OK', style: TextStyle(fontSize: 16.0)),
                ),
              ],
            ),
            ),
        );
  }
}
