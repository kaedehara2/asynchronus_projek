import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // ✅ Ubah dari String ke Future<Position>? untuk digunakan pada FutureBuilder
  Future<Position>? position;

  @override
  void initState() {
    super.initState();
    // ✅ Panggil getPosition dan assign ke variable
    position = getPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location #PutraDamaskus')),
      body: Center(
        // ✅ Gunakan FutureBuilder untuk menampilkan data posisi
        child: FutureBuilder<Position>(
          future: position,
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // ✅ Loading state
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                // ✅ Tangani error jika terjadi
                return const Text('Something terrible happened!');
              } else if (snapshot.hasData) {
                // ✅ Tampilkan data jika tersedia
                return Text(
                  'Latitude: ${snapshot.data!.latitude} - Longitude: ${snapshot.data!.longitude}',
                );
              } else {
                // ✅ Data kosong atau tidak diketahui
                return const Text('No location data.');
              }
            } else {
              // ✅ Fallback state (misalnya saat none/active)
              return const Text('Fetching location...');
            }
          },
        ),
      ),
    );
  }

  Future<Position> getPosition() async {
    // ❌ Baris ini dikomentari, padahal perlu untuk meminta izin lokasi
    // ✅ Aktifkan agar aplikasi bisa meminta izin lokasi kepada user
    await Geolocator.requestPermission();

    await Future.delayed(const Duration(seconds: 3)); // ✅ Simulasi delay
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      // ✅ Lempar error jika layanan lokasi tidak aktif
      throw Exception('Location services are disabled.');
    }

    // ✅ Ambil posisi saat ini
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }
}
