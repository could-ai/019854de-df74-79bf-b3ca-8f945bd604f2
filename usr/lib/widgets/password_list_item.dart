import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/password_model.dart';

class PasswordListItem extends StatelessWidget {
  final Password password;

  const PasswordListItem({Key? key, required this.password}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(password.siteName[0]),
        ),
        title: Text(password.siteName),
        subtitle: Text(password.username),
        trailing: IconButton(
          icon: const Icon(Icons.copy),
          tooltip: 'Copy Password',
          onPressed: () {
            Clipboard.setData(ClipboardData(text: password.password));
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Password copied to clipboard')),
            );
          },
        ),
      ),
    );
  }
}
