import 'package:flutter/material.dart';

import 'PaymentSuccessScreen.dart';
import 'UserDetailView.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0), // Add some padding to the circle
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white, // White background for the circle
              shape: BoxShape.circle, // Circular shape
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back,
                  color: Colors.black), // Arrow icon inside the circle
              onPressed: () {
                // Action when back arrow is pressed
                Navigator.pop(context);
              },
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(
                8.0), // Add padding similar to the back button
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white, // White background for the circle
                shape: BoxShape.circle, // Circular shape
              ),
              child: IconButton(
                icon: const Icon(Icons.notifications,
                    color: Colors.black), // Notification icon inside the circle
                onPressed: () {
                  // Action for notification icon
                  // Add functionality here
                },
              ),
            ),
          ),
        ],
        title: const Text('Details'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCourseInfoCard(),
            const SizedBox(height: 16),
            _buildVideoList(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const PaymentSuccessScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[400],
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Icon(
                Icons.account_balance_wallet_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const UserDetailView()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[400],
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Enroll Now',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseInfoCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our Student',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            children: List.generate(5, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/user$index.png'),
                  radius: 16,
                ),
              );
            }),
          ),
          const SizedBox(height: 16),
          const Text(
            'Photoshop Editing Course',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.',
            style: TextStyle(color: Colors.grey[600]),
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Row(
                children: [
                  Icon(Icons.book, size: 20),
                  SizedBox(width: 8),
                  Text('30 Lessons'),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Icon(Icons.access_time, size: 20),
                  SizedBox(width: 8),
                  Text('13h 30min'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVideoList() {
    final List<Map<String, String>> videos = [
      {'title': 'Introduction', 'duration': '3h 30min'},
      {'title': 'Install Software', 'duration': '1h 30min'},
      {'title': 'Learn Tools', 'duration': '2h 30min'},
      {'title': 'Tracing Sketsa', 'duration': '2h 30min'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Video',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'View All',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ...videos.map((video) {
          return _buildVideoCard(video['title']!, video['duration']!);
        }),
      ],
    );
  }

  Widget _buildVideoCard(String title, String duration) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8), // Adjust padding for size
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]!), // Grey border
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: Icon(Icons.lock, color: Colors.grey[400], size: 24),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.access_time, size: 12),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    duration,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]!), // Grey border
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.play_circle_fill, color: Colors.green[400]),
                  const SizedBox(width: 8),
                  const Text('Play Video'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
