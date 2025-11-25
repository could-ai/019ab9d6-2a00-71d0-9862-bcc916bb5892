import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Warehouse Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Navigate back to the login screen
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.inventory),
              title: const Text('Inventory Management'),
              onTap: () {
                // TODO: Navigate to Inventory Screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text('Project Stock'),
              onTap: () {
                // TODO: Navigate to Project Stock Screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text('Reports'),
              onTap: () {
                // TODO: Navigate to Reports Screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('User Management'),
              onTap: () {
                // TODO: Navigate to User Management Screen
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Warehouse Management Dashboard!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
