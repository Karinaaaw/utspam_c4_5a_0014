class Obat {
  final String id;
  final String nama;
  final String kategori;
  final String gambar;
  final double harga;
  final String deskripsi;

  Obat({
    required this.id,
    required this.nama,
    required this.kategori,
    required this.gambar,
    required this.harga,
    required this.deskripsi,
  });

  Map<String, dynamic> keJson() {
    return {
      'id': id,
      'nama': nama,
      'kategori': kategori,
      'gambar': gambar,
      'harga': harga,
      'deskripsi': deskripsi,
    };
  }

  factory Obat.dariJson(Map<String, dynamic> json) {
    return Obat(
      id: json['id'],
      nama: json['nama'],
      kategori: json['kategori'],
      gambar: json['gambar'],
      harga: json['harga'].toDouble(),
      deskripsi: json['deskripsi'],
    );
  }
}
