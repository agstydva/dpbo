import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(-6.2088, 106.8456), // Center the map over London
        initialZoom: 13.0,
      ),
      children: [
        TileLayer( // Display map tiles from any source
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
          userAgentPackageName: 'com.example.app',
          // And many more recommended properties!
        ),
        RichAttributionWidget( // Include a stylish prebuilt attribution widget that meets all requirments
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')), // (external)
            ),
            // Also add images...
          ],
        ),
      ],
    );
  }
}
