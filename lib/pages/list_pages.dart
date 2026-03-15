import 'package:flutter/material.dart';
import 'detail_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String, String>> jadwal = [
      {"olahraga": "Futsal", "hari": "Senin"},
      {"olahraga": "Gym", "hari": "Rabu"},
      {"olahraga": "Lari", "hari": "Jumat"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("List Jadwal"),
      ),
      body: ListView.builder(
        itemCount: jadwal.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(jadwal[index]["olahraga"]!),
            subtitle: Text(jadwal[index]["hari"]!),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    olahraga: jadwal[index]["olahraga"]!,
                    hari: jadwal[index]["hari"]!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}