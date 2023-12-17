import 'package:crashcourse_flutter/models/location_fact.dart';

import '/models/location.dart';

class MockLocation extends Location{
  MockLocation({required super.name, required super.url, required super.facts});


  static Location FetchAny(){
    return Location(name: "Arashiyama Bamboo Grove, Kyoto, Japan", url: "https://goo.gl/Npy2K8", facts: <LocationFact> [
      LocationFact(title: "Summary", text: "While we could go on about the ethernal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight's pleasures extend beyond the pleasure realm."),
      LocationFact(title: "How to Get There", text: "Kyoto airport, with several terminal, is located 16 kilometers south of the city and is also known as Kyoto, Kyoto can also be reached by transport links from other regional airports")
    ]);
  }

}