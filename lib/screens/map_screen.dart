import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: const MapOptions(
          initialCenter: LatLng(22.5561697, 88.3362782),
          initialZoom: 15,
          interactionOptions:
              InteractionOptions(flags: ~InteractiveFlag.doubleTapZoom)),
      children: [
        openStreetMapTileLayer, // this variable needs to updates according to initial position selected from other screens
        const MarkerLayer(markers: [ // markers need to be updated as required.
          Marker(
              point: LatLng(22.5561697, 88.3362782),
              width: 60,
              height: 60,
              alignment: Alignment.topCenter,
              child: Icon(Icons.location_pin, size: 60, color: Colors.red))
        ])
      ],
    );
  }
}

TileLayer get openStreetMapTileLayer => TileLayer(
      urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
      userAgentPackageName: "dev.fleaflet.flutter_map.example",
    );
