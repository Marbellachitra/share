import 'package:flutter/material.dart';

class MembersListPage extends StatelessWidget {
  final List<Member> members = [
    Member(name: "John Doe", role: "Lead Designer", imageUrl: "https://via.placeholder.com/100"),
    Member(name: "Jane Smith", role: "Product Manager", imageUrl: "https://via.placeholder.com/100"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Anggota")),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              elevation: 8,
              child: Container(
                height: 120, // Set a fixed height for the cards
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  gradient: LinearGradient(
                    colors: [Colors.blue[400]!, Colors.blue[900]!], // Gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(members[index].imageUrl),
                        radius: 40,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              members[index].name,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // Text color
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              members[index].role,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70, // Subtext color
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Member {
  final String name;
  final String role;
  final String imageUrl;

  Member({required this.name, required this.role, required this.imageUrl});
}
