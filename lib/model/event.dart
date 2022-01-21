class Event {
  final String imagePath,
      title,
      description,
      location,
      duration,
      ticket,
      punchLine1,
      punchLine2;
  final List categoryIds, galleryImages;

  Event(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.location,
      required this.duration,
      required this.punchLine1,
      required this.punchLine2,
      required this.categoryIds,
      required this.galleryImages,
      required this.ticket});
}

final animeEvent = Event(
    imagePath: "assets/event_images/Itatchi.jpg",
    title: "Anime Event",
    description:
        "Cosplayers gather to show off their costumes, meet other cosplayers,fan arts canvas, and participate in shoots together.",
    location: "Amman - 8th Cercule",
    duration: "7h",
    ticket: "1(JD)",
    punchLine1: "Anime Fans Gatherings!",
    punchLine2: "fans gather together to indulge in all things anime.",
    galleryImages: [
      "assets/event_images/anime.jpg",
      "assets/event_images/anime2.jpg",
      "assets/event_images/anime3.jpg",
      "assets/event_images/anime4.jpg",
      "assets/event_images/anime5.jpg",
    ],
    categoryIds: [
      0,
      1
    ]);

final foodEvent = Event(
    imagePath: "assets/event_images/food.jpg",
    title: "Food Truck Event",
    description:
        "Guest list fill up fast so be sure to apply before handto secure a spot.",
    location: "Food Court Avenue - Amman International Stadium",
    duration: "1D",
    ticket: "Price Is Not Specified",
    punchLine1: "The Trucks Is Here",
    punchLine2: "Are You Hungry?",
    categoryIds: [
      0,
      2
    ],
    galleryImages: [
      "assets/event_images/food.jpg",
      "assets/event_images/food2.jpg",
      "assets/event_images/food3.jpg",
    ]);

final gaming = Event(
    imagePath: "assets/event_images/watt.png",
    title: "Gaming Event",
    description: "Listen to Arijit's latest compositions.",
    location: "R2 Gaming Center - Amman",
    duration: "5h",
    ticket: "20(JD)",
    punchLine1: "Are You Ready?",
    punchLine2: "Let The Games BEGIN",
    galleryImages: [
      "assets/event_images/predetor.jpg",
      "assets/event_images/gaming.jpg",
      "assets/event_images/gaming2.jpg"
    ],
    categoryIds: [
      0,
      3
    ]);

final musicConcert = Event(
    imagePath: "assets/event_images/oms.png",
    title: "الامسية الموسيقية (همسات و انغام)",
    description:
        "يتشرف معهد ميوزيك ماسترز لدعوتكم لحضور الأمسية الموسيقية همسات وأنغام لفرقة حليم للموسيقى وذلك يوم السبت الموفق ٢٢-١-٢٠٢٢ على مسرح المركز الثقافي الملكي",
    location: "Queen Rania Al Abdallah Street, Amman",
    duration: "open",
    ticket: "15(JD)",
    punchLine1: "تشكلت الفرقة من قبل المؤلف ومتخصص آلة القانون حليم الخطيب!",
    punchLine2: "عد مرحلة طويلة من الدراسة الموسيقية والأكاديمية والانخراط بالعمل الموسيقي عزفا وتأليفا وتوزيعا وفترة غير قصيرة من التمارين الجماعية والعمل الموسيقي المنظم الذي نتج عنه حالة من الانسجام والتميز الموسيقي لتكون مشروع ثقافي موسيقي فكري هادف ايضا تقديم كل ما هو اصيل ومتقن من الموسيقى العربية .",
    galleryImages: [],
    categoryIds: [0, 4]);

final charityDonationsAndBazaar = Event(
    imagePath: "assets/event_images/charity.jpg",
    title: "Charity Donations And Bazaar",
    description: "All Money Raised Will Be Donated",
    location: "Princess Alia Highschool For Girls - Amman",
    duration: "12H",
    ticket: "FREE",
    punchLine1: "We Rise",
    punchLine2: "By Lifting Others",
    galleryImages: [
      "assets/event_images/charity2.jpg",
      "assets/event_images/charity3.jpg",
    ],
    categoryIds: [
      0,
      5
    ]);

final events = [
  animeEvent,
  foodEvent,
  musicConcert,
  gaming,
  charityDonationsAndBazaar,
];
