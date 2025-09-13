import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 3.0, top: 10, right: 3, bottom: 3),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF072e4d),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(),
                      const Center(
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 45,
                              backgroundColor: Color(0xFFeefaf8),
                                child: Icon(Icons.person_2_outlined, color: Color(0xFF04897c,), size: 50,),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "John Kolog",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),Text(
                              "233553354349",
                              style: TextStyle(color: Colors.white54, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.logout_rounded, color: Colors.white, size: 18,),
                          SizedBox(width: 3),
                          Text("Logout", style: TextStyle(color: Colors.white, fontSize: 12),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select your business", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),),
                      SizedBox(height: 20),
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              bool isWide = constraints.maxWidth > 600;

                              Widget content = Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/logo.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                  const SizedBox(width: 10, height: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Rain Inn Supermarket",
                                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          "Super Administrator . Default",
                                          style: TextStyle(color: Colors.black54),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                              return isWide ? content : Column(children: [content]);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
