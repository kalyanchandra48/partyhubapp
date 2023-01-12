import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String namefield = '';

  String emailField = '';
  //String outPut = '';

  // Future<String> returnName() async {
  //   await Future.delayed(const Duration(seconds: 10), () {
  //     return 'kalyan';
  //   });
  //   setState(() {
  //     outPut = 'nameOutput';
  //   });
  //   return outPut;
  // }

  TextEditingController nameController = TextEditingController(text: '1');

  TextEditingController emailController = TextEditingController();
  List<String> itemmss = [
    'kalyan',
    'ram',
    'sridhar',
    'gona',
  ];
  String dropdownvalue = 'kalyan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: nameController,
          ),
          TextField(
            decoration: const InputDecoration(counterText: 'email'),
            controller: emailController,
          ),
          const SizedBox(
            height: 10,
          ),

          // Container(
          //   color: Colors.black,
          //   height: 60,
          //   width: 80,
          //   child: DropdownButton(
          //     value: dropdownvalue,
          //     items: itemmss.map((String items) {
          //       return DropdownMenuItem(
          //         value: items,
          //         child: Text(items),
          //       );
          //     }).toList(),
          //     onChanged: (String? newValue) {
          //       setState(() {
          //         dropdownvalue = newValue!;
          //       });
          //     },
          //   ),
          // ),

          ElevatedButton(
              onPressed: () {
                setState(() {
                  namefield = nameController.text;
                  emailField = emailController.text;
                  print(emailField);
                  print('namefield is $namefield');
                  //returnName();
                });
              },
              child: const Text('Submit')),
          // Container(
          //   color: Colors.blue,
          //   height: 90,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         namefield,
          //         style: const TextStyle(color: Colors.white),
          //       ),
          //       //Text(outPut),
          //       Text(
          //         emailField,
          //         style: const TextStyle(color: Colors.white),
          //       ),
          //     ],
          //   ),
          // )
        ]),
      ),
    );
  }
}
