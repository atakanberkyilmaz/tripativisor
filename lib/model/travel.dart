class Travel {
  String name;
  String location;
  String url;
  String price;
  String overview;
  String itenary;

  Travel(this.name, this.location, this.url, this.price, this.overview,
      this.itenary);

  static List<Travel> generateTravelBlog() {
    return [
      Travel(
        'Atakule',
        'Ankara',
        'assets/images/ankara.jpg',
        'Günlük 200TL!',
        "Atakule Alışveriş Merkezi, Ankara'da, döner restoranlı kulesi ile meşhur alışveriş merkezi. Çankaya semtinde, Cinnah Caddesi ile Çankaya Caddesi'nin kesiştiği, Zübeyde Hanım Meydanı'na cepheli konumdadır.",
        "Atakule'nin çatısında manzaraya karşı yemek yemek ister misin? Ya da Alışveriş merkezini keşfetmek?",
      ),
      Travel(
        'Amasya',
        'Bartın',
        'assets/images/bartın.jpg',
        'Günlük 300TL!',
        'Denize doğru uzanmış bir burun, burnun iki yanında korunaklı birer liman görevi gören iki koy ve ana karaya bağlı bağımsız adalarına sahip olan Amasra, antik dönem de Amastris 3000 yıllık tarihi, hem çekicilik ve balıkçılığa dayanan yerel sanatları, hem de kendini çevreleyen ormanlık alanlarına sahip bir yerleşim yeridir.',
        "Amasra'da denize karşı kahvaltı yapmak ister misin ? ",
      ),
      Travel(
        'Eğirdir',
        'Isparta',
        'assets/images/ısparta.jpg',
        'Günlük 400TL!',
        "Eğirdir ve çevresinin Arvaza Krallığı (M.Ö.2000-1200) döneminden beri meskun olduğu kayıtlardan anlaşılmaktadır.Eğirdir Gölü güney ucu merkez olmak üzere Burdur Gölü'ne kadar olan bölgeye İlkçağ'da Askania adının verildiği sanılmaktadır.",
        "Eğirdir Plajın'da güneşlenmek ister misin?",
      ),
      Travel(
        'Yeşil Türbe',
        'Bursa',
        'assets/images/bursa.jpg',
        'Günlük 500TL!',
        "Yeşil Türbe Yıldırım Bayezid’in oğlu Sultan Mehmet Çelebi tarafından 1421 yılında yaptırılmıştır. Yeşil Külliye'nin bir parçası olan türbenin mimarı Hacı İvaz Paşa’dır. Bursa'nın sembolü hâline gelen yapı şehrin her yerinden görülebilecek bir konuma sahiptir.",
        "Bursa'nın mimarisiyle öne çıkan türbeyi gezmek ister misin?",
      ),
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel(
        'Kapadokya',
        'Nevşehir',
        'assets/images/kapadokya.jpeg',
        'Günlük 600TL!',
        'Kapadokya, 60 milyon yıl önce Erciyes, Hasandağı ve Göllüdağ’ın püskürttüğü lav ve küllerin oluşturduğu yumuşak tabakaların milyonlarca yıl boyunca yağmur ve rüzgâr tarafından aşındırılmasıyla ortaya çıkan bölgedir',
        "'UNESCO tarafından korunan Kapadokya'da balonlar ile gezmek ister misin?",
      ),
      Travel(
        'Efes Antik Kenti',
        'İzmir',
        'assets/images/efes.jpg',
        'Günlük 500TL',
        "Efes, Anadolu'nun batı kıyısında, bugünkü İzmir ilinin Selçuk ilçesinin üç kilometre güneybatısında yer alan antik bir Luvi şehriydi. Şehir Anadolu'da Yunan sömürgeciliğinin başlamasıyla birlikte İyonya ve daha sonra Roma dönemlerinde de önemini korumuştur. Kuruluşu Cilalı Taş Devri'ne yani MÖ 6000 yıllarına dayanır.",
        "M.Ö 6000'lere dayanan tarihiyle Efes'te gezmek ister misin?",
      ),
      Travel(
        'Kızkulesi',
        'İstanbul',
        'assets/images/kızkulesi.jpg',
        'Günlük 400TL',
        "Kız Kulesi, İstanbul Boğazı'nın Marmara Denizi'ne yakın kısmında, Salacak açıklarında yer alan küçük adacık üzerinde inşa edilmiş yapıdır",
        "Kız Kulesi'nde masallar gibi bir gün geçirmek ister misin?",
      ),
      Travel(
          'Ankara Kalesi',
          'Ankara',
          'assets/images/ankarakalesi.jpg',
          'Günlük 100TL!',
          "İngilizceden çevrilmiştir-Ankara Kalesi, 7. yüzyılda veya sonrasında inşa edilmiş, Türkiye'nin Ankara şehrinde tarihi bir surdur. Alandaki en eski sur, MÖ 8. yy'da Frigler tarafından inşa edilmiş ve MÖ 278'de Galatlar tarafından yeniden inşa edilmiştir.",
          "Ankara Kalesin'de manzaraya karşı keyif yapmak ister misin?",),
    ];
  }

  static List<Travel> activitiesBlog() {
    return [
      Travel(
          'TBMM',
          'Ankara',
          'assets/images/tbmm.jpg',
          'Günlük 200 TL!',
          "Türkiye Büyük Millet Meclisi, 23 Nisan 1920'de Osmanlı Devleti'nin İtilaf Devletleri'nce işgaline direniş göstermek üzere Türk milletinin ortaya koyduğu irade ile kurulan, asli görevi yürütmeyi denetlemek olan ve yasama erkini kullanan Türkiye Cumhuriyeti'nin anayasal devlet organıdır",
          "Atatürk'ün bastığı yerlerde gezmek ister misin?"),
      Travel(
        'Vialand',
        'İstanbul',
        'assets/images/vialand.jpg',
        'Günlük 5000TL!',
        "Vialand ya da eski adıyla İstanbul, Türkiye’de inşa edilmiş ilk tema parktır. İstanbul ilinin Eyüpsultan ve Gaziosmanpaşa ilçelerinin kesişim noktası üzerinde yer alan park, 26 Mayıs 2013 tarihinde dönemin başbakanı Recep Tayyip Erdoğan tarafından resmen hizmete açıldı. Vialand’da tema parka ek olarak alışveriş merkezi ve otel de yer almaktadır.",
          "Vialand'de arkadşaların ile eğlenmek ister misin?",
      ),
    ];
  }
}
