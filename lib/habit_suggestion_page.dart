import 'package:flutter/material.dart';
import "package:flutter_gemini/flutter_gemini.dart";

class AliskanlikOneriSayfasi extends StatefulWidget {
  const AliskanlikOneriSayfasi({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AliskanlikOneriSayfasiState createState() => _AliskanlikOneriSayfasiState();
}

class _AliskanlikOneriSayfasiState extends State<AliskanlikOneriSayfasi> {
  final Gemini gemini = Gemini.instance;
  List<String> aliskanlikOnerileri = [];

  @override
  void initState() {
    super.initState();
    _aliskanlikOnerileriGetir();
  }

  void _aliskanlikOnerileriGetir() async {
    try {
      // Burada AI servisinizden alışkanlık önerilerini getirebilirsiniz.
      // Örnek amaçlı olarak, sabit öneriler kullanılmıştır.
      final List<String> oneriler = await gemini.aliskanlikOnerileriGetir();

      setState(() {
        aliskanlikOnerileri = oneriler;
      });
    } catch (e) {
      // ignore: avoid_print
      print('Alışkanlık önerileri getirilirken hata oluştu: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alışkanlık Önerileri'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: aliskanlikOnerileri.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(aliskanlikOnerileri[index]),
            onTap: () {
              // Alışkanlık önerisi seçildiğinde yapılacak işlemler
              // Örneğin, detaylı bir görünüm sayfasına geçiş yapabilirsiniz.
            },
          );
        },
      ),
    );
  }
}

extension on Gemini {
  Future<List<String>> aliskanlikOnerileriGetir() async {
    // Bu bölüm, gerçek AI servisinizin çağrısını içermelidir.
    // Örnek amaçlı olarak sabit veriler kullanılmıştır.
    await Future.delayed(const Duration(seconds: 1)); // Ağ gecikmesini simüle eder.
    return [
      "Sabah erken kalk",
      "Günde 30 dakika egzersiz yap",
      "Her gün 10 dakika meditasyon yap",
      "Haftada bir yeni bir şey öğren",
    ];
  }
}
