import 'package:flutter/material.dart';
import 'package:scrolls_to_top/scrolls_to_top.dart';

class APage extends StatefulWidget {
  const APage({super.key});

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ScrollsToTop(
        onScrollsToTop: (scrollToTopEvent) async {},
        child: Scaffold(
          appBar: AppBar(title: const Text('ScrollToTop')),
          body: ListView.builder(
            controller: controller,
            itemBuilder: (context, index) =>
                _buildItem(Colors.primaries[index]),
            itemCount: Colors.primaries.length,
          ),
        ));
  }

  Widget _buildItem(Color color) {
    return Container(height: 200, color: color);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
