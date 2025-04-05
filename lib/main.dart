import 'package:flutter/material.dart';
import 'package:books/geolocation.dart'; // ✅ Impor file geolocation.dart agar bisa pakai LocationScreen()
//import 'package:http/http.dart' as http;
//import 'dart:async';
//import 'package:async/async.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Son Of Damascus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LocationScreen(), // ✅ Ini maksud dari soal langkah 6
    );
  }
}

/*class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  late Completer<int> completer; // ✅ Pastikan Completer memiliki tipe <int>

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

  Future getNumber() {
    completer = Completer<int>(); // ✅ Pastikan Completer diinisialisasi dengan tipe yang benar
    calculate();
    return completer.future;
  }

  Future calculate() async {
    await Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
  }

  calculate2() async {
    try {
      await Future.delayed(const Duration(seconds: 5)); // ✅ Hapus `new`
      completer.complete(42);
    } catch (_) {
      completer.completeError(Exception('An error occurred')); // ✅ Gunakan Exception agar lebih jelas
    }
  }

  void returnFG() {
    final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);
    futures.then((List<int> value) {
      int total = value.reduce((a, b) => a + b);
      setState(() {
        result = total.toString();
      });
    });
  }

  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');  
  }

  Future handleError() async {
    try {
      await returnError();
    }
    catch (error) {
      setState(() {
        result = error.toString();
      });
    }
    finally {
      print('Complete');
    }
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
                returnError()
                .then((value) {
                  setState(() {
                    result = 'Success';
                  });
                }).catchError((onError) {
                  setState(() {
                    result = onError.toString();
                  });
                }).whenComplete(() => print('Complete'));
                //returnFG();
                /*
                getNumber().then((value) {
                  setState(() {
                    result = value.toString();
                  });
                }).catchError((e) {
                  result = 'An error occurred';
                });
                */
              }, // ✅ Perbaiki penutupan onPressed
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
*/
