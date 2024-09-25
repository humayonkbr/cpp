import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calculator(),
    );
  }
}

class calculator extends StatefulWidget {
  const calculator({super.key});

  Widget calcbutton({
    required String btntxt,
    required Color btncolor,
    required Color txtcolor,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: btncolor, borderRadius: BorderRadius.circular(100)),
        child: Text(
          btntxt,
          style: TextStyle(color: txtcolor),
        ),
      ),
    );
  }

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {

    double calculateValue = 0;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        calculateValue.toString(),
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  widget.calcbutton(btntxt: 'AC', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                  widget.calcbutton(btntxt:'+/-', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                  widget.calcbutton(btntxt:'%', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                  widget.calcbutton(btntxt:'/', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  widget.calcbutton(btntxt:'9', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                  widget.calcbutton(btntxt:'8', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                  widget.calcbutton(btntxt:'7', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                  widget.calcbutton(btntxt:'*', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  widget.calcbutton(btntxt:'6', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                  widget.calcbutton(btntxt:'5', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                  widget.calcbutton(btntxt:'4', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                  widget.calcbutton(btntxt:'+', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  widget.calcbutton(btntxt:'3', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                  widget.calcbutton(btntxt:'2', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),
                  widget.calcbutton(btntxt:'1', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){
                    setState(() {
                      calculateValue = 1;
                      print(calculateValue.toString());
                    });
                  }),
                  widget.calcbutton(btntxt:'-', btncolor: Colors.grey, txtcolor: Colors.black, onTap: (){}),

                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ElevatedButton(onPressed: () {}, child: Column())],
              )
            ],
          )),
    );
  }
}
