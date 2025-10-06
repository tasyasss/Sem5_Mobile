import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Kode Implementasi title row
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // Soal 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Soal 2
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Bumi Perkemahan Bedengan Dau Malang',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Dau, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // Soal 3
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // Widget buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Widget textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Bumi Perkemahan Bedengan Dau Malang adalah destinasi'
        'wisata alam berkonsep bumi perkemahan yang terletak'
        'di Desa Selorejo, Kecamatan Dau, Kabupaten Malang.'
        'Tempat ini menawarkan suasana yang tenang dan sangat'
        'asri, jauh dari hiruk pikuk perkotaan, menjadikannya'
        'lokasi ideal untuk healing dan menikmati alam.\n\n'
        'Kawasan wisata seluas 2,5 hektar ini didominasi oleh'
        'hutan pinus yang menjulang tinggi, menyajikan udara'
        'yang sejuk dan pemandangan hijau yang memanjakan mata.'
        'Keunikan Bedengan adalah keberadaan sungai kecil dengan'
        'air yang jernih dan segar yang mengalir di sepanjang'
        'area perkemahan, menambah nuansa damai.\n\n'
        'Oleh An Naastasya (2341760131)',
        softWrap: true,
      ),
    );

    // Kode MaterialApp sebelumnya
    return MaterialApp(
      title: 'Flutter layout: An Naastasya (2341760131)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/bedengan.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  // Method pembantu untuk membuat kolom tombol
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
