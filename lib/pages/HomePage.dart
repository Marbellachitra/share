import 'package:flutter/material.dart';
import 'MembersPage.dart';
import 'StopwatchPage.dart';
import 'SitesPage.dart';
import 'FavoritesPage.dart';
import 'HelpPage.dart';
import '../widgets/navbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeContent(),
    HelpPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Mobile"),
        centerTitle: true,
        backgroundColor: Colors.transparent, // Make AppBar transparent
        elevation: 0, // Remove shadow from AppBar
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue[900]!,
                  Colors.blue[500]!,
                ], // Gradient background
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          _pages[_selectedIndex],
        ],
      ),
      bottomNavigationBar: Navbar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.5, // Adjusting aspect ratio for better card layout
          children: [
            _buildCard(
              context,
              title: "Daftar Anggota",
              icon: Icons.group,
              page: MembersListPage(),
            ),
            _buildCard(
              context,
              title: "Stopwatch",
              icon: Icons.timer,
              page: StopwatchPage(),
            ),
            _buildCard(
              context,
              title: "Daftar Situs",
              icon: Icons.web,
              page: SitesPage(),
            ),
            _buildCard(
              context,
              title: "Favorite",
              icon: Icons.favorite,
              page: FavoritesPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, {required String title, required IconData icon, required Widget page}) {
    return Card(
      elevation: 10, // Elevated shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // More rounded corners
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page));
        },
        borderRadius: BorderRadius.circular(20), // Match card radius for InkWell
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // White background for the card
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 60,
                  color: Colors.pink[600], // Pink icon color
                ),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.brown, // Maroon text color
                    fontSize: 22, // Increased font size
                    fontWeight: FontWeight.bold,
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
