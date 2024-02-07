import 'package:flutter/material.dart';
import 'package:tools/webview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popular Websites',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Category> categories = [
   
   Category(name: 'Social Media', websites: [
  Website(name: 'Facebook', url: 'https://www.facebook.com'),
  Website(name: 'Twitter', url: 'https://www.twitter.com'),
  Website(name: 'Instagram', url: 'https://www.instagram.com'),
  Website(name: 'LinkedIn', url: 'https://www.linkedin.com'),
  Website(name: 'Snapchat', url: 'https://www.snapchat.com'),
  Website(name: 'Pinterest', url: 'https://www.pinterest.com'),
  Website(name: 'Reddit', url: 'https://www.reddit.com'),
  Website(name: 'Tumblr', url: 'https://www.tumblr.com'),
  Website(name: 'WhatsApp', url: 'https://www.whatsapp.com'),
  Website(name: 'Telegram', url: 'https://telegram.org'),
]),

  Category(name: 'News', websites: [
  Website(name: 'CNN', url: 'https://www.cnn.com'),
  Website(name: 'BBC', url: 'https://www.bbc.com'),
  Website(name: 'The New York Times', url: 'https://www.nytimes.com'),
  Website(name: 'Reuters', url: 'https://www.reuters.com'),
  Website(name: 'Al Jazeera', url: 'https://www.aljazeera.com'),
  Website(name: 'Associated Press', url: 'https://apnews.com'),
  Website(name: 'NPR', url: 'https://www.npr.org'),
  Website(name: 'The Guardian', url: 'https://www.theguardian.com'),
  Website(name: 'USA Today', url: 'https://www.usatoday.com'),
  Website(name: 'CNBC', url: 'https://www.cnbc.com'),
]),

    Category(name: 'Search Engines', websites: [
      Website(name: 'Google', url: 'https://www.google.com'),
      Website(name: 'Bing', url: 'https://www.bing.com'),
      Website(name: 'Yahoo', url: 'https://www.yahoo.com'),
      Website(name: 'DuckDuckGo', url: 'https://duckduckgo.com'),
      Website(name: 'Ask', url: 'https://www.ask.com'),
    ]),
    // Add more categories as needed
    Category(name: 'Shopping', websites: [
      Website(name: 'Amazon', url: 'https://www.amazon.com'),
      Website(name: 'eBay', url: 'https://www.ebay.com'),
      Website(name: 'Walmart', url: 'https://www.walmart.com'),
      Website(name: 'Target', url: 'https://www.target.com'),
      Website(name: 'Best Buy', url: 'https://www.bestbuy.com'),
      Website(name: 'AliExpress', url: 'https://www.aliexpress.com'),
      Website(name: 'Etsy', url: 'https://www.etsy.com'),
      Website(name: 'Zappos', url: 'https://www.zappos.com'),
      Website(name: 'Macy\'s', url: 'https://www.macys.com'),
      Website(name: 'Kohl\'s', url: 'https://www.kohls.com'),
    ]),
    Category(name: 'Entertainment', websites: [
      Website(name: 'YouTube', url: 'https://www.youtube.com'),
      Website(name: 'Netflix', url: 'https://www.netflix.com'),
      Website(name: 'Hulu', url: 'https://www.hulu.com'),
      Website(name: 'Disney+', url: 'https://www.disneyplus.com'),
      Website(name: 'Spotify', url: 'https://www.spotify.com'),
      Website(name: 'Twitch', url: 'https://www.twitch.tv'),
      Website(name: 'SoundCloud', url: 'https://soundcloud.com'),
      Website(name: 'Vimeo', url: 'https://vimeo.com'),
      Website(name: 'Crunchyroll', url: 'https://www.crunchyroll.com'),
      Website(name: 'IMDb', url: 'https://www.imdb.com'),
    ]),
    // Science Category
Category(name: 'Science', websites: [
  Website(name: 'National Geographic', url: 'https://www.nationalgeographic.com'),
  Website(name: 'NASA', url: 'https://www.nasa.gov'),
  Website(name: 'Scientific American', url: 'https://www.scientificamerican.com'),
  Website(name: 'Discovery', url: 'https://www.discovery.com'),
  Website(name: 'Nature', url: 'https://www.nature.com'),
  Website(name: 'Science News', url: 'https://www.sciencenews.org'),
  Website(name: 'Popular Science', url: 'https://www.popsci.com'),
  Website(name: 'Live Science', url: 'https://www.livescience.com'),
  Website(name: 'New Scientist', url: 'https://www.newscientist.com'),
  Website(name: 'Space.com', url: 'https://www.space.com'),
]),

// Finance Category
Category(name: 'Finance', websites: [
  Website(name: 'Yahoo Finance', url: 'https://finance.yahoo.com'),
  Website(name: 'Bloomberg', url: 'https://www.bloomberg.com'),
  Website(name: 'CNBC', url: 'https://www.cnbc.com'),
  Website(name: 'Investopedia', url: 'https://www.investopedia.com'),
  Website(name: 'Financial Times', url: 'https://www.ft.com'),
  Website(name: 'The Motley Fool', url: 'https://www.fool.com'),
  Website(name: 'Forbes', url: 'https://www.forbes.com'),
  Website(name: 'MarketWatch', url: 'https://www.marketwatch.com'),
  Website(name: 'Wall Street Journal', url: 'https://www.wsj.com'),
  Website(name: 'Reuters Finance', url: 'https://www.reuters.com/finance'),
]),

// Art & Design Category
Category(name: 'Art & Design', websites: [
  Website(name: 'Behance', url: 'https://www.behance.net'),
  Website(name: 'Dribbble', url: 'https://dribbble.com'),
  Website(name: 'DeviantArt', url: 'https://www.deviantart.com'),
  Website(name: 'ArtStation', url: 'https://www.artstation.com'),
  Website(name: 'Creative Bloq', url: 'https://www.creativebloq.com'),
  Website(name: 'Awwwards', url: 'https://www.awwwards.com'),
  Website(name: 'Designspiration', url: 'https://www.designspiration.net'),
  Website(name: 'Art.com', url: 'https://www.art.com'),
  Website(name: 'Adobe Portfolio', url: 'https://portfolio.adobe.com'),
  Website(name: 'The Design Blog', url: 'https://thedsgnblog.com'),
]),

// Fashion Category
Category(name: 'Fashion', websites: [
  Website(name: 'Vogue', url: 'https://www.vogue.com'),
  Website(name: 'GQ', url: 'https://www.gq.com'),
  Website(name: 'Elle', url: 'https://www.elle.com'),
  Website(name: 'Harpers Bazaar', url: 'https://www.harpersbazaar.com'),
  Website(name: 'Fashionista', url: 'https://fashionista.com'),
  Website(name: 'Refinery29', url: 'https://www.refinery29.com'),
  Website(name: 'InStyle', url: 'https://www.instyle.com'),
  Website(name: 'The Cut', url: 'https://www.thecut.com'),
  Website(name: 'BoF (Business of Fashion)', url: 'https://www.businessoffashion.com'),
  Website(name: 'Style.com', url: 'https://www.style.com'),
]),

// Gaming Category
Category(name: 'Gaming', websites: [
  Website(name: 'IGN', url: 'https://www.ign.com'),
  Website(name: 'GameSpot', url: 'https://www.gamespot.com'),
  Website(name: 'Polygon', url: 'https://www.polygon.com'),
  Website(name: 'Kotaku', url: 'https://kotaku.com'),
  Website(name: 'PC Gamer', url: 'https://www.pcgamer.com'),
  Website(name: 'Eurogamer', url: 'https://www.eurogamer.net'),
  Website(name: 'Gamasutra', url: 'https://www.gamasutra.com'),
  Website(name: 'Game Rant', url: 'https://gamerant.com'),
  Website(name: 'Rock, Paper, Shotgun', url: 'https://www.rockpapershotgun.com'),
  Website(name: 'Game Informer', url: 'https://www.gameinformer.com'),
]),
    Category(name: 'Technology', websites: [
      Website(name: 'GitHub', url: 'https://github.com'),
      Website(name: 'Stack Overflow', url: 'https://stackoverflow.com'),
      Website(name: 'Medium', url: 'https://medium.com'),
      Website(name: 'TechCrunch', url: 'https://techcrunch.com'),
      Website(name: 'Ars Technica', url: 'https://arstechnica.com'),
      Website(name: 'Wired', url: 'https://www.wired.com'),
      Website(name: 'The Verge', url: 'https://www.theverge.com'),
      Website(name: 'Engadget', url: 'https://www.engadget.com'),
      Website(name: 'CNET', url: 'https://www.cnet.com'),
      Website(name: 'Tom\'s Hardware', url: 'https://www.tomshardware.com'),
    ]),
    // Add more categories as needed
   Category(name: 'Education', websites: [
      Website(name: 'Coursera', url: 'https://www.coursera.org'),
      Website(name: 'Khan Academy', url: 'https://www.khanacademy.org'),
      Website(name: 'edX', url: 'https://www.edx.org'),
      Website(name: 'Udacity', url: 'https://www.udacity.com'),
      Website(name: 'Codecademy', url: 'https://www.codecademy.com'),
      Website(name: 'Duolingo', url: 'https://www.duolingo.com'),
      Website(name: 'Quizlet', url: 'https://quizlet.com'),
      Website(name: 'TED', url: 'https://www.ted.com'),
      Website(name: 'Wikipedia', url: 'https://www.wikipedia.org'),
      Website(name: 'MIT OpenCourseWare', url: 'https://ocw.mit.edu'),
    ]),
    Category(name: 'Health', websites: [
      Website(name: 'WebMD', url: 'https://www.webmd.com'),
      Website(name: 'Mayo Clinic', url: 'https://www.mayoclinic.org'),
      Website(name: 'Healthline', url: 'https://www.healthline.com'),
      Website(name: 'CDC', url: 'https://www.cdc.gov'),
      Website(name: 'NIH', url: 'https://www.nih.gov'),
      Website(name: 'Everyday Health', url: 'https://www.everydayhealth.com'),
      Website(name: 'MyFitnessPal', url: 'https://www.myfitnesspal.com'),
      Website(name: 'MedlinePlus', url: 'https://medlineplus.gov'),
      Website(name: 'Verywell Health', url: 'https://www.verywellhealth.com'),
      Website(name: 'Health.com', url: 'https://www.health.com'),
    ]),
    Category(name: 'Travel', websites: [
      Website(name: 'Expedia', url: 'https://www.expedia.com'),
      Website(name: 'Booking.com', url: 'https://www.booking.com'),
      Website(name: 'TripAdvisor', url: 'https://www.tripadvisor.com'),
      Website(name: 'Kayak', url: 'https://www.kayak.com'),
      Website(name: 'Skyscanner', url: 'https://www.skyscanner.com'),
      Website(name: 'Airbnb', url: 'https://www.airbnb.com'),
      Website(name: 'Hotels.com', url: 'https://www.hotels.com'),
      Website(name: 'Lonely Planet', url: 'https://www.lonelyplanet.com'),
      Website(name: 'Travelocity', url: 'https://www.travelocity.com'),
      Website(name: 'Google Flights', url: 'https://www.google.com/flights'),
    ]),
    Category(name: 'Sports', websites: [
      Website(name: 'ESPN', url: 'https://www.espn.com'),
      Website(name: 'NBA', url: 'https://www.nba.com'),
      Website(name: 'NFL', url: 'https://www.nfl.com'),
      Website(name: 'MLB', url: 'https://www.mlb.com'),
      Website(name: 'NHL', url: 'https://www.nhl.com'),
      Website(name: 'FIFA', url: 'https://www.fifa.com'),
      Website(name: 'UFC', url: 'https://www.ufc.com'),
      Website(name: 'CBS Sports', url: 'https://www.cbssports.com'),
      Website(name: 'Bleacher Report', url: 'https://bleacherreport.com'),
      Website(name: 'Yahoo Sports', url: 'https://sports.yahoo.com'),
    ]),
    Category(name: 'Food', websites: [
      Website(name: 'Allrecipes', url: 'https://www.allrecipes.com'),
      Website(name: 'Food Network', url: 'https://www.foodnetwork.com'),
      Website(name: 'Epicurious', url: 'https://www.epicurious.com'),
      Website(name: 'BBC Good Food', url: 'https://www.bbcgoodfood.com'),
      Website(name: 'Bon Appétit', url: 'https://www.bonappetit.com'),
      Website(name: 'Cooking Light', url: 'https://www.cookinglight.com'),
      Website(name: 'Serious Eats', url: 'https://www.seriouseats.com'),
      Website(name: 'Tasty', url: 'https://tasty.co'),
      Website(name: 'Food52', url: 'https://food52.com'),
      Website(name: 'Smitten Kitchen', url: 'https://www.smittenkitchen.com'),
    ]),
    // Add more categories as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Websites'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          },
        ),
      ),
    );
  }
}

class Category {
  final String name;
  final List<Website> websites;

  Category({required this.name, required this.websites});
}

class Website {
  final String name;
  final String url;

  Website({required this.name, required this.url});
}

class CategoryCard extends StatelessWidget {
  final Category category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            category.name,
            style: TextStyle(
              fontSize: 20.0,
              color:Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category.websites.length,
            itemBuilder: (context, index) {
              return WebsiteCard(website: category.websites[index]);
            },
          ),
        ),
      ],
    );
  }
}

class WebsiteCard extends StatelessWidget {
  final Website website;

  WebsiteCard({required this.website});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      elevation: 2.0,
       color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: () => onWebsiteCardPressed(context, website),
        child: Container(
          width: 160.0,
          padding: EdgeInsets.all(16.0),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Text(
                website.name,
                style: TextStyle(
                  fontSize: 16.0,
                  color:Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onWebsiteCardPressed(BuildContext context, Website website) {
    // Handle website card press
 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WebviewTwo(url:website.url)),
            );
  }
}
