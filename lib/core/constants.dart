class SuraDataModel {
  int suraIndex;
  String suraNameEn;
  String suraNameAr;
  String versesNumber;

  SuraDataModel({
    required this.suraIndex,
    required this.suraNameEn,
    required this.suraNameAr,
    required this.versesNumber,
  });
}

class ConstantsManager {
  static List<SuraDataModel> surasList = [
    SuraDataModel(suraIndex: 1, suraNameEn: "Al-Fatiha", suraNameAr: "الفاتحة", versesNumber: "7"),
    SuraDataModel(
        suraIndex: 2, suraNameEn: "Al-Baqarah", suraNameAr: "البقرة", versesNumber: "286"),
    SuraDataModel(
        suraIndex: 3, suraNameEn: "Aal-E-Imran", suraNameAr: "آل عمران", versesNumber: "200"),
    SuraDataModel(suraIndex: 4, suraNameEn: "An-Nisa'", suraNameAr: "النساء", versesNumber: "176"),
    SuraDataModel(
        suraIndex: 5, suraNameEn: "Al-Ma'idah", suraNameAr: "المائدة", versesNumber: "120"),
    SuraDataModel(suraIndex: 6, suraNameEn: "Al-An'am", suraNameAr: "الأنعام", versesNumber: "165"),
    SuraDataModel(suraIndex: 7, suraNameEn: "Al-A'raf", suraNameAr: "الأعراف", versesNumber: "206"),
    SuraDataModel(suraIndex: 8, suraNameEn: "Al-Anfal", suraNameAr: "الأنفال", versesNumber: "75"),
    SuraDataModel(suraIndex: 9, suraNameEn: "At-Tawbah", suraNameAr: "التوبة", versesNumber: "129"),
    SuraDataModel(suraIndex: 10, suraNameEn: "Yunus", suraNameAr: "يونس", versesNumber: "109"),
    SuraDataModel(suraIndex: 11, suraNameEn: "Hud", suraNameAr: "هود", versesNumber: "123"),
    SuraDataModel(suraIndex: 12, suraNameEn: "Yusuf", suraNameAr: "يوسف", versesNumber: "111"),
    SuraDataModel(suraIndex: 13, suraNameEn: "Ar-Ra'd", suraNameAr: "الرعد", versesNumber: "43"),
    SuraDataModel(suraIndex: 14, suraNameEn: "Ibrahim", suraNameAr: "إبراهيم", versesNumber: "52"),
    SuraDataModel(suraIndex: 15, suraNameEn: "Al-Hijr", suraNameAr: "الحجر", versesNumber: "99"),
    SuraDataModel(suraIndex: 16, suraNameEn: "An-Nahl", suraNameAr: "النحل", versesNumber: "128"),
    SuraDataModel(suraIndex: 17, suraNameEn: "Al-Isra", suraNameAr: "الإسراء", versesNumber: "111"),
    SuraDataModel(suraIndex: 18, suraNameEn: "Al-Kahf", suraNameAr: "الكهف", versesNumber: "110"),
    SuraDataModel(suraIndex: 19, suraNameEn: "Maryam", suraNameAr: "مريم", versesNumber: "98"),
    SuraDataModel(suraIndex: 20, suraNameEn: "Taha", suraNameAr: "طه", versesNumber: "135"),
    SuraDataModel(
        suraIndex: 21, suraNameEn: "Al-Anbiya", suraNameAr: "الأنبياء", versesNumber: "112"),
    SuraDataModel(suraIndex: 22, suraNameEn: "Al-Hajj", suraNameAr: "الحج", versesNumber: "78"),
    SuraDataModel(
        suraIndex: 23, suraNameEn: "Al-Mu’minun", suraNameAr: "المؤمنون", versesNumber: "118"),
    SuraDataModel(suraIndex: 24, suraNameEn: "An-Nur", suraNameAr: "النور", versesNumber: "64"),
    SuraDataModel(
        suraIndex: 25, suraNameEn: "Al-Furqan", suraNameAr: "الفرقان", versesNumber: "77"),
    SuraDataModel(
        suraIndex: 26, suraNameEn: "Ash-Shu'ara", suraNameAr: "الشعراء", versesNumber: "227"),
    SuraDataModel(suraIndex: 27, suraNameEn: "An-Naml", suraNameAr: "النمل", versesNumber: "93"),
    SuraDataModel(suraIndex: 28, suraNameEn: "Al-Qasas", suraNameAr: "القصص", versesNumber: "88"),
    SuraDataModel(
        suraIndex: 29, suraNameEn: "Al-Ankabut", suraNameAr: "العنكبوت", versesNumber: "69"),
    SuraDataModel(suraIndex: 30, suraNameEn: "Ar-Rum", suraNameAr: "الروم", versesNumber: "60"),
    SuraDataModel(suraIndex: 31, suraNameEn: "Luqman", suraNameAr: "لقمان", versesNumber: "34"),
    SuraDataModel(suraIndex: 32, suraNameEn: "As-Sajda", suraNameAr: "السجدة", versesNumber: "30"),
    SuraDataModel(suraIndex: 33, suraNameEn: "Al-Ahzab", suraNameAr: "الأحزاب", versesNumber: "73"),
    SuraDataModel(suraIndex: 34, suraNameEn: "Saba", suraNameAr: "سبأ", versesNumber: "54"),
    SuraDataModel(suraIndex: 35, suraNameEn: "Fatir", suraNameAr: "فاطر", versesNumber: "45"),
    SuraDataModel(suraIndex: 36, suraNameEn: "Ya-Sin", suraNameAr: "يس", versesNumber: "83"),
    SuraDataModel(
        suraIndex: 37, suraNameEn: "As-Saffat", suraNameAr: "الصافات", versesNumber: "182"),
    SuraDataModel(suraIndex: 38, suraNameEn: "Sad", suraNameAr: "ص", versesNumber: "88"),
    SuraDataModel(suraIndex: 39, suraNameEn: "Az-Zumar", suraNameAr: "الزمر", versesNumber: "75"),
    SuraDataModel(suraIndex: 40, suraNameEn: "Ghafir", suraNameAr: "غافر", versesNumber: "85"),
    SuraDataModel(suraIndex: 41, suraNameEn: "Fussilat", suraNameAr: "فصلت", versesNumber: "54"),
    SuraDataModel(suraIndex: 42, suraNameEn: "Ash-Shura", suraNameAr: "الشورى", versesNumber: "53"),
    SuraDataModel(
        suraIndex: 43, suraNameEn: "Az-Zukhruf", suraNameAr: "الزخرف", versesNumber: "89"),
    SuraDataModel(suraIndex: 44, suraNameEn: "Ad-Dukhan", suraNameAr: "الدخان", versesNumber: "59"),
    SuraDataModel(
        suraIndex: 45, suraNameEn: "Al-Jathiya", suraNameAr: "الجاثية", versesNumber: "37"),
    SuraDataModel(suraIndex: 46, suraNameEn: "Al-Ahqaf", suraNameAr: "الأحقاف", versesNumber: "35"),
    SuraDataModel(suraIndex: 47, suraNameEn: "Muhammad", suraNameAr: "محمد", versesNumber: "38"),
    SuraDataModel(suraIndex: 48, suraNameEn: "Al-Fath", suraNameAr: "الفتح", versesNumber: "29"),
    SuraDataModel(
        suraIndex: 49, suraNameEn: "Al-Hujurat", suraNameAr: "الحجرات", versesNumber: "18"),
    SuraDataModel(suraIndex: 50, suraNameEn: "Qaf", suraNameAr: "ق", versesNumber: "45"),
    SuraDataModel(
        suraIndex: 51, suraNameEn: "Adh-Dhariyat", suraNameAr: "الذاريات", versesNumber: "60"),
    SuraDataModel(suraIndex: 52, suraNameEn: "At-Tur", suraNameAr: "الطور", versesNumber: "49"),
    SuraDataModel(suraIndex: 53, suraNameEn: "An-Najm", suraNameAr: "النجم", versesNumber: "62"),
    SuraDataModel(suraIndex: 54, suraNameEn: "Al-Qamar", suraNameAr: "القمر", versesNumber: "55"),
    SuraDataModel(suraIndex: 55, suraNameEn: "Ar-Rahman", suraNameAr: "الرحمن", versesNumber: "78"),
    SuraDataModel(suraIndex: 56, suraNameEn: "Al-Waqia", suraNameAr: "الواقعة", versesNumber: "96"),
    SuraDataModel(suraIndex: 57, suraNameEn: "Al-Hadid", suraNameAr: "الحديد", versesNumber: "29"),
    SuraDataModel(
        suraIndex: 58, suraNameEn: "Al-Mujadila", suraNameAr: "المجادلة", versesNumber: "22"),
    SuraDataModel(suraIndex: 59, suraNameEn: "Al-Hashr", suraNameAr: "الحشر", versesNumber: "24"),
    SuraDataModel(
        suraIndex: 60, suraNameEn: "Al-Mumtahina", suraNameAr: "الممتحنة", versesNumber: "13"),
    SuraDataModel(suraIndex: 61, suraNameEn: "As-Saff", suraNameAr: "الصف", versesNumber: "14"),
    SuraDataModel(suraIndex: 62, suraNameEn: "Al-Jumu'a", suraNameAr: "الجمعة", versesNumber: "11"),
    SuraDataModel(
        suraIndex: 63, suraNameEn: "Al-Munafiqoon", suraNameAr: "المنافقون", versesNumber: "11"),
    SuraDataModel(
        suraIndex: 64, suraNameEn: "At-Taghabun", suraNameAr: "التغابن", versesNumber: "18"),
    SuraDataModel(suraIndex: 65, suraNameEn: "At-Talaq", suraNameAr: "الطلاق", versesNumber: "12"),
    SuraDataModel(
        suraIndex: 66, suraNameEn: "At-Tahrim", suraNameAr: "التحريم", versesNumber: "12"),
    SuraDataModel(suraIndex: 67, suraNameEn: "Al-Mulk", suraNameAr: "الملك", versesNumber: "30"),
    SuraDataModel(suraIndex: 68, suraNameEn: "Al-Qalam", suraNameAr: "القلم", versesNumber: "52"),
    SuraDataModel(suraIndex: 69, suraNameEn: "Al-Haaqqa", suraNameAr: "الحاقة", versesNumber: "52"),
    SuraDataModel(
        suraIndex: 70, suraNameEn: "Al-Ma'arij", suraNameAr: "المعارج", versesNumber: "44"),
    SuraDataModel(suraIndex: 71, suraNameEn: "Nuh", suraNameAr: "نوح", versesNumber: "28"),
    SuraDataModel(suraIndex: 72, suraNameEn: "Al-Jinn", suraNameAr: "الجن", versesNumber: "28"),
    SuraDataModel(
        suraIndex: 73, suraNameEn: "Al-Muzzammil", suraNameAr: "المزمل", versesNumber: "20"),
    SuraDataModel(
        suraIndex: 74, suraNameEn: "Al-Muddathir", suraNameAr: "المدثر", versesNumber: "56"),
    SuraDataModel(
        suraIndex: 75, suraNameEn: "Al-Qiyama", suraNameAr: "القيامة", versesNumber: "40"),
    SuraDataModel(suraIndex: 76, suraNameEn: "Al-Insan", suraNameAr: "الإنسان", versesNumber: "31"),
    SuraDataModel(
        suraIndex: 77, suraNameEn: "Al-Mursalat", suraNameAr: "المرسلات", versesNumber: "50"),
    SuraDataModel(suraIndex: 78, suraNameEn: "An-Naba", suraNameAr: "النبأ", versesNumber: "40"),
    SuraDataModel(
        suraIndex: 79, suraNameEn: "An-Nazi'at", suraNameAr: "النازعات", versesNumber: "46"),
    SuraDataModel(suraIndex: 80, suraNameEn: "Abasa", suraNameAr: "عبس", versesNumber: "42"),
    SuraDataModel(
        suraIndex: 81, suraNameEn: "At-Takwir", suraNameAr: "التكوير", versesNumber: "29"),
    SuraDataModel(
        suraIndex: 82, suraNameEn: "Al-Infitar", suraNameAr: "الإنفطار", versesNumber: "19"),
    SuraDataModel(
        suraIndex: 83, suraNameEn: "Al-Mutaffifin", suraNameAr: "المطففين", versesNumber: "36"),
    SuraDataModel(
        suraIndex: 84, suraNameEn: "Al-Inshiqaq", suraNameAr: "الإنشقاق", versesNumber: "25"),
    SuraDataModel(suraIndex: 85, suraNameEn: "Al-Burooj", suraNameAr: "البروج", versesNumber: "22"),
    SuraDataModel(suraIndex: 86, suraNameEn: "At-Tariq", suraNameAr: "الطارق", versesNumber: "17"),
    SuraDataModel(suraIndex: 87, suraNameEn: "Al-Ala", suraNameAr: "الأعلى", versesNumber: "19"),
    SuraDataModel(
        suraIndex: 88, suraNameEn: "Al-Ghashiya", suraNameAr: "الغاشية", versesNumber: "26"),
    SuraDataModel(suraIndex: 89, suraNameEn: "Al-Fajr", suraNameAr: "الفجر", versesNumber: "30"),
    SuraDataModel(suraIndex: 90, suraNameEn: "Al-Balad", suraNameAr: "البلد", versesNumber: "20"),
    SuraDataModel(suraIndex: 91, suraNameEn: "Ash-Shams", suraNameAr: "الشمس", versesNumber: "15"),
    SuraDataModel(suraIndex: 92, suraNameEn: "Al-Lail", suraNameAr: "الليل", versesNumber: "21"),
    SuraDataModel(suraIndex: 93, suraNameEn: "Ad-Duha", suraNameAr: "الضحى", versesNumber: "11"),
    SuraDataModel(suraIndex: 94, suraNameEn: "Ash-Sharh", suraNameAr: "الشرح", versesNumber: "8"),
    SuraDataModel(suraIndex: 95, suraNameEn: "At-Tin", suraNameAr: "التين", versesNumber: "8"),
    SuraDataModel(suraIndex: 96, suraNameEn: "Al-Alaq", suraNameAr: "العلق", versesNumber: "19"),
    SuraDataModel(suraIndex: 97, suraNameEn: "Al-Qadr", suraNameAr: "القدر", versesNumber: "5"),
    SuraDataModel(suraIndex: 98, suraNameEn: "Al-Bayyina", suraNameAr: "البينة", versesNumber: "8"),
    SuraDataModel(
        suraIndex: 99, suraNameEn: "Az-Zalzala", suraNameAr: "الزلزلة", versesNumber: "8"),
    SuraDataModel(
        suraIndex: 100, suraNameEn: "Al-Adiyat", suraNameAr: "العاديات", versesNumber: "11"),
    SuraDataModel(
        suraIndex: 101, suraNameEn: "Al-Qaria", suraNameAr: "القارعة", versesNumber: "11"),
    SuraDataModel(
        suraIndex: 102, suraNameEn: "At-Takathur", suraNameAr: "التكاثر", versesNumber: "8"),
    SuraDataModel(suraIndex: 103, suraNameEn: "Al-Asr", suraNameAr: "العصر", versesNumber: "3"),
    SuraDataModel(suraIndex: 104, suraNameEn: "Al-Humaza", suraNameAr: "الهمزة", versesNumber: "9"),
    SuraDataModel(suraIndex: 105, suraNameEn: "Al-Fil", suraNameAr: "الفيل", versesNumber: "5"),
    SuraDataModel(suraIndex: 106, suraNameEn: "Quraish", suraNameAr: "قريش", versesNumber: "4"),
    SuraDataModel(suraIndex: 107, suraNameEn: "Al-Ma'un", suraNameAr: "الماعون", versesNumber: "7"),
    SuraDataModel(
        suraIndex: 108, suraNameEn: "Al-Kawthar", suraNameAr: "الكوثر", versesNumber: "3"),
    SuraDataModel(
        suraIndex: 109, suraNameEn: "Al-Kafiroon", suraNameAr: "الكافرون", versesNumber: "6"),
    SuraDataModel(suraIndex: 110, suraNameEn: "An-Nasr", suraNameAr: "النصر", versesNumber: "3"),
    SuraDataModel(suraIndex: 111, suraNameEn: "Al-Masad", suraNameAr: "المسد", versesNumber: "5"),
    SuraDataModel(
        suraIndex: 112, suraNameEn: "Al-Ikhlas", suraNameAr: "الإخلاص", versesNumber: "4"),
    SuraDataModel(suraIndex: 113, suraNameEn: "Al-Falaq", suraNameAr: "الفلق", versesNumber: "5"),
    SuraDataModel(suraIndex: 114, suraNameEn: "An-Nas", suraNameAr: "الناس", versesNumber: "6"),
  ];
}
