class GuideService{

  GuideService._();
  static final GuideService _singleton = GuideService._();
  factory GuideService()=>_singleton;

  final List<Map<String, String>> guides = [
    {
      'title': 'Fin whale',
      'subtitle': 'Balaenoptera Physalus',
      'imageUrl': 'assets/images/fin-whale-balaenoptera-physalus.jpg',
      'duration': '2:55 hrs',
    },
    {
      'title': 'North pacific right whale',
      'subtitle': 'Eubalaena Japonica',
      'imageUrl': 'assets/images/humpback-whale-megaptera-novaengliae.jpg',
      'duration': '1:40 hrs',
    },
    {
      'title': 'Killer whale',
      'subtitle': 'Orcinus orca',
      'imageUrl': 'assets/images/orca-orcinus-orca.jpg',
      'duration': '2:20 hrs',
    },
  ];


}