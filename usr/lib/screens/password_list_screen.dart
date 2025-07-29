import 'package:flutter/material.dart';
import '../models/password_model.dart';
import '../widgets/password_list_item.dart';

class PasswordListScreen extends StatefulWidget {
  const PasswordListScreen({Key? key}) : super(key: key);

  @override
  _PasswordListScreenState createState() => _PasswordListScreenState();
}

class _PasswordListScreenState extends State<PasswordListScreen> {
  // Dummy data for demonstration
  final List<Password> _passwords = [
    Password(id: '1', siteName: 'Google', username: 'user@gmail.com', password: 'password123'),
    Password(id: '2', siteName: 'Facebook', username: 'user@facebook.com', password: 'password456'),
    Password(id: '3', siteName: 'Twitter', username: 'user@twitter.com', password: 'password789'),
    Password(id: '4', siteName: 'Github', username: 'user@github.com', password: 'password101'),
    Password(id: '5', siteName: 'LinkedIn', username: 'user@linkedin.com', password: 'password112'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Manager'),
      ),
      body: ListView.builder(
        itemCount: _passwords.length,
        itemBuilder: (context, index) {
          return PasswordListItem(password: _passwords[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // In a real app, this would open a screen to add a new password.
        },
        child: const Icon(Icons.add),
        tooltip: 'Add Password',
      ),
    );
  }
}
