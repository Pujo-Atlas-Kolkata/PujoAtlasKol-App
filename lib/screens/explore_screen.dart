import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFF4A4458),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xff83080F),
            child: const Text(
              '*',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: const Color(
                    0xFF49454F,
                  ),
                  radius: 28,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      size: 28,
                    ),
                    color: const Color(0xFFD9D9D9),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const PandalCardExploreScreen();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PandalCardExploreScreen extends StatelessWidget {
  const PandalCardExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0XFF211F26),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      margin: const EdgeInsets.only(top: 9, bottom: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            child: Image.network(
              'https://www.hindustantimes.com/ht-img/img/2023/10/18/1600x900/PTI10-16-2023-000166B-0_1697645705604_1697646044415.jpg',
              height: 180,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Demo title lorem ipsum',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'Town, District',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Text('⭐⭐⭐⭐⭐ (5)'),
                const SizedBox(height: 12.5),
                ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color(
                        0xffD0BCFE,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_border_outlined,
                    color: Color(0xff381E72),
                  ),
                  label: Text(
                    'Bookmark',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
                const SizedBox(height: 14),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
