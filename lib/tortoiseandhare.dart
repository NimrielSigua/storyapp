import 'package:flutter/material.dart';

class Tortoiseandhare extends StatefulWidget {
  const Tortoiseandhare({Key? key}) : super(key: key);

  @override
  _TortoiseandhareState createState() => _TortoiseandhareState();
}

class _TortoiseandhareState extends State<Tortoiseandhare> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false; // Track if scrolled

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      // Update the state based on scroll position
      if (_scrollController.offset > 200) {
        setState(() {
          _isScrolled = true; // Show arrow if scrolled down
        });
      } else {
        setState(() {
          _isScrolled = false; // Hide arrow if at the top
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose(); // Dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Tortoise and the Hare', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        elevation: 4.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/tortoiseandhare.webp'), // Ensure this image exists
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text("The Tortoise and the Hare", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        Text('by: Aesop', style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
                        SizedBox(height: 10.0),
                        Text(
                          "Once upon a time, in a lush green forest, a hare was boasting about how fast he could run. He pranced around the meadow, showing off to all the animals.\n\n"
                          "\"I am the fastest creature in the forest!\" the hare bragged. \"No one can beat me in a race, not even the wind!\"\n\n"
                          "The other animals were tired of the hare’s arrogance. Then, a slow-moving tortoise raised his head and said, \"Hare, I may not be as swift as you, but I am willing to challenge you to a race.\"\n\n"
                          "The hare laughed so hard he nearly fell over. \"You? Challenge me? This will be too easy!\"\n\n"
                          "The other animals gathered to watch, eager to see the outcome. The fox, known for being wise and fair, marked the starting and finishing lines.\n\n"
                          "\"Ready, set, go!\" the fox shouted.\n\n"
                          "The hare zoomed off, quickly leaving the tortoise far behind. Confident that he was sure to win, the hare decided to take a nap under a shady tree.\n\n"
                          "\"I’ll just rest here for a while,\" the hare thought. \"There’s no way the tortoise will catch up.\"\n\n"
                          "Meanwhile, the tortoise plodded along, slowly but steadily. He never stopped to rest, never got distracted, and kept his eyes on the finish line.\n\n"
                          "As the sun began to set, the tortoise was nearing the end of the race. The animals cheered him on, their excitement waking the hare.\n\n"
                          "The hare leaped up and dashed toward the finish line, but it was too late. Just as he reached the line, the tortoise crossed it first!\n\n"
                          "The forest erupted in cheers. The hare hung his head in shame as the tortoise smiled humbly.\n\n"
                          "The tortoise turned to the hare and said, \"You may be fast, but perseverance and determination win the race.\"",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Back to Top Button
            if (_isScrolled) // Show arrow only if scrolled
              IconButton(
                icon: Icon(Icons.arrow_upward, size: 30), // Arrow icon
                onPressed: () {
                  _scrollController.animateTo(
                    0, // Scroll to top
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}