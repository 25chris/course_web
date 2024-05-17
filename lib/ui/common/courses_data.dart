import 'package:chris_website/ui/common/app_strings.dart';

class CoursesData {
  final myCoursesData = [
    {
      'id': 0,
      'path': 'optimalisasi-aplikasi-flutter-menggunakan-stacked-architecture',
      'judul': 'Optimalisasi Aplikasi Flutter Menggunakan Stacked Architecture',
      'deskripsi':
          'Pelajari cara meningkatkan performa aplikasi Flutter Anda dengan mengintegrasikan Stacked Architecture secara efisien. Kursus ini akan membahas dari dasar hingga tingkat lanjut, termasuk manajemen state dan UI.',
      'image': rectanglePhoto(512, 288),
      'harga': 275000,
      'jumlahVideo': 10,
      'konten': [
        'Mengenal apa itu Stacked Architecture.',
        'Mempelajari tata cara instalasi Stacked CLI yang tepat.',
        'Mempelajari pembuatan aplikasi dengan memanfaatkan fitur-fitur Stacked.',
        'Mempelajari custom link dan dynamic path yang tidak disediakan Flutter secara default.'
      ],
      'goals': [
        'Terbiasa dalam pengembangan aplikasi berbasis Flutter dengan memanfaatkan Stacked Architecture.',
        'Membuat aplikasi Flutter dengan lebih cepat menggunakan fitur-fitur yang disediakan Stacked CLI.',
        'Membuat apilikasi website berbasis Flutter dengan efektifitas user experiences yang jauh lebih baik.',
        'Menutupi kekurangan Flutter dalam pengembangan aplikasi website (web app) terutama di bagian Custom URLs dan Dynamic Path Segment.',
        'Menjadi developer Flutter dengan tingkat pembuatan lebih cepat dan akurat'
      ],
      'sesi': [
        {
          'judulSesi': 'Pengenalan Stacked Architecture',
          'videos': [
            {
              'judulVideo': 'Dasar-dasar Stacked Architecture',
              'deskripsiVideo':
                  'Mulai perjalanan Anda dengan memahami konsep dasar Stacked Architecture dan bagaimana hal ini bisa mengubah cara pengembangan aplikasi Flutter.',
              'durasiVideo': '15 menit'
            },
            {
              'judulVideo': 'Arsitektur dan Aliran Data',
              'deskripsiVideo':
                  'Pahami arsitektur umum dan aliran data dalam Stacked untuk memaksimalkan kinerja aplikasi.',
              'durasiVideo': '20 menit'
            }
          ]
        },
        {
          'judulSesi': 'Instalasi Stacked CLI',
          'videos': [
            {
              'judulVideo': 'Instalasi dan Setup Stacked CLI',
              'deskripsiVideo':
                  'Langkah demi langkah instalasi Stacked CLI dan setup awal untuk proyek Flutter Anda.',
              'durasiVideo': '10 menit'
            }
          ]
        },
        {
          'judulSesi': 'Pembuatan Landing Page',
          'videos': [
            {
              'judulVideo': 'Struktur Halaman Utama',
              'deskripsiVideo':
                  'Belajar membangun Landing Page dengan Stacked yang responsif dan menarik.',
              'durasiVideo': '15 menit'
            },
            {
              'judulVideo': 'Integrasi Komponen UI',
              'deskripsiVideo':
                  'Mengintegrasikan berbagai komponen UI ke dalam Landing Page Anda.',
              'durasiVideo': '15 menit'
            },
            {
              'judulVideo': 'Navigasi dan Routing',
              'deskripsiVideo':
                  'Implementasi navigasi dan routing yang efisien menggunakan Stacked.',
              'durasiVideo': '18 menit'
            },
            {
              'judulVideo': 'Optimasi Performa Halaman',
              'deskripsiVideo':
                  'Tips dan trik untuk mengoptimalkan performa halaman web Anda.',
              'durasiVideo': '12 menit'
            }
          ]
        },
        {
          'judulSesi': 'State Management',
          'videos': [
            {
              'judulVideo': 'Pengenalan State Management dengan Stacked',
              'deskripsiVideo':
                  'Konsep dasar dan penerapan State Management menggunakan Stacked.',
              'durasiVideo': '20 menit'
            },
            {
              'judulVideo': 'Best Practices dalam State Management',
              'deskripsiVideo':
                  'Pelajari praktik terbaik dalam mengelola state dalam aplikasi Flutter.',
              'durasiVideo': '25 menit'
            },
            {
              'judulVideo': 'Kasus Penggunaan Lanjutan',
              'deskripsiVideo':
                  'Menangani kasus-kasus penggunaan lanjutan dalam manajemen state.',
              'durasiVideo': '30 menit'
            }
          ]
        }
      ]
    },
    {
      'id': 1,
      'path': 'bloc-flutter-untuk-pemula',
      'judul': 'BLoC Flutter untuk Pemula',
      'deskripsi':
          'Kursus komprehensif ini dirancang untuk mengajarkan Anda tentang Business Logic Component (BLoC) di Flutter, yang memungkinkan pemisahan antara logika bisnis dan antarmuka pengguna. Ideal untuk pengembang yang ingin menerapkan manajemen state yang efektif.',
      'image': rectanglePhoto(512, 288),
      'harga': 300000,
      'jumlahVideo': 10,
      "konten": [
        "Mengenal apa itu BLoC (Business Logic Component) di Flutter.",
        "Langkah-langkah dasar instalasi dan konfigurasi BLoC di aplikasi Flutter.",
        "Cara menggunakan BLoC untuk mengelola state dalam aplikasi Flutter.",
        "Studi kasus sederhana: Implementasi BLoC dalam aplikasi to-do list."
      ],
      "goals": [
        "Memahami konsep dasar dan kegunaan BLoC dalam pengembangan aplikasi Flutter.",
        "Mampu menginstal dan mengkonfigurasi BLoC di lingkungan pengembangan Flutter.",
        "Terampil dalam menggunakan BLoC untuk manajemen state yang efisien.",
        "Meningkatkan kemampuan dalam membangun aplikasi yang lebih bersih dan terstruktur dengan Flutter menggunakan BLoC."
      ],
      'sesi': [
        {
          'judulSesi': 'Pengenalan ke BLoC',
          'videos': [
            {
              'judulVideo': 'Apa itu BLoC?',
              'deskripsiVideo':
                  'Pelajari konsep dasar BLoC dan keuntungannya dalam pengembangan aplikasi Flutter.',
              'durasiVideo': '12 menit'
            },
            {
              'judulVideo': 'Arhitektur BLoC',
              'deskripsiVideo':
                  'Menggali lebih dalam tentang bagaimana BLoC diorganisir dan bekerja dalam aplikasi Flutter.',
              'durasiVideo': '18 menit'
            }
          ]
        },
        {
          'judulSesi': 'Setup dan Konfigurasi BLoC',
          'videos': [
            {
              'judulVideo': 'Setting Awal untuk BLoC',
              'deskripsiVideo':
                  'Panduan langkah demi langkah untuk mengatur BLoC di proyek Flutter Anda.',
              'durasiVideo': '15 menit'
            }
          ]
        },
        {
          'judulSesi': 'Membangun Aplikasi dengan BLoC',
          'videos': [
            {
              'judulVideo': 'Mengimplementasikan BLoC di Aplikasi',
              'deskripsiVideo':
                  'Cara mengintegrasikan BLoC dalam pembuatan aplikasi sederhana.',
              'durasiVideo': '20 menit'
            },
            {
              'judulVideo': 'Manajemen Event dan State',
              'deskripsiVideo':
                  'Pengelolaan event dan state dalam BLoC untuk aplikasi yang responsif.',
              'durasiVideo': '22 menit'
            },
            {
              'judulVideo': 'Debugging BLoC',
              'deskripsiVideo':
                  'Teknik debugging untuk menemukan dan memperbaiki bug dalam implementasi BLoC.',
              'durasiVideo': '17 menit'
            },
            {
              'judulVideo': 'Kasus Penggunaan Nyata',
              'deskripsiVideo':
                  'Menerapkan BLoC dalam skenario dunia nyata dan pengembangan fitur kompleks.',
              'durasiVideo': '25 menit'
            }
          ]
        },
        {
          'judulSesi': 'Best Practices dan Tips',
          'videos': [
            {
              'judulVideo': 'Tips Efisiensi dengan BLoC',
              'deskripsiVideo':
                  'Strategi untuk meningkatkan efisiensi dan kinerja saat menggunakan BLoC.',
              'durasiVideo': '15 menit'
            },
            {
              'judulVideo': 'Anti-patterns dan Kesalahan Umum',
              'deskripsiVideo':
                  'Mengidentifikasi dan menghindari kesalahan umum dalam penggunaan BLoC.',
              'durasiVideo': '16 menit'
            },
            {
              'judulVideo': 'Optimalisasi Performa Aplikasi',
              'deskripsiVideo':
                  'Trik dan teknik untuk optimasi performa aplikasi dengan BLoC.',
              'durasiVideo': '19 menit'
            }
          ]
        }
      ]
    },
    {
      'id': 2,
      'path': 'integrasi-payment-gateway-midtrans-di-aplikasi-flutter',
      'judul': 'Integrasi Payment Gateway Midtrans di Aplikasi Flutter',
      'deskripsi':
          'Kursus ini dirancang untuk membimbing Anda melalui proses integrasi gateway pembayaran Midtrans ke dalam aplikasi Flutter Anda. Ideal untuk pengembang yang ingin memasukkan solusi pembayaran yang efisien dan aman dalam aplikasi mereka.',
      'image': rectanglePhoto(512, 288),
      'harga': 350000,
      'jumlahVideo': 9,
      "konten": [
        "Apa itu Midtrans dan bagaimana cara kerjanya dalam sistem pembayaran.",
        "Langkah-langkah integrasi API Midtrans di Flutter.",
        "Pengaturan Callbacks dan Handlers untuk mengelola respon pembayaran.",
        "Implementasi fitur keamanan dan verifikasi pembayaran dalam aplikasi."
      ],
      "goals": [
        "Memahami dasar-dasar dan alur kerja Midtrans sebagai gateway pembayaran.",
        "Mampu mengintegrasikan Midtrans dalam aplikasi e-commerce berbasis Flutter.",
        "Menguasai pengelolaan dan pemeriksaan status pembayaran secara real-time.",
        "Menjamin keamanan transaksi pembayaran melalui implementasi teknik pengamanan yang efektif."
      ],
      'sesi': [
        {
          'judulSesi': 'Pengenalan ke Midtrans',
          'videos': [
            {
              'judulVideo': 'Mengenal Midtrans',
              'deskripsiVideo':
                  'Pengenalan umum tentang Midtrans dan keuntungan menggunakan payment gateway ini di aplikasi Flutter.',
              'durasiVideo': '10 menit'
            },
            {
              'judulVideo': 'Dokumentasi dan Sumber Daya Midtrans',
              'deskripsiVideo':
                  'Panduan untuk memahami dokumentasi Midtrans dan sumber daya yang tersedia untuk pengembang.',
              'durasiVideo': '12 menit'
            }
          ]
        },
        {
          'judulSesi': 'Setup Midtrans di Flutter',
          'videos': [
            {
              'judulVideo': 'Konfigurasi Awal Midtrans',
              'deskripsiVideo':
                  'Langkah-langkah konfigurasi awal untuk mengintegrasikan Midtrans dalam proyek Flutter Anda.',
              'durasiVideo': '15 menit'
            }
          ]
        },
        {
          'judulSesi': 'Implementasi Pembayaran',
          'videos': [
            {
              'judulVideo': 'Integrasi API Pembayaran',
              'deskripsiVideo':
                  'Cara mengintegrasikan API pembayaran Midtrans ke dalam aplikasi Flutter untuk transaksi.',
              'durasiVideo': '20 menit'
            },
            {
              'judulVideo': 'Pengelolaan State Pembayaran',
              'deskripsiVideo':
                  'Pengelolaan state pembayaran dan penanganan respons dari Midtrans.',
              'durasiVideo': '18 menit'
            },
            {
              'judulVideo': 'Uji Coba dan Validasi',
              'deskripsiVideo':
                  'Proses melakukan uji coba dan validasi integrasi pembayaran untuk memastikan semuanya berjalan dengan lancar.',
              'durasiVideo': '15 menit'
            },
            {
              'judulVideo': 'Kesalahan Umum dan Solusinya',
              'deskripsiVideo':
                  'Mengidentifikasi dan mengatasi kesalahan umum yang terjadi selama integrasi Midtrans.',
              'durasiVideo': '17 menit'
            }
          ]
        },
        {
          'judulSesi': 'Keamanan dan Best Practices',
          'videos': [
            {
              'judulVideo': 'Menjamin Keamanan Transaksi',
              'deskripsiVideo':
                  'Teknik untuk memastikan transaksi Anda aman saat menggunakan Midtrans.',
              'durasiVideo': '14 menit'
            },
            {
              'judulVideo': 'Praktik Terbaik dalam Integrasi Pembayaran',
              'deskripsiVideo':
                  'Praktik terbaik yang harus diikuti untuk integrasi pembayaran yang sukses dan minim error.',
              'durasiVideo': '16 menit'
            }
          ]
        }
      ]
    },
    {
      'id': 3,
      'path':
          'keterampilan-dasar-komputer-yang-essensial-untuk-karyawan-kantor',
      'judul':
          'Keterampilan Dasar Komputer yang Essensial untuk Karyawan Kantor',
      'deskripsi':
          'Kursus ini memberikan pelatihan tentang keterampilan dasar komputer yang penting untuk karyawan di lingkungan kantor modern. Pelajari cara menggunakan aplikasi penting, manajemen file, dasar-dasar keamanan internet, dan banyak lagi untuk meningkatkan efisiensi dan produktivitas di tempat kerja.',
      'image': rectanglePhoto(512, 288),
      'harga': 0,
      'jumlahVideo': 8,
      "konten": [
        "Dasar-dasar penggunaan sistem operasi Windows dan macOS.",
        "Penggunaan aplikasi perkantoran: Microsoft Office dan alternatif gratis seperti LibreOffice.",
        "Manajemen email efektif dan teknik pencarian informasi di internet.",
        "Pengenalan kepada cloud storage dan kolaborasi online menggunakan Google Drive dan Microsoft OneDrive."
      ],
      "goals": [
        "Menguasai fungsi dasar dari sistem operasi yang umum digunakan di lingkungan kantor.",
        "Meningkatkan keterampilan dalam menggunakan aplikasi produktivitas seperti Microsoft Word, Excel, dan PowerPoint.",
        "Mampu melakukan komunikasi dan manajemen informasi secara elektronik dengan efisien.",
        "Memahami cara menggunakan cloud storage dan platform kolaborasi untuk meningkatkan efisiensi kerja."
      ],
      'sesi': [
        {
          'judulSesi': 'Dasar Penggunaan Komputer',
          'videos': [
            {
              'judulVideo': 'Memulai dengan Komputer',
              'deskripsiVideo':
                  'Pengenalan kepada hardware komputer dasar dan cara penggunaannya.',
              'durasiVideo': '15 menit'
            },
            {
              'judulVideo': 'Mengelola Windows dan Aplikasi',
              'deskripsiVideo':
                  'Cara menggunakan sistem operasi Windows dan mengelola aplikasi yang berjalan di atasnya.',
              'durasiVideo': '18 menit'
            }
          ]
        },
        {
          'judulSesi': 'Pengolahan Kata dan Spreadsheet',
          'videos': [
            {
              'judulVideo': 'Pengantar Microsoft Word',
              'deskripsiVideo':
                  'Dasar-dasar menggunakan Microsoft Word untuk membuat dan mengedit dokumen.',
              'durasiVideo': '20 menit'
            },
            {
              'judulVideo': 'Pengantar Microsoft Excel',
              'deskripsiVideo':
                  'Belajar dasar-dasar Microsoft Excel untuk pengolahan data dan penggunaan formula.',
              'durasiVideo': '22 menit'
            }
          ]
        },
        {
          'judulSesi': 'Email dan Internet',
          'videos': [
            {
              'judulVideo': 'Menggunakan Email secara Efektif',
              'deskripsiVideo':
                  'Keterampilan menggunakan email untuk komunikasi bisnis yang efektif, termasuk etiket email.',
              'durasiVideo': '15 menit'
            },
            {
              'judulVideo': 'Navigasi dan Pencarian Internet',
              'deskripsiVideo':
                  'Teknik dasar untuk menggunakan internet, termasuk pencarian informasi yang efisien.',
              'durasiVideo': '17 menit'
            }
          ]
        },
        {
          'judulSesi': 'Keamanan dan Manajemen File',
          'videos': [
            {
              'judulVideo': 'Dasar Keamanan Komputer',
              'deskripsiVideo':
                  'Pentingnya keamanan komputer dan langkah-langkah dasar untuk melindungi data.',
              'durasiVideo': '15 menit'
            },
            {
              'judulVideo': 'Manajemen File dan Folder',
              'deskripsiVideo':
                  'Cara mengelola file dan folder dengan efektif di komputer Anda.',
              'durasiVideo': '16 menit'
            }
          ]
        }
      ]
    }
  ];
}
