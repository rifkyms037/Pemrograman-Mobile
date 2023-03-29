import 'package:flutter/material.dart';
import 'package:pertemuan5/models/news_detail.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen(
      {super.key,
      required this.id,
      required this.title,
      required this.content});
  final String id;
  final String title;
  final String content;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

// class _NewsDetailScreenState extends State<NewsDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           widget.id,
//         ),
//       ),
//     );
//   }
// }

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Berita",
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "https://t-2.tstatic.net/wow/foto/bank/images/persib-bandung-vs-psm-makassar-2023-113.jpg",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Hitung-hitungan Persib Bandung Menyalip PSM Makassar, Masih Berpotensi Jadi Juara Liga 1 2022?',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Persib Bandung masih berpotensi menyalip PSM Makassar dalam perburuan gelar juara Liga 1 2022/2023. Seperti diketahui, Persib Bandung kini berada di posisi kedua klasemen sementara Liga 1 2022/2023 dengan raihan poin 59. Terpaut 10 poin, PSM Makassar berada di pucuk klasemen dengan raihan 69 poin. Dilansir Tribun Jabar, Persib Bandung memang mengalami pasang surut performa selama mengarungi setiap pertandingan Liga 1 2022/2023 ini.Artikel ini telah tayang di TribunWow.com dengan judul Hitung-hitungan Persib Bandung Menyalip PSM Makassar, Masih Berpotensi Jadi Juara Liga 1 2022?",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Like: $likeCount'),
                          const SizedBox(width: 10),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          setState(() {
            likeCount++;
          });
          print(likeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}

class NewsDetailScreenHot extends StatefulWidget {
  const NewsDetailScreenHot({
    super.key,
    required this.newsDetailHot,
  });
  final String newsDetailHot;

  @override
  State<NewsDetailScreenHot> createState() => _NewsDetailScreenHotState();
}

class _NewsDetailScreenHotState extends State<NewsDetailScreenHot> {
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BERITA PANAS!! HOTHOT",
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "https://t-2.tstatic.net/wow/foto/bank/images/anggota-exco-pssi-arya-sinulingga-piala-dunia.jpg",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Exco PSSI: Peluang Indonesia Jadi Tuan Rumah Piala Dunia U-20 Berat, Dianggap Tidak Mampu oleh FIFA',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Anggota Komite Eksekutif (Exco) PSSI, Arya Sinulingga, mengungkap perkembangan terkini menyangkut masa depan Indonesia sebagai tuan rumah Piala Dunia U-20 2023. Dalam keterangan persnya yang disampaikan di sejumlah stasiun televisi, Arya terlihat tampak lesu menyampaikan update hasil pertemuan Ketua Panitia Lokal (LOC), Erick Thohir, dengan Presiden FIFA pada Rabu (29/3). “Peluang kita menjadi tuan rumah berat. Kondisi Indonesia berat, keputusan akhir di tangan FIFA. Kita dianggap tidak mampu oleh FIFA,” kata Arya Sinulingga seperti rilis yang diterima TribunWow.com pada Rabu (29/3) malam. Artikel ini telah tayang di TribunWow.com dengan judul Exco PSSI: Peluang Indonesia Jadi Tuan Rumah Piala Dunia U-20 Berat, Dianggap Tidak Mampu oleh FIFA",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 10),
                    Text(' Like: $likeCount')
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          setState(() {
            likeCount++;
          });
          print(likeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
