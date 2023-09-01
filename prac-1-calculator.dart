import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Home(),
  ));
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double result=0;
  final TextEditingController first=TextEditingController();
  final TextEditingController second=TextEditingController();
  final TextEditingController output=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child:Column(
          children: [
            TextField(
              controller: first,
              keyboardType:TextInputType.number ,
              decoration: InputDecoration(labelText: 'Enter the first number:'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: second,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter the second number:'),
            ),
            Row(//mainAxisAlignment: :mainAxisalig
              children: [
              ElevatedButton(onPressed:(){
                  double a=double.parse(first.text);
                  double b=double.parse(second.text);
                  setState(() {
                    result=a+b;
                  });
                },child: Text('Add'),),
                ElevatedButton(onPressed: (){
                  double a=double.parse(first.text);
                  double b=double.parse(second.text);
                  setState(() {
                    result=a-b;
                  });
                },child: Text('sub'),),
                ElevatedButton(onPressed: (){
                  double a=double.parse(first.text);
                  double b=double.parse(second.text);
                  setState(() {
                    result=a*b;
                  });
                },child: Text('Mult'),),
                ElevatedButton(onPressed: (){
                  double a=double.parse(first.text);
                  double b=double.parse(second.text);
                  setState(() {
                    result=a/b;
                  });
                },child: Text('Div'),),
                ElevatedButton(onPressed: (){
                  double a=double.parse(first.text);
                  double b=double.parse(second.text);
                  setState(() {
                    result=a%b;
                  });
                },child: Text('%'),),
              ],
            ),
            Text('Result : $result',style: TextStyle(
              fontSize: 22,fontWeight: FontWeight.bold,
            ),
            ),
        ],
        ),
      ),
    );
  }
}
