import 'package:flutter/material.dart';

class Lonelyboy extends StatefulWidget {
  const Lonelyboy({ Key? key }) : super(key: key);

  @override
  _LonelyboyState createState() => _LonelyboyState();
}

class _LonelyboyState extends State<Lonelyboy> {
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
        title: Text('The Lonely Boy', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
                  image: AssetImage('images/lonelyboy.jpg'),
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
                        Text("The Lonely Boy", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        Text('by: Nimriel Sigua', style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
                        SizedBox(height: 10.0),
                        Text(
                          'In a quiet little town nestled between rolling hills and whispering pines, there lived a boy named Eli. From the outside, the town was full of life: children laughed as they raced their bicycles down the cobblestone streets, shopkeepers chatted with neighbors, and the scent of freshly baked bread filled the air. But amidst the bustling village, Eli was always alone.\n\nEli was small for his age, with tousled brown hair and eyes the color of stormy skies. He had a quietness about him, an unspoken melancholy that kept others at a distance. While other children played in the open fields or shared stories around the campfire, Eli would sit at the edge of the forest, tracing shapes in the dirt with a stick or watching the branches sway gently in the wind.\n\nPeople whispered about him. Some said he was peculiar, a boy with too many thoughts and too few words. Others claimed he was cursed, doomed to loneliness by some long-forgotten spell. Eli, however, didn’t think much about why he was alone; he simply accepted it as part of who he was.\n\nHis days followed the same quiet routine until one afternoon, while exploring deeper into the woods than ever before, Eli stumbled upon an old, moss-covered stone archway. Vines twisted and curled around it, but through the gaps, he could see a shimmer of light that seemed to dance and beckon. His curiosity piqued, Eli stepped through.\n\nOn the other side, the world looked the same yet felt different—more vibrant, alive with a soft hum he could almost hear. Flowers that didn’t grow in the town bloomed in impossible colors, and a stream babbled with a laughter-like sound. For the first time, Eli felt a warmth that filled the space inside him where loneliness usually sat.\n\n“You’re not alone here,” a gentle voice said. Eli turned and saw a girl about his age with hair as golden as the sun. Her eyes sparkled with a kindness he’d never known.\n\n“Who are you?” Eli managed to ask, his voice rough from disuse.\n\n“My name is Lila,” she said with a smile. “I’ve been waiting for someone to find this place. It’s where the lonely come to find friends.”\n\nThey spent hours together, sharing stories and laughter that rang through the trees. With Lila, Eli discovered that he could smile, that he could speak without fear. The world beyond the archway became their secret haven, a place where loneliness was just a memory and the air was filled with connection.\n\nIn time, Eli returned to the town with newfound confidence. He still cherished quiet moments at the edge of the forest, but now he was no longer a shadow. The other children began to notice his smiles and the way he carried stories like treasures. Eli was still himself—thoughtful, soft-spoken—but he was no longer alone. And whenever he needed a reminder of that, he knew just where to go: through the old stone archway, to the world where loneliness had turned into light.\n',
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