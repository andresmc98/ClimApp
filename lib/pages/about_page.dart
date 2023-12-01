import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                  'lib/assets/me.png'), // Coloca la ruta de la imagen del creador
            ),
            SizedBox(height: 40),
            Text('Montiel Corral José Andrés'),
            SizedBox(height: 40),
            Text(
              'Creditos:',
            ),
            Text('Iconos Freepik de www.flaticon.com'),
            Text('api del clima de www.meteomatics.com/'),
          ],
        ),
      ),
    );
  }
}
