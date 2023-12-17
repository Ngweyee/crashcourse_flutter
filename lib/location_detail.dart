import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(this.location.name)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, location),
        )
    );
  }

  List<Widget> _renderFacts(Location location) {
    List<Widget> result = [];
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    List<Widget> result = [];
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(location));
    return result;
  }


  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
      child: Text(text)
      );
  }

  Widget _sectionTitle(String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(title, textAlign: TextAlign.left, style: TextStyle(
        fontSize: 25.0,
        color: Colors.black,
        ),
      ),
    );
  }

  Widget _bannerImage(String imageUrl, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(imageUrl, fit: BoxFit.fitWidth),
    );
  }
}