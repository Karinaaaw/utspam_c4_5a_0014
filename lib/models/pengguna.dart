class Pengguna {
  final String namaLengkap;
  final String email;
  final String nomorTelepon;
  final String alamat;
  final String namaAkun;
  final String kataSandi;

  Pengguna({
    required this.namaLengkap,
    required this.email,
    required this.nomorTelepon,
    required this.alamat,
    required this.namaAkun,
    required this.kataSandi,
  });

  Map<String, dynamic> keJson() {
    return {
      'namaLengkap': namaLengkap,
      'email': email,
      'nomorTelepon': nomorTelepon,
      'alamat': alamat,
      'namaAkun': namaAkun,
      'kataSandi': kataSandi,
    };
  }

  factory Pengguna.dariJson(Map<String, dynamic> json) {
    return Pengguna(
      namaLengkap: json['namaLengkap'],
      email: json['email'],
      nomorTelepon: json['nomorTelepon'],
      alamat: json['alamat'],
      namaAkun: json['namaAkun'],
      kataSandi: json['kataSandi'],
    );
  }
}
