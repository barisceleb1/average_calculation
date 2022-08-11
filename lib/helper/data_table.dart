import 'package:average_calculation/model/department.dart';
  final allDepartment =  <Department>[
    const Department(ders: 'Yabancı Dil 1', kredi: 2, donem: 'Güz Dönemi', sinif: 1),
    const Department(ders: 'Türk Dili 1', kredi: 2, donem: 'Güz Dönemi', sinif: 1),
    const Department(ders: 'Fizik 1', kredi: 3, donem: 'Güz Dönemi', sinif: 1),
    const Department(ders: 'Matematik 1', kredi: 4, donem: 'Güz Dönemi', sinif: 1),
    const Department(
        ders: 'Bilişim Teknolojileri', kredi: 2, donem: 'Güz Dönemi', sinif: 1),
    const Department(ders: 'Lineer Cebir', kredi: 2, donem: 'Güz Dönemi', sinif: 1),
    const Department(
        ders: 'Algoritma ve Programlama 1',
        kredi: 4,
        donem: 'Güz Dönemi',
        sinif: 1),
    const Department(
        ders: 'Bilgisayar Müh. Giriş', kredi: 2, donem: 'Güz Dönemi', sinif: 1),
    const Department(ders: 'Yabancı Dil 2', kredi: 2, donem: 'Bahar Dönemi', sinif: 1),
    const Department(ders: 'Türk Dili 2', kredi: 2, donem: 'Bahar Dönemi', sinif: 1),
    const Department(ders: 'Fizik 2', kredi: 3, donem: 'Bahar Dönemi', sinif: 1),
    const Department(ders: 'Matematik 2', kredi: 4, donem: 'Bahar Dönemi', sinif: 1),
    const Department(
        ders: 'Algoritma ve Programlama 2',
        kredi: 4,
        donem: 'Bahar Dönemi',
        sinif: 1),
    const Department(
        ders: 'Mühendislik Etiği', kredi: 2, donem: 'Bahar Dönemi', sinif: 1),
    const Department(
        ders: 'Elektrik Devreleri ve Elektronik',
        kredi: 4,
        donem: 'Bahar Dönemi',
        sinif: 1),
    const Department(
        ders: 'İş Sağlığı ve Güvenliği',
        kredi: 2,
        donem: 'Bahar Dönemi',
        sinif: 1),
    const Department(
        ders: 'Kariyer Planlama', kredi: 1, donem: 'Bahar Dönemi', sinif: 1),
    const Department(
        ders: 'Ayrık İşlemsel Yapılar', kredi: 3, donem: 'Güz Dönemi', sinif: 2),
    const Department(ders: 'Sayısal Analiz', kredi: 3, donem: 'Güz Dönemi', sinif: 2),
    const Department(
        ders: 'Sayısal Elektronik', kredi: 4, donem: 'Güz Dönemi', sinif: 2),
    const Department(ders: 'Veri Yapıları', kredi: 4, donem: 'Güz Dönemi', sinif: 2),
    const Department(
        ders: 'Mühendislik Matematiği', kredi: 3, donem: 'Güz Dönemi', sinif: 2),
    const Department(
        ders: 'Mesleki Yabancı Dil 1', kredi: 3, donem: 'Güz Dönemi', sinif: 2),
    const Department(
        ders: 'Atatürk İlke ve İnkılap Tarihi 1',
        kredi: 2,
        donem: 'Güz Dönemi',
        sinif: 2),
    const Department(
        ders: 'Serbest Seçmeli Ders', kredi: 2, donem: 'Güz Dönemi', sinif: 2),
    const Department(
        ders: 'Olasılık ve İstatistik',
        kredi: 3,
        donem: 'Bahar Dönemi',
        sinif: 2),
    const Department(
        ders: 'Programlama Dil. Prensip.',
        kredi: 3,
        donem: 'Bahar Dönemi',
        sinif: 2),
    const Department(
        ders: 'Bilgisayar Organizasyonu',
        kredi: 3,
        donem: 'Bahar Dönemi',
        sinif: 2),
    const Department(
        ders: 'Nesneye Dayalı Programlama',
        kredi: 4,
        donem: 'Bahar Dönemi',
        sinif: 2),
    const Department(
        ders: 'Mesleki Yabancı Dil 2', kredi: 3, donem: 'Bahar Dönemi', sinif: 2),
    const Department(
        ders: 'Atatürk İlke ve İnkılap Tarihi 2',
        kredi: 2,
        donem: 'Bahar Dönemi',
        sinif: 2),
    const Department(ders: 'Staj 1', kredi: 0, donem: 'Bahar Dönemi', sinif: 2),
    const Department(
        ders: 'Serbest Seçmeli Ders 2', kredi: 2, donem: 'Güz Dönemi', sinif: 2),
    const Department(
        ders: 'Biçimsel Dil. ve Soyut Makine.',
        kredi: 3,
        donem: 'Güz Dönemi',
        sinif: 3),
    const Department(
        ders: 'Sinyal ve Sistemler', kredi: 3, donem: 'Güz Dönemi', sinif: 3),
    const Department(
        ders: 'İşletim Sistemleri', kredi: 3, donem: 'Güz Dönemi', sinif: 3),
    const Department(
        ders: 'Veritabanı Yönetim Sistem',
        kredi: 4,
        donem: 'Güz Dönemi',
        sinif: 3),
    const Department(
        ders: 'Mühendislik Ekonomisi', kredi: 2, donem: 'Güz Dönemi', sinif: 3),
    const Department(
        ders: 'Algoritma Analizi', kredi: 3, donem: 'Güz Dönemi', sinif: 3),
    const Department(
        ders: 'Serbest Seçmeli Ders 3', kredi: 2, donem: 'Güz Dönemi', sinif: 3),
    const Department(
        ders: 'Mikroişlemciler', kredi: 4, donem: 'Bahar Dönemi', sinif: 3),
    const Department(
        ders: 'Sistem Programlama', kredi: 3, donem: 'Bahar Dönemi', sinif: 3),
    const Department(
        ders: 'Yazılım Mühendisliği', kredi: 3, donem: 'Bahar Dönemi', sinif: 3),
    const Department(ders: 'Staj 2', kredi: 0, donem: 'Bahar Dönemi', sinif: 3),
    const Department(
        ders: 'İnternet Teknolojileri',
        kredi: 4,
        donem: 'Bahar Dönemi',
        sinif: 3),
    const Department(
        ders: 'Bilgisayar Ağları', kredi: 4, donem: 'Bahar Dönemi', sinif: 3),
    const Department(
        ders: 'Sosyal Seçmeli Ders', kredi: 2, donem: 'Bahar Dönemi', sinif: 3),
    const Department(
        ders: 'Bil. Müh. Proje Tasarımı',
        kredi: 3,
        donem: 'Güz Dönemi',
        sinif: 4),
    const Department(
        ders: 'Girişimcilik ve Liderlik',
        kredi: 3,
        donem: 'Güz Dönemi',
        sinif: 4),
    const Department(
        ders: 'Mesleki Seçmeli Ders', kredi: 3, donem: 'Güz Dönemi', sinif: 4),
    const Department(
        ders: 'Diploma Çalışması', kredi: 1, donem: 'Güz Dönemi', sinif: 4),
    const Department(
        ders: 'Diploma Çalışması', kredi: 1, donem: 'Bahar Dönemi', sinif: 4),
    const Department(
        ders: 'Mesleki Seçmeli Ders', kredi: 3, donem: 'Bahar Dönemi', sinif: 4),
  ];



