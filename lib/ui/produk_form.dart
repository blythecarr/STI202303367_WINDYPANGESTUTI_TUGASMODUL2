import 'package:flutter/material.dart';
import 'produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukController = TextEditingController();
  final _namaProdukController = TextEditingController();
  final _hargaProdukController = TextEditingController();

  _textboxKodeProduk() {
    return TextField(
      controller: _kodeProdukController,
      decoration: const InputDecoration(labelText: 'Kode Produk'),
    );
  }

  _textboxNamaProduk() {
    return TextField(
      controller: _namaProdukController,
      decoration: const InputDecoration(labelText: 'Nama Produk'),
    );
  }

  _textboxHargaProduk() {
    return TextField(
      controller: _hargaProdukController,
      decoration: const InputDecoration(labelText: 'Harga'),
      keyboardType: TextInputType.number,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String kode = _kodeProdukController.text;
        String nama = _namaProdukController.text;
        int harga = int.parse(_hargaProdukController.text);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kodeProduk: kode,
              namaProduk: nama,
              harga: harga,
            ),
          ),
        );
      },
      child: const Text('Simpan'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Produk')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            const SizedBox(height: 20),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }
}
