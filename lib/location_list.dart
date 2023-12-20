import 'package:crashcourse_flutter/location_detail.dart';
import 'package:flutter/material.dart';
import 'models/location.dart';
import 'styles.dart';

class LocationList extends StatefulWidget {
  const LocationList({super.key});

  @override
  State<StatefulWidget> createState() => _LocationListState();
}

class _LocationListState extends State<LocationList> {
  List<Location> locations = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final locations = await Location.fetchAll();
    setState(() {
      this.locations = locations;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Locations", style: Styles.navBarTitle)),
      body: ListView.builder(
        itemCount: this.locations.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    final location = this.locations[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(location),
      title: _itemTitle(location),
      onTap: () {
        print("id is " + location.id.toString());
        _navigateToLocationDetail(context, location.id);
      },
    );
  }

  void _navigateToLocationDetail(BuildContext context, int locationID) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LocationDetail(locationID)),
    );
  }

  Widget _itemThumbnail(Location location) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(location.url, fit: BoxFit.fitWidth),
    );
  }

  Widget _itemTitle(Location location) {
    return Text('${location.name}', style: Styles.textDefault);
  }
}
