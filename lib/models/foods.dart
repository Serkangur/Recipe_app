class Food {
  final int foodId;
  final int price;
  final String level;
  final double rating;

  final String degree;
  final String category;
  final String foodName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Food(
      {required this.foodId,
      required this.price,
      required this.category,
      required this.foodName,
      required this.level,
      required this.rating,
      required this.degree,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  //List of Plants data
  static List<Food> foodList = [
    Food(
        foodId: 0,
        price: 22,
        category: 'Tavuk',
        foodName: 'Tüm Tavuk',
        level: 'Orta',
        rating: 4.5,
        degree: '200 derece',
        imageURL: 'assets/images/food-two.png',
        isFavorated: true,
        decription:
            'Malzemeler; \n -1 adet küçük boy bütün tavuk \n -1 dilim limon \n -Tuz \n Üzeri için;  \n -1 yemek kaşığı yoğurt \n -1 çay kaşığı domates salçası \n Fırında bütün tavuk kızartması için; \n derin bir tencere içine 1 adet küçük boy bütün tavuğu koyun. Üzerine çıkacak kadar su ekleyin. Tavuk pişerken kokusunu alması içine suyuna bir dilim limon parçası koyun. Tuzu da ekleyip, tavuğu yumuşayana kadar pişirin.  ',
        isSelected: false),
    Food(
        foodId: 1,
        price: 11,
        category: 'Pasta',
        foodName: 'Pizza',
        level: 'Zor',
        rating: 4.8,
        degree: '200',
        imageURL: 'assets/images/food-one.png',
        isFavorated: false,
        decription:
            'Malzemeler; \n -5 su bardağı un \n -1 paket instant maya (ya da yarım paket yaş maya) \n -1 yemek kaşığı toz şeker Yarım yemek kaşığı tuz \n -4 yemek kaşığı zeytinyağı \n -2 su bardağı ılık su \n Sosu İçin; \n -2 su bardağı domates sosu \n -2 yemek kaşığı zeytinyağı \n -1 çay kaşığı kuru fesleğen \n -1 çay kaşığı kekik \n Üzeri İçin; \n -Mozzarella peyniri \n -Kaşar peyniri \n -Sucuk \n -Sosis \n -Domates kurusu \n -Mantar Mısır \n Yapılışı; \n 1.Unu yoğurma kabına alalım ve ortasını havuz şeklinde açalım. \n 2.Unun ortasına instant maya, şeker, tuz, zeytinyağı ve ılık suyu yavaş yavaş ilave ederek hamurumuzu yoğurmaya başlayalım. \n 3.İnstant maya yerine yarım paket yaş mayada kullanabilirsiniz. \n 4.Yumuşak kıvamlı ele yapışmayan bir hamur elde edelim. \n 5.Toparlanan hamurumuzun üzerini streç film örterek yaklaşık 30 dk kadar mayalanmaya bırakalım. \n 6.Mayalanan hamurun üzerini açalım ve un serptiğimiz tezgaha hamuru alalım. \n 7.Elimizle yine toparlayıp havasını aldıktan sonra 2 eşit parçaya bölelim. \n 8.Eğer ince hamurlu pizza hazırlamak istiyorsanız aynı hamuru 3 parçaya da bölebilirsiniz. \n 9.Kestiğimiz parçayı beze haline getirerek un serptiğimiz tezgahta merdane yardımıyla açalım. \n 10.Hafifçe un serperek merdaneye yapışmamasını sağlayabilirsiniz. \n 11.Açtığımız hamuru pizza tepsisine almadan önce boyutu uygun mu diye kontrol edelim. \n 12.Açtığımız hamuru unladığımız pizza tepsisine alalım ve elimizle etrafını düzeltelim. \n 13.Dilerseniz normal fırın tepsisine pişirme kağıdı sererek veya altına mısır unu serperek de hazırlayabilirsiniz. \n 14.Bir çatal yardımıyla hamurumuzun tüm yüzeyine delikler açalım böylelikle hamur pişerken kabarmayacaktır. \n 15.Pizza tepsisini önceden ısıttığımız 200° fırına sürerek hamurumuzu 10 dk pişirelim. \n 16.Hamurumuz pişerken pizzanın sosu için domates sosu, zeytinyağı, kuru fesleğen ve kekiği ekleyerek güzelce karıştıralım. \n 17.Yarı pişen hamurumuzu fırından alıp hazırladığımız sosu üzerine bolca sürelim. \n 18.Kenarlarına doğruda güzelce sürersek kenarlarıda daha güzel kızaracaktır. \n 19.Domates sosunun üzerine bolca mozzarella peyniri rendesi veya kaşar peyniri rendesini yerleştirelim. \n 20.Üzerine tercihe göre dilimlenmiş sucuk, dilimlenmiş sosis, domates kurusu,dilimlenmiş mantar ve mısır tanelerini ekleyelim. \n 21.Son olarak pizzamızı tekrar fırına sürelim ve 200° fırında 20 dk daha pişmeye bırakalım. \n 22.Peynirleri güzel bir şekilde eriyen sucukları sosisleri gayet nefis bir şekilde pişen pizzamız servise hazır. ',
        isSelected: false),
    Food(
        foodId: 2,
        price: 18,
        category: 'Çorba',
        foodName: 'Şehriyeli Tavuk Çorbası',
        level: 'Kolay',
        rating: 4.7,
        degree: '100',
        imageURL: 'assets/images/food-three.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 3,
        price: 30,
        category: 'Etli',
        foodName: 'Taco',
        level: 'Orta',
        rating: 4.5,
        degree: 'Yok',
        imageURL: 'assets/images/food-four.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 4,
        price: 24,
        category: 'Makarna',
        foodName: 'Spagetti',
        level: 'Kolay',
        rating: 4.1,
        degree: '100',
        imageURL: 'assets/images/food-five.png',
        isFavorated: true,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 5,
        price: 24,
        category: 'Etli',
        foodName: 'Hamburger',
        level: 'Zor',
        rating: 4.4,
        degree: 'Yok',
        imageURL: 'assets/images/food-six.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 6,
        price: 19,
        category: 'Çorba',
        foodName: 'Patates Çorbası',
        level: 'Kolay',
        rating: 4.2,
        degree: '100',
        imageURL: 'assets/images/food-seven.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 7,
        price: 23,
        category: 'Makarna',
        foodName: 'Noddle',
        level: 'Orta',
        rating: 4.5,
        degree: '100',
        imageURL: 'assets/images/food-eight.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 8,
        price: 46,
        category: 'Hamur İşi',
        foodName: 'Patila',
        level: 'Orta',
        rating: 4.7,
        degree: 'Yok',
        imageURL: 'assets/images/food-nine.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
  ];

  //Get the favorated items
  static List<Food> getFavoritedPlants() {
    List<Food> _travelList = Food.foodList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Food> addedToCartPlants() {
    List<Food> _selectedPlants = Food.foodList;
    return _selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}
