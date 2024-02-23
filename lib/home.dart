import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 25, 25),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            _buildProfileContainer(),
            SizedBox(height: 20),
            _buildThemeContainer(),
            SizedBox(height: 15),
            _buildLogoutContainer(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildProfileContainer() {
    return Center(
      child: Container(
        height: 370,
        width: 350,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 42, 36, 36),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('assets/1.jpg'),
              ),
            ),
            Text(
              "Yasser Soliman",
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildColoredContainer(
                  iconData: Icons.event_available,
                  text: "Age",
                  subtext: "26 Years",
                  color: Colors.blue.shade100,
                  iconColor: Colors.blue,
                  borderColor: Colors.blue,
                ),
                _buildColoredContainer(
                  iconData: Icons.balance,
                  text: "Weight",
                  subtext: "78 Kg",
                  color: Colors.green.shade100,
                  iconColor: Colors.green,
                  borderColor: Colors.green,
                ),
                _buildColoredContainer(
                  iconData: Icons.expand,
                  text: "Height",
                  subtext: "179.0 Cm",
                  color: Colors.red.shade100,
                  iconColor: Colors.red,
                  borderColor: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColoredContainer({
    required IconData iconData,
    required String text,
    required String subtext,
    required Color color,
    required Color iconColor,
    required Color borderColor,
  }) {
    return Container(
      width: 90,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: Border.all(color: borderColor),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Icon(iconData, color: iconColor, size: 40),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtext,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThemeContainer() {
    return Center(
      child: Container(
        height: 150,
        width: 350,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 42, 36, 36),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.sunny, color: Colors.yellow),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Dark Theme",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Switch(value: true, onChanged: (color) {}),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.black),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.language, color: Colors.green),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "English",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 190),
                    child: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoutContainer() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 70,
        width: 350,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 42, 36, 36),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(
                Icons.logout,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 42, 36, 36),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: GNav(
        padding: EdgeInsets.all(20),
        gap: 8,
        color: Colors.white,
        activeColor: Colors.green,
        tabs: [
          GButton(icon: Icons.home, text: "Home"),
          GButton(icon: Icons.trending_up, text: "Analytics"),
          GButton(icon: Icons.medication, text: "Prescriptions"),
          GButton(icon: Icons.person, text: "Profile"),
        ],
      ),
    );
  }
}
