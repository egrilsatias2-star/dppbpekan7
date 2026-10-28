import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Bandung Emergency 112'),
        backgroundColor: Colors.red.shade900,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(),
            SizedBox(height: 24),
            buildBannerStatus(),
            SizedBox(height: 20),
            Text('Layanan Utama Kedaruratan',
                style: TextStyle(fontSize: 14, color: Colors.grey[800])),
            SizedBox(height: 8),
            buildMenuCepat(),
            SizedBox(height: 16),
            buildFooterPosko(),
          ],
        ),
      ),
    ),
  ));
}

Widget buildHeader() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.red.shade900, Colors.red.shade600],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 8,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Row(
      children: [
        Icon(Icons.emergency, color: Colors.white, size: 36),
        SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CALL CENTER SIAGA 112',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                'Siaga 24 Jam Nonstop Kota Bandung',
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildBannerStatus() {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.amber.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(Icons.warning_amber_rounded,
                color: Colors.deepOrange, size: 28),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                'Peringatan: Potensi hujan lebat disertai petir di Bandung Raya.',
                style: TextStyle(fontSize: 13, color: Colors.brown.shade900),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        top: -10,
        right: 12,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.red[700],
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            'SIAGA 1',
            style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ],
  );
}

Widget buildMenuCepat() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: buildLayananCard(
          icon: Icons.medical_services,
          warna: Colors.teal,
          judul: 'Ambulans 119',
          deskripsi: 'Medis Darurat',
        ),
      ),
      SizedBox(width: 12),
      Expanded(
        child: buildLayananCard(
          icon: Icons.fire_truck,
          warna: Colors.orange,
          judul: 'Damkar 113',
          deskripsi: 'Evakuasi Bencana',
        ),
      ),
    ],
  );
}

Widget buildLayananCard({
  required IconData icon,
  required MaterialColor warna,
  required String judul,
  required String deskripsi,
}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: warna.shade200, width: 1.2),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: warna, size: 28),
        SizedBox(height: 12),
        Text(judul, style: TextStyle(fontWeight: FontWeight.w500)),
        SizedBox(height: 2),
        Text(deskripsi,
            style: TextStyle(fontSize: 13, color: Colors.grey[700])),
      ],
    ),
  );
}

Widget buildFooterPosko() {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey.shade300),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
      ],
    ),
    child: Row(
      children: [
        Icon(Icons.location_on, color: Colors.red),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            'Posko: Command Center Balai Kota Bandung',
            style: TextStyle(fontSize: 13),
          ),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red.shade700,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)),
          ),
          child: Text('PANGGIL 112'),
        ),
      ],
    ),
  );
}