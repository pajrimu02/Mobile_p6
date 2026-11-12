
import 'package:flutter/material.dart';
import 'detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGrid = false;

  final List<Map<String, dynamic>> pantaiList = [
    {
      'nama': 'Pantai Kelingking',
      'lokasi': 'Nusa Penida, Bali',
      'gambar':
          'https://images.unsplash.com/photo-1516690561799-46d8f74f9abf?w=900',
      'deskripsi':
          'Pantai Kelingking terkenal dengan tebingnya yang menyerupai bentuk T-Rex. Pemandangan laut biru dan pasir putih menjadikan pantai ini salah satu destinasi favorit di Bali.',
      'rating': '4.9',
    },
    {
      'nama': 'Pantai Pink',
      'lokasi': 'Lombok Timur, NTB',
      'gambar':
          'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=900',
      'deskripsi':
          'Pantai Pink memiliki pasir berwarna merah muda yang unik. Air lautnya jernih dan cocok untuk menikmati keindahan alam serta berfoto.',
      'rating': '4.8',
    },
    {
      'nama': 'Pantai Melasti',
      'lokasi': 'Ungasan, Bali',
      'gambar':
          'https://images.unsplash.com/photo-1473116763249-2faaef81ccda?w=900',
      'deskripsi':
          'Pantai Melasti menawarkan pemandangan tebing kapur yang megah, air laut biru jernih, dan hamparan pasir putih yang indah.',
      'rating': '4.8',
    },
    {
      'nama': 'Pantai Tanjung Tinggi',
      'lokasi': 'Belitung, Bangka Belitung',
      'gambar':
          'https://images.unsplash.com/photo-1500375592092-40eb2168fd21?w=900',
      'deskripsi':
          'Pantai Tanjung Tinggi dikenal dengan batu granit berukuran besar yang tersebar di sepanjang pantai. Suasananya cocok untuk bersantai.',
      'rating': '4.7',
    },
    {
      'nama': 'Pantai Parangtritis',
      'lokasi': 'Bantul, Yogyakarta',
      'gambar':
          'https://images.unsplash.com/photo-1473116763249-2faaef81ccda?w=900',
      'deskripsi':
          'Pantai Parangtritis terkenal dengan hamparan pasir luas, ombak besar, dan pemandangan matahari terbenam yang menarik.',
      'rating': '4.7',
    },
    {
      'nama': 'Pantai Ora',
      'lokasi': 'Maluku Tengah, Maluku',
      'gambar':
          'https://images.unsplash.com/photo-1519046904884-53103b34b206?w=900',
      'deskripsi':
          'Pantai Ora memiliki air laut yang sangat jernih, terumbu karang, dan pemandangan pegunungan yang mengelilinginya.',
      'rating': '4.9',
    },
  ];

  void bukaDetail(Map<String, dynamic> pantai) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(pantai: pantai),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FAFC),
      body: SafeArea(
        child: Column(
          children: [
            // HEADER
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 18, 20, 12),
              child: Row(
                children: [
                  Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0F5FA),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.waves_rounded,
                      color: Color(0xFF087EAB),
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jelajahi Indonesia',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Wisata Pantai',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF153B50),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          constraints: const BoxConstraints(
                            minWidth: 38,
                            minHeight: 38,
                          ),
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              isGrid = false;
                            });
                          },
                          icon: Icon(
                            Icons.view_list_rounded,
                            color: !isGrid
                                ? const Color(0xFF087EAB)
                                : Colors.grey,
                          ),
                        ),
                        IconButton(
                          constraints: const BoxConstraints(
                            minWidth: 38,
                            minHeight: 38,
                          ),
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              isGrid = true;
                            });
                          },
                          icon: Icon(
                            Icons.grid_view_rounded,
                            color: isGrid
                                ? const Color(0xFF087EAB)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // BANNER
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 145,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=1200',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.65),
                        Colors.transparent,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Temukan Surga\\nTersembunyi',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Nikmati keindahan pantai Indonesia',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // JUDUL DAFTAR
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 14),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Destinasi Pilihan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF153B50),
                      ),
                    ),
                  ),
                  Text(
                    '${pantaiList.length} Pantai',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF087EAB),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            // LISTVIEW / GRIDVIEW
            Expanded(
              child: isGrid
                  ? GridView.builder(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      itemCount: pantaiList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 14,
                        mainAxisSpacing: 14,
                        childAspectRatio: 0.78,
                      ),
                      itemBuilder: (context, index) {
                        final pantai = pantaiList[index];

                        return GestureDetector(
                          onTap: () => bukaDetail(pantai),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.04),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(20),
                                    ),
                                    child: Image.network(
                                      pantai['gambar'],
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return Container(
                                          color: Colors.blue.shade50,
                                          child: const Center(
                                            child: Icon(
                                              Icons.image_not_supported,
                                              color: Colors.blue,
                                              size: 35,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        pantai['nama'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Color(0xFF153B50),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_rounded,
                                            color: Color(0xFF087EAB),
                                            size: 14,
                                          ),
                                          const SizedBox(width: 3),
                                          Expanded(
                                            child: Text(
                                              pantai['lokasi'],
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      itemCount: pantaiList.length,
                      itemBuilder: (context, index) {
                        final pantai = pantaiList[index];

                        return GestureDetector(
                          onTap: () => bukaDetail(pantai),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 14),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.04),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    pantai['gambar'],
                                    height: 100,
                                    width: 115,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) {
                                      return Container(
                                        height: 100,
                                        width: 115,
                                        color: Colors.blue.shade50,
                                        child: const Icon(
                                          Icons.image_not_supported,
                                          color: Colors.blue,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(width: 13),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        pantai['nama'],
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF153B50),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_rounded,
                                            color: Color(0xFF087EAB),
                                            size: 16,
                                          ),
                                          const SizedBox(width: 3),
                                          Expanded(
                                            child: Text(
                                              pantai['lokasi'],
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontSize: 11,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star_rounded,
                                            color: Colors.orange,
                                            size: 16,
                                          ),
                                          const SizedBox(width: 3),
                                          Text(
                                            pantai['rating'],
                                            style: const TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 15,
                                  color: Color(0xFF087EAB),
                                ),
                                const SizedBox(width: 5),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
