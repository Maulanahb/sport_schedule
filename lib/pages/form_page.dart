import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController olahragaController = TextEditingController();
    TextEditingController hariController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Jadwal"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: olahragaController,
              decoration: const InputDecoration(
                labelText: "Nama Olahraga",
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: hariController,
              decoration: const InputDecoration(
                labelText: "Hari",
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              child: const Text("Simpan"),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Data disimpan (dummy)"),
                  ),
                );
              },
            )

          ],
        ),
      ),
    );
  }
}