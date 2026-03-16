import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final String olahraga;
  final String hari;

  const DetailPage({
    super.key,
    required this.olahraga,
    required this.hari,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Jadwal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              olahraga,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              hari,
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}