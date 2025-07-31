import 'package:flutter/material.dart';
import 'package:password_manager/screens/china_news_screen.dart';
import 'package:password_manager/screens/new_zealand_news_screen.dart';
import 'package:password_manager/screens/thailand_cambodia_news_screen.dart';
import 'package:password_manager/screens/vietnam_news_screen.dart';

class PasswordListScreen extends StatefulWidget {
  const PasswordListScreen({super.key});

  @override
  State<PasswordListScreen> createState() => _PasswordListScreenState();
}

class _PasswordListScreenState extends State<PasswordListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Passwords'),
        actions: [
          IconButton(
            icon: const Icon(Icons.newspaper),
            tooltip: 'China News',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChinaNewsScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.public),
            tooltip: 'New Zealand News',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewZealandNewsScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.flag_outlined),
            tooltip: 'Thailand-Cambodia News',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThailandCambodiaNewsScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.article_outlined),
            tooltip: 'Vietnam News',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VietnamNewsScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with actual password list length
        itemBuilder: (context, index) {
          // Replace with actual password data
          return const ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text('Website Name'),
            subtitle: Text('username'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality to add a new password
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
