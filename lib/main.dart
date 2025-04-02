import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:async/async.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ghazilov Magomed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  // Fungsi count() yang dijalankan saat tombol ditekan
  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = 'books/v1/volumes/tZldEAAAQBAJ';
    Uri url = Uri.https(authority, path);
    return await http.get(url);
  }

  late Completer completer;

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }
  Future calculate() async {
    await Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                getNumber().then((value) {
                  setState(() {
                    result = value.toString();
                  });
                });
               // count(); // Memanggil fungsi count()
                
                // Kode lama dikomentari sesuai instruksi
                /*
                getData().then((response) {
                  setState(() {
                    result = response.body.substring(0, 100); // Ambil 100 karakter pertama
                  });
                }).catchError((error) {
                  setState(() {
                    result = 'An error occurred: $error';
                  });
                });
                */
              },
              child: const Text('GO!'),
            ),
            const SizedBox(height: 20),
            Text(result),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
