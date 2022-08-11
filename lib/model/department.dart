class Department {
  final String ders;
  final int kredi;
  final String donem;
  final int sinif;

  const Department({
    required this.ders,
    required this.kredi,
    required this.donem,
    required this.sinif,
  });
  Department copy({
    String? ders,
    int? kredi,
    String? donem,
    int? sinif,
  }) =>
      Department(
        ders: ders ?? this.ders,
        kredi: kredi ?? this.kredi,
        donem: donem ?? this.donem,
        sinif: sinif ?? this.sinif,
      );
}