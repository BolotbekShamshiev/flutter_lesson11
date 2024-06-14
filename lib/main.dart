import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homework1(),
    );
  }
}

class Homework1 extends StatefulWidget {
  const Homework1({super.key});

  @override
  State<Homework1> createState() => _Homework1State();
}

class _Homework1State extends State<Homework1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: 24,
        ),
        title: Text(
          'HomeWork',
          style: TextStyle(
            color: Color(0xff0D1F3C),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  print('I LOVE');
                },
                child: RichText(
                  text: TextSpan(
                    text: 'I',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 31,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      WidgetSpan(child: SizedBox(width: 10)),
                      TextSpan(
                        text: 'LOVE',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 31,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton.icon(
                onPressed: () {
                  print(
                    'ITC BOOTCAMP',
                  );
                },
                icon: Icon(
                  Icons.apple,
                  color: Colors.black,
                  size: 30,
                ),
                label: Text(
                  'ITC BOOTCAMP',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 31,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff00000040).withOpacity(0.25),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffBB6BD9),
                    side: BorderSide(
                      width: 1.5,
                      color: Color(0xff333333),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    print('Bolot purple');
                  },
                  child: Text(
                    'Bolot',
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    width: 1.5,
                    color: Color(0xff333333),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size(180, 80),
                  padding: EdgeInsets.all(15),
                ),
                onPressed: () {
                  print('Bolot white');
                },
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Bolot',
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              IconButton(
                onPressed: () {
                  print('heart');
                },
                icon: Icon(
                  Icons.favorite_border,
                  size: 70,
                  color: Color(0xffEB5757),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          print('outside of body');
        },
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Color(0xffF24242),
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              width: 1.5,
              color: Color(0xff000000),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xff00000040).withOpacity(0.25),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Icon(
            Icons.favorite_border,
            size: 41,
          ),
        ),
      ),
    );
  }
}
