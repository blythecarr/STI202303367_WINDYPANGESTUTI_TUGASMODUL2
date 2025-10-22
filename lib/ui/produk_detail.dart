import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ProdukDetail({
    super.key,
    this.kodeProduk,
    this.namaProduk,
    this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Produk')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kode Produk: ${kodeProduk ?? "-"}',
                style: const TextStyle(fontSize: 18)),
            Text('Nama Produk: ${namaProduk ?? "-"}',
                style: const TextStyle(fontSize: 18)),
            Text('Harga: Rp${harga ?? 0}',
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
