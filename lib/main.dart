import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names
  TextEditingController Input = TextEditingController();

  double _inputUser = 0;
  double _kelvin = 0;
  double _reamor = 0;

  void konversi() {
    setState(
      () {
        _inputUser = double.parse(Input.text);
        _kelvin = _inputUser + 273;
        _reamor = _inputUser * 0.8;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Konverter suhu"),
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Masukkan Suhu Dalam Celcius"),
                textAlign: TextAlign.center,
                controller: Input,
                keyboardType: TextInputType.number,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Suhu Dalam Kelvin",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w200),
                      ),
                      Text(
                        "$_kelvin",
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Suhu Dalam Reamor",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        "$_reamor",
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: konversi,
                  child: const Text(
                    "Konversi Suhu",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
