import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';

class UserDetailView extends StatelessWidget {
  const UserDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding:
            const EdgeInsets.only(top: 70, right: 16, left: 16, bottom: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('assets/user1.png'), // Placeholder image
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Christiana Amandla',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Lets Learning to smart',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(
                        8.0), // Add some padding to the circle
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white, // White background for the circle
                        shape: BoxShape.circle, // Circular shape
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.search,
                            color:
                                Colors.black), // Arrow icon inside the circle
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Course Progress Section
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors
                              .green[100], // White background for the circle
                          shape: BoxShape.rectangle,
                          borderRadius: const BorderRadius.all(
                              Radius.circular(10)) // Circular shape
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Mathematics Course',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 120,
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                                color: Colors.green[
                                    300], // White background for the circle
                                shape: BoxShape.rectangle,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(5)) // Circular shape
                                ),
                            child: const FittedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.calendar_today,
                                      color: Colors.green),
                                  Text('19 Nov, 2023'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.green[
                                      100], // White background for the circle
                                  shape: BoxShape.circle, // Circular shape
                                ),
                                child: const Icon(Icons.check_circle,
                                    color: Colors.green)),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Completed'),
                                Text(
                                  '20',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 50, // Height of the divider
                          width: 1, // Width of the divider
                          color: Colors.green[100], // Divider color
                        ),
                        Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.green[
                                      100], // White background for the circle
                                  shape: BoxShape.circle, // Circular shape
                                ),
                                child: const Icon(Icons.access_time,
                                    color: Colors.green)),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Hours Spent'),
                                Text(
                                  '455',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Popular Course Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Course',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('View All'))
                ],
              ),
              const SizedBox(height: 10),
              // Course List
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CourseCard(
                      title: 'Photoshop Editing Course',
                      participants: 230,
                      lessons: 30,
                      rating: 4.8,
                      icon: "assets/photoshop_image.png",
                    ),
                    SizedBox(width: 10),
                    CourseCard(
                      title: 'Illustrator Editing Course',
                      participants: 220,
                      lessons: 30,
                      rating: 4.8,
                      icon: 'assets/illustrator_image.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Popular Course Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Course',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('View All'))
                ],
              ),
              const SizedBox(height: 5),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 2, // The number of courses
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          // Course Icon/Image
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              border: Border.all(
                                  color: Colors.grey.shade200), // Grey border
                              borderRadius:
                                  BorderRadius.circular(8), // Rounded corners
                            ),
                            child: Image.asset(
                              "assets/photoshop_image.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Course Details
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  index == 0
                                      ? 'Adobe XD Editing Course'
                                      : index == 1
                                          ? 'Photoshop Editing Course'
                                          : 'Illustrator Editing Course',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.orange, size: 16),
                                    SizedBox(width: 4),
                                    Text(
                                      '4.8 ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '(230)',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.play_circle_outline,
                                            color: Colors.grey, size: 16),
                                        SizedBox(width: 4),
                                        Text('30 Lessons'),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        //currentIndex: 0, // Current selected index
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final int participants;
  final int lessons;
  final double rating;
  final String icon;

  const CourseCard(
      {super.key,
      required this.title,
      required this.participants,
      required this.lessons,
      required this.rating,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 70,
            width: 70,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: AvatarStack(
                  height: 25,
                  settings: RestrictedPositions(
                    maxCoverage: 0.2,
                    minCoverage: 0.5,
                    align: StackAlign.left,
                  ),
                  avatars: [
                    for (var n = 0; n < 5; n++) AssetImage("assets/user$n.png"),
                  ],
                ),
              ),
              Text(
                'Participants',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 1, // Height of the divider
            width: double.infinity, // Width of the divider
            color: Colors.green[100], // Divider color
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange, size: 16),
                  Text(
                    '$rating ($participants)',
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                '$lessons Lessons',
                style: const TextStyle(fontSize: 10),
              ),
            ],
          )
        ],
      ),
    );
  }
}
