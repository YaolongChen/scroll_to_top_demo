import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ScrollToTop')),
      body: ListView.builder(
        controller: PrimaryScrollController.of(context),
        itemBuilder: (context, index) => _buildItem(Colors.primaries[index]),
        itemCount: Colors.primaries.length,
      ),
    );
  }

  Widget _buildItem(Color color) {
    return Container(height: 200, color: color);
  }

}
