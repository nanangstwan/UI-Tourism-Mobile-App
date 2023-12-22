class WisataDataModel {
  String? id;
  String? nama;
  String? image;
  String? alamat;
  String? deskripsi;
  String? telepon;
  String? tiket;

  WisataDataModel(this.id, this.nama, this.image, this.alamat, this.deskripsi,
      this.telepon, this.tiket);
}


final List<Map<String, String>> listData = [
  {
    'id': '001',
    'nama': 'Air Terjun Jumog',
    'alamat':
        'Taman batu tiban, Jl. Jumog, Gandu, Berjo, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah 57793',
    'image': 'image/jumog.jpg',
    'deskripsi':
        'Air Terjun Jumog merupakan salah satu destinasi wisata favorit di Kabupaten Karanganyar, Jawa Tengah. Di lokasi wisata yang dibuka sejak 2004 ini, kalian dapat menikmati indahnya air terjun setinggi 30 meter. Eksotisme air terjun setinggi 30 M ini, sangat sayang jika dilewatkan untuk diabadikan. Di sini ini disediakan pula arena mainan, kolam renang anak-anak, rumah makan, dan panggung hiburan. Akses menuju lokasi Air Terjun Jumog tidaklah sulit. Kalian hanya perlu trekking sekitar 400 meter, menyusuri jalur yang sudah tersedia. Jarak tersebut ditempuh dengan berjalan kaki, melewati sekitar 116 anak tangga.Berjalan menyusuri jalur tersebut, kita akan disuguhi pemandangan yang memukau. Seolah berjalan di lembah antara dua bukit dengan rimbunan yang masih asri. Selama perjalanan akan terlihat juga pemandangan sekitar lereng Gunung Lawu yang asri.Begitu sampai di air terjun, akan langsung terasa hawa dingin, khas pegunungan. Terlihat juga sungai muara air terjun dan jembatan penghubung antara dua sisi jalur trekking. ',
    'telepon': '+62 857-8645-5261.',
    'tiket': 'Rp.15.000,00',
  },
  {
    'id': '002',
    'nama': 'Candi Cetho',
    'alamat':
        'Ceto, RT.01/RW.03, Cetho, Gumeng, Jenawi, Kabupaten Karanganyar, Jawa Tengah 57792',
    'image': 'image/cetho.jpg',
    'deskripsi':
        'Candi Cetho merupakan wisata Budaya yang terletak di di Dusun Ceto, Desa Gumeng, Kecamatan Jenawi, Kabupaten Karanganyar, Jawa Tengah. Candi Cetho buka dari jam 08.00 – 17.00 WIB. Untuk dapat masuk ke Candi Cetho wisatawan cukup membayar tiket masuk untuk wisatawan lokal sebesar Rp.10.000,- dan untuk wisatawan mancanegara sebesar Rp. 30.000,-. Untuk tiket masuk Candi Cetho sudah menggunakan E-Ticketing. Beberapa fasilitas yang tersedia seperti toilet, mushola, toko oleh – oleh dan cindera mata, dan area parkir.  Untuk informasi lebih lanjut, bisa menghubungi nomor berikut 0812-2622-6734. Candi Cetho merupakan Candi bercorak Hindu yang berada di lereng Gunung Lawu yang secara administratif berada di Dusun Ceto, Desa Gumeng, Kecamatan Jenawi, Kabupaten Karanganyar, Jawa Tengah pada ketinggian 1496 m di atas permukaan laut. Dan diduga kuat dibangun pada masa Majapahit di abad 15 Masehi .Seperti Candi Sukuh, Candi Cetho juga menggambarkan konsep Megalitik. Candi Cetho memiliki 13 (tiga belas) teras berundak dari barat ke timur berdasarkan data pada tahun 1928. Akan tetapi pemugaran pada tahun 1978 mengakibatkan teras yang ada tinggal sembilan teras saja.',
    'telepon': '029012910',
    'tiket': 'Rp.10.000,00',
  },
  {
    'id': '003',
    'nama': 'The Lawu Park',
    'alamat':
        'Jl. Raya Tawangmangu, Beji, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792.',
    'image': 'image/taman.jpg',
    'deskripsi':
        'The Lawu Park merupakan wisata buatan di Kabupaten Karanganyar  terletak di Bulakrejo, Gondosuli Kidul, Gondosuli, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792. Buka dari jam 08.00 – 17.00 WIB. Harga tiket masuk untuk wisatawan lokal maupun mancanegara adalah Rp.20.000,- untuk weekday dan Rp.25.000,- untuk weekand dengan beberapa fasilitas yang disediakan untuk kenyamanan pengunjung antara lain Super Glamping, Glamping, Cotage, Snow park, Rabbit arena, Rumah pohon, Jembatan merah, Kolam Sendang Drajat, Outbound area, Wahana adventure, Agrowisata pertanian, dan Grojogan salju, Flying fox, Human Claw, Menunggangi kuda, ATV, Snow World, 3D Cinema, toilet, area parkir, mushola. Untuk informasi lebih lanjut, bisa menghubungi nomor berikut  Reservasi Restaurant & Outbond: 081238923626. Reservasi Resort : 081299428124 . ',
    'telepon':
        'Restaurant & Outbond: 081238923626. Reservasi Resort : 081299428124 ',
    'tiket': 'Rp.25.000,00',
  },
  {
    'id': '004',
    'nama': 'Air Terjun Grojogan Sewu',
    'alamat':
        'Jl. Raya Tawangmangu, Beji, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792.',
    'image': 'image/grojokansewu.jpg',
    'deskripsi':
        'pada saat weekand. Di Air Terjun Grojogan Sewu memiliki fasilitas meliputi Warung makan, Gazebo, Area Bermain, Mushola, Kolam Renang, Toilet, Tempat Parkir, Toko Oleh-Oleh dan Cinderamata. Air Terjun Grojogan Sewu merupakan air terjun dengan tinggi kurang lebih 81 m. Wisata Grojogan Sewu memiliki luas 20 Ha dengan pemandangan alam yang indah serta pohon – pohon rindang yang menjulang tinggi. Arti Grojogan dalam bahasa Jawa berarti air terjun dan sèwu berarti seribu. Apabila digabung Grojogan Sèwu berarti air terjun seribu. Meskipun air terjunnya di sini hanya ada satu akan tetapi ada beberapa titik air terjun yang dapat dinikmati. Disana juga banyak monyet – monyet yang berkeliaran sehingga perlu diperhatikan apabila membawa barang - barang agar lebih diawasi karena bisa saja sewaktu - waktu kera mengambil barang yang pengunjung bawa.',
    'telepon': '081 656 192 9.',
    'tiket': 'Rp.22.000,00',
  },
  {
    'id': '005',
    'alamat':
        'Telaga Madirda, Berjo, Ngargoyoso, Karanganyar Regency, Central Java 57793',
    'nama': 'Telaga Madirda',
    'image': 'image/madirda.jpg',
    'deskripsi':
        'Telaga Madirda merupakan sebuah obyek wisata alam berupa telaga alami, yang terletak di di Dusun Tlogo, Desa Berjo, Kecamatan Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah. Obyek wisata Telaga Madirda buka setiap hari mulai pukul 08.00-16.00 WIB untuk weekday dan 08.00 – 17.30 WIB untuk weekand , sementara untuk camping ground bisa diakses 24 jam. Harga tiket masuk untuk wisatawan lokal dan mancanegara berkisar Rp15.000,- per orang.Obyek wisata Telaga Madirda dilengkapi sejumlah wahana dan fasilitas, seperti gazebo, camping ground, spot berswafoto, mushola, tempat parkir, penjual makanan dan lain-lain. Untuk informasi lebih lanjut, bisa menghubungi nomor berikut +6282211120211 atau mengunjungi media sosial obyek wisata Telaga Madirda di @telagamadirdaofficial via Instagram.',
    'telepon': '+6282211120211',
    'tiket': 'Rp.15.000,00',
  },
  {
    'id': '006',
    'alamat':
        'Jl. Karangpandan-Ngargoyoso, Sumbersari, Kemuning, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah',
    'nama': 'Kemuning Sky Hills',
    'image': 'image/kemuning.jpg',
    'deskripsi':
        'Kemuning Sky Hills merupakan wisata buatan yang terletak di Jl. Karangpandan-Ngargoyoso, Sumbersari, Kemuning, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah , Indonesia, 5779. Buka mulai pukul 09.00-18.30 WIB dengan harga tiket masuk sebesar Rp 10.000,-. Kemuning Sky Hills memiliki fasilitas lengkap mulai dari wana wisata jembatan kaca yang ikonik hingga kafe, toilet, tempat parkir, dan mushola. Untuk informasi lebih lanjut dapat menghubungi 0881-5806-068. Kemuning Sky Hills merupakan Daya Tarik Wisata di Kemuning Ngargoyoso. Yang mana telah diresmikan oleh Bupati Karanganyar Bapak Juliyatmono pada malam pergantian tahun 2022 - 2023. Jembatan kaca sepanjang 120 meter dengan ketinggian mencapai 60 meter dengan ketebalan kaca berkisar 3 cm. Di sini pengunjung dapat melihat hamparan kebun teh yang luas dengan suasana yang sejuk serta pemandangan yang indah dan mempesona',
    'telepon': '0881-5806-068.',
    'tiket': 'Rp.10.000,00',
  },
  {
    'id': '007',
    'alamat':
        'Segorogunung, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah 57793',
    'nama': 'Bukit Paralayang',
    'image': 'image/paralayang.jpg',
    'deskripsi':
        ' Bukit Paralayang merupakan wisata Olahraga di kabupaten Karanganyar terletak di Segorogunung, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah 57793. Bukit Paralayang buka dari jam 08.00 – 21.00 WIB. Harga tiket masuk untuk wisatawan lokal maupun wisatawan mancanegara Rp. 5.000,-. Bagi yang ingin merasakan sensasi terbang dengan paralayang maka pengunjung perlu menyiapkan uang sebesar Rp. 450.000 – Rp. 600.000,- / orang. Beberapa fasilitas yang disediakan meliputi tempat parkir, toilet, dan area food court, mushola, area camping,',
    'telepon': '0823-2440-4424.',
    'tiket': 'Rp.5.000,00',
  },
  {
    'id': '008',
    'alamat':
        'Jl. Raya Matesih-Tawangmangu No.16, Gondosuli Kidul, Tawangmangu, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792',
    'nama': 'Taman Sakura Hills Tawangmangu',
    'image': 'image/sakura.jpg',
    'deskripsi':
        'Taman Sakura Hills Tawangmangu merupakan salah satu wisata alam yang memadukan konsep alam ala negara Jepang dengan pesona Gunung Lawu yang terletak di Jalan Tawangmangu–Magetan, Kecamatan Tawangmangu, Kabupaten Karanganyar. Taman Sakura Hills Tawangmangu buka setiap hari mulai pukul 08.00-16.00 WIB. Harga tiket masuk untuk wisatawan lokal dan mancanegara untuk weekday dewasa Rp.20.000 anak-anak Rp.15.000, untuk weekend dewasa Rp.25.000 anak- anak Rp.15.000 per orang. Taman Sakura Hills Tawangmangu memiliki fasilitas yang cukup lengkap meliputi, area berfoto, cinema 3D, tempat penyewaan mobil jeep, perahu, dan kimono, penginapan, restoran, mushola, toilet dan lahan parkir yang luas. Untuk informasi lebih lanjut, bisa menghubungi nomor +62813-9520-6060 atau mengunjungi media sosial Taman Sakura Hills Tawangmangu di @sakurahills_tawangmangu via Instagram. ',
    'telepon': ' +62813-9520-6060',
    'tiket': 'Rp.15.000,00 - Rp.25.000,00',
  }
];