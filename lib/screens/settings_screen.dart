import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Toggle Theme',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Switch(
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (value) {
                themeProvider.toggleTheme();
              },
            ),
            SizedBox(height: 20),
            Icon(
              themeProvider.themeMode == ThemeMode.dark
                  ? Icons.nightlight_round
                  : Icons.wb_sunny,
              size: 50,
              color: themeProvider.themeMode == ThemeMode.dark
                  ? Colors.yellow
                  : Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
