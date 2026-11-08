
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: const Color(0xFFFFF7F0),
        fontFamily: 'Arial',
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Mahasiswa',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 238, 105, 9),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // FOTO DAN IDENTITAS
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: const Color(0xFFFFE5D2),
              child: Column(
                children: [

                  ClipOval(
                    child: Image.asset(
                      'assets/cat.png',
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 110,
                          height: 110,
                          color: Colors.white,
                          child: const Icon(
                            Icons.person,
                            size: 70,
                            color: Colors.orange,
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Pria Pamungkas',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 95, 94, 94),
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'Mahasiswa Teknik Informatika',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF76665D),
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'Universitas Teknologi Bandung',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF76665D),
                    ),
                  ),
                ],
              ),
            ),

            // INFORMASI MAHASISWA
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'Informasi Mahasiswa',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4A403A),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Card(
                    color: const Color.fromARGB(255, 159, 158, 158),
                    child: Column(
                      children: const [

                        ListTile(
                          leading: Icon(
                            Icons.badge,
                            color: Color(0xFFE9A16F),
                          ),
                          title: Text('NIM'),
                          subtitle: Text('24552011108'),
                        ),

                        Divider(),

                        ListTile(
                          leading: Icon(
                            Icons.school,
                            color: Color(0xFFE9A16F),
                          ),
                          title: Text('Program Studi'),
                          subtitle: Text('Teknik Informatika'),
                        ),

                        Divider(),

                        ListTile(
                          leading: Icon(
                            Icons.groups,
                            color: Color(0xFFE9A16F),
                          ),
                          title: Text('Kelas'),
                          subtitle: Text('TIF K24 A'),
                        ),

                        Divider(),

                        ListTile(
                          leading: Icon(
                            Icons.menu_book,
                            color: Color(0xFFE9A16F),
                          ),
                          title: Text('Semester'),
                          subtitle: Text('Semester 5'),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // TENTANG SAYA
                  const Text(
                    'Tentang Saya',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4A403A),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Saya adalah mahasiswa Teknik Informatika '
                      'yang memiliki ketertarikan pada outdoor activity, '
                      'travelling, dan kucing. '
                      'Saya senang mempelajari hal-hal baru '
                      'khususnya dalam bidang bisnis.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 13,
                        height: 1.6,
                        color: Color.fromARGB(255, 247, 184, 120),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // HOBI
                  const Text(
                    'Hobi dan Minat',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4A403A),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [

                      Expanded(
                        child: hobbyCard(
                          Icons.computer,
                          'Teknologi',
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: hobbyCard(
                          Icons.code,
                          'Programming',
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: hobbyCard(
                          Icons.menu_book,
                          'Belajar',
                        ),
                      ),

                    ],
                  ),

                  const SizedBox(height: 25),

                  // FOOTER
                  const Center(
                    child: Text(
                      '© 2026 Pria Pamungkas',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // WIDGET KARTU HOBI
  Widget hobbyCard(IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFFE5D2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [

          Icon(
            icon,
            size: 28,
            color: const Color(0xFFE9A16F),
          ),

          const SizedBox(height: 8),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11,
              color: Color(0xFF4A403A),
            ),
          ),

        ],
      ),
    );
  }
}
