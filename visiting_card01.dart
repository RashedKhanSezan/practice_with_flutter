import 'package:flutter/material.dart';

class VisitingCard extends StatelessWidget {
  const VisitingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 202, 195),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 24),
          child: Center(
            child: Column(
              children: [
                // Top card
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: const Color.fromARGB(213, 116, 167, 138),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              radius: 70,
                              backgroundImage: NetworkImage(
                                  "https://media.licdn.com/dms/image/v2/D5603AQH_SxsLGUQ0NQ/profile-displayphoto-shrink_200_200/B56ZSC5XULHQAk-/0/1737362863828?e=1759968000&v=beta&t=oBlo3KrqqFjamxyKNNmgRkvYH8uTrvbr4Y3jF3ia3XM"),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(255, 44, 62, 80),
                                radius: 20,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_rounded,
                                      size: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          "Rashed Khan Omee",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 22,
                              color: Color(0xFF2C3E50)),
                        ),
                        SizedBox(
                          height: 32,
                          width: 100,
                          child: Divider(
                              thickness: 2,
                              color: const Color.fromARGB(255, 44, 62, 80)),
                        ),
                        const Text(
                          "Flutter Developer",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color.fromARGB(255, 44, 62, 80)),
                        ),
                        const SizedBox(height: 14),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 26),
                // Bottom card
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: const Color.fromARGB(213, 116, 167, 138),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          "Social & Professional",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.black87),
                        ),
                        const SizedBox(height: 20),
                        Divider(
                          thickness: 2,
                          color: const Color.fromARGB(255, 44, 62, 80),
                        ),
                        const SizedBox(height: 30),
                        GridView.count(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 3,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 0.8,
                          children: const [
                            LinkIcon(
                                icon: Icons.business, label: 'Information'),
                            LinkIcon(
                                icon: Icons.calendar_today, label: 'Services'),
                            LinkIcon(icon: Icons.car_crash, label: 'Address'),
                            LinkIcon(icon: Icons.email, label: 'E-Mail'),
                            LinkIcon(icon: Icons.phone, label: 'Phone'),
                            LinkIcon(icon: Icons.web, label: 'Website'),
                            LinkIcon(icon: Icons.work, label: 'Portfolio'),
                            LinkIcon(icon: Icons.code, label: 'GitHub'),
                            LinkIcon(icon: Icons.link, label: 'LinkedIn'),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LinkIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const LinkIcon({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 183, 202, 195),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  blurRadius: 4,
                  offset: Offset(2, 2)),
            ],
          ),
          child:
              Icon(icon, size: 32, color: const Color.fromARGB(255, 59, 26, 6)),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black87),
        ),
      ],
    );
  }
}
