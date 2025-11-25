import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EVOLVERE FACADES PVT LTD'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/login'),
            child: const Text(
              'Warehouse Portal',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSection('About Us', 'Evolvere Facades Private Limited is a leading facade engineering, architectural solutions, and construction-support company. We specialize in aluminum façades, glazing, structural fabrication, and innovative building envelope solutions.'),
              const SizedBox(height: 24),
              _buildSection('Services', 'We offer a comprehensive range of services including facade design and engineering, material procurement, fabrication, and on-site installation. Our expertise ensures high-quality and durable facade solutions for commercial and residential projects.'),
              const SizedBox(height: 24),
              _buildSection('Projects', 'Our portfolio showcases a variety of successful projects, highlighting our commitment to excellence and innovation in facade engineering. (Project gallery coming soon).'),
              const SizedBox(height: 24),
              _buildSection('Contact Us', 'Get in touch with our team for consultations and inquiries.\n\nEmail: contact@evolverefacades.com\nPhone: +91 12345 67890\nAddress: 123 Industrial Area, Pune, India'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: const TextStyle(fontSize: 16, height: 1.5),
        ),
      ],
    );
  }
}
