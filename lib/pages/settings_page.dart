import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final Function(String, String) onCitySelected;

  SettingsPage(this.onCitySelected);

  final List<Map<String, String>> _paises = [
    {'name': 'Hermosillo, México', 'coordinates': '29.0948207,-110.9692202'},
    {'name': 'Lisboa, Portugal', 'coordinates': '38.7077507,-9.1365919'},
    {'name': 'Seoul, South Korea', 'coordinates': '37.5666791,126.9782914'},
    {'name': 'Holanda, Paises Bajos', 'coordinates': '52.5527079,4.8315779'},
    {'name': 'Osaka, Japon', 'coordinates': '34.661629,135.4999268'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemCount: _paises.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_paises[index]['name']!),
            onTap: () {
              onCitySelected(
                  _paises[index]['coordinates']!, _paises[index]['name']!);
              Navigator.pop(context);
            },
          );
        },
      ),
    );
  }
}
