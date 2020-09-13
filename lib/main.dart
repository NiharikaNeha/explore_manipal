import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: First(),
          routes: <String, WidgetBuilder> {
            '/first': (BuildContext context) => new First(),
            '/second': (BuildContext context) => new Second(),
            '/third': (BuildContext context) => new Third(),
            Third.routeName: (context) => Third()
          },
        )
    );
  });
}

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/manipal.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50.0,),
                Text(
                  'EXPLORE',
                  style: TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Nurito',
                  ),
                ),
                SizedBox(height: 20.0,),
                Text(
                  'MANIPAL',
                  style: TextStyle(
                    fontSize: 70.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Nurito',
                  ),
                ),
                SizedBox(height: 150.0,),
                RaisedButton(
                  color: Colors.white,
                  child: Container(
                    height: 40.0,
                    width: 125.0,
                    alignment: Alignment.center,
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/second');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {

  static const List<BGColor> myColors = const <BGColor>[
    const BGColor(Colors.lightGreen, 'scenic'),
    const BGColor(Colors.brown, 'hills'),
    const BGColor(Colors.blue, 'beaches'),
    const BGColor(Colors.orangeAccent, 'islands'),
    const BGColor(Colors.yellow, 'temples'),
    const BGColor(Colors.redAccent, 'towns'),
    const BGColor(Colors.deepOrange, 'hotels'),
    const BGColor(Colors.lightBlueAccent, 'peaceful'),
    const BGColor(Colors.brown, 'museums'),
    const BGColor(Colors.yellowAccent, 'fun'),
    const BGColor(Colors.green, 'adventure'),
    const BGColor(Colors.red, 'restaurants'),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.yellow.withOpacity(0.8),
            title: Text(
              'Explore Manipal',
              style: TextStyle(
                color: Colors.black
              ),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heading('Scenic', myColors[0]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/55.jpeg', 'Anejhari Butterfly Camp', 55, 63),
                        places('assets/images/Arbi falls.jpg', 'Arbi Falls', 31, 3),
                        places('assets/images/32.jpeg', 'Baba Point', 32, 5),
                        places('assets/images/14.jpg', 'Chikmaglur', 14, 160),
                        places('assets/images/endpoint.jpg', 'End Point', 15, 2),
                        places('assets/images/1.jpg', 'Hanging Bridge', 1, 13),
                        places('assets/images/8.jpg', 'Jog Falls', 8, 165),
                        places('assets/images/45.jpeg', 'Jomlu Theertha', 45, 40),
                        places('assets/images/44.jpeg', 'Kudlu Falls', 44, 49),
                        places('assets/images/18.jpg', 'Manipal Lake', 18, 2),
                        places('assets/images/23.jpeg', 'Salumarada Thimmakka Tree Park', 23, 5),
                      ],
                    ),
                  ),
                  heading('Hills', myColors[1]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/2.jpg', 'Agumbe', 2, 45),
                        places('assets/images/14.jpg', 'Chikmaglur', 14, 160),
                        places('assets/images/6.jpg', 'Kudremukh', 6, 57),
                      ],
                    ),
                  ),
                  heading('Beaches', myColors[2]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/28.jpeg', 'Goa', 28, 294),
                        places('assets/images/25.jpeg', 'Gokarna', 25, 180),
                        places('assets/images/Hoode_Beach.jpg', 'Hoode Beach', 12, 12),
                        places('assets/images/Kaup_beach.jpg', 'Kaup Beach', 10, 17),
                        places('assets/images/40.jpeg', 'Kodi Beach', 40, 42),
                        places('assets/images/9.jpg', 'Malpe Beach', 9, 12),
                        places('assets/images/41.jpeg', 'Suratkal Beach', 41, 48),
                        places('assets/images/4.jpg', 'Turtle Bay', 4, 15),
                      ],
                    ),
                  ),
                  heading('Islands', myColors[3]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/11.jpg', 'St. Mary Island', 11, 17),
                        places('assets/images/38.jpeg', 'Uppinakudru Island', 38, 46),
                      ],
                    ),
                  ),
                  heading('Temples', myColors[4]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/52.jpeg', 'Anantha Padmanabha Temple', 52, 4),
                        places('assets/images/48.jpeg', 'Anantheshwara Temple', 48, 6),
                        places('assets/images/42.jpeg', 'Anegudde Vinayaka Temple', 42, 33),
                        places('assets/images/47.jpeg', 'Chandramouleshwara Temple', 47, 309),
                        places('assets/images/43.jpeg', 'Mookambika Temple', 43, 76),
                        places('assets/images/7.jpg', 'Murudeshwar', 7, 103),
                        places('assets/images/51.jpeg', 'Sri Brahmi Durgaparameshwari Temple', 51, 62),
                        places('assets/images/53.jpeg', 'Sri Indrani Panchadurga Parameshwari Temple', 53, 2),
                        places('assets/images/39.jpeg', 'Sri Kalikamba Temple', 39, 20),
                        places('assets/images/30.jpg', 'Sri Krishna Temple', 30, 5),
                        places('assets/images/17.jpeg', 'Venugopal Temple', 17, 1),
                      ],
                    ),
                  ),
                  heading('Towns', myColors[5]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/3.jpg', 'Karkala', 3, 35),
                        places('assets/images/29.jpeg', 'Kerela', 29, 384),
                        places('assets/images/55.jpeg', 'Kollur', 55, 76),
                        places('assets/images/26.jpeg', 'Mangalore', 26, 62),
                        places('assets/images/50.jpeg', 'Pajaka Kshetra', 50, 19),
                        places('assets/images/47.jpeg', 'Ratha Beedi', 47, 91),
                      ],
                    ),
                  ),
                  heading('Hotels', myColors[6]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/5.jpg', 'Hasta Shilpa Heritage Village', 5, 4),
                      ],
                    ),
                  ),
                  heading('Peaceful', myColors[7]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/54.jpeg', 'Anejhari Butterfly Camp', 54, 63),
                        places('assets/images/endpoint.jpg', 'End Point', 15, 2),
                        places('assets/images/13.jpg', 'Railway Bridge', 13, 5),
                      ],
                    ),
                  ),
                  heading('Museums', myColors[8]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/49.jpeg', 'Coin Museum', 49, 5),
                        places('assets/images/20.jpeg', 'Dr. TMA Pai Planetarium', 20, 2),
                        places('assets/images/16.jpeg', 'Museum of Anatomy and Pathalogy', 16, 2),
                        places('assets/images/19.jpeg', 'Smriti Bhavan', 19, 1),
                      ],
                    ),
                  ),
                  heading('Fun', myColors[9]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/33.jpeg', 'Dee Tee', 33, 3),
                        places('assets/images/37.jpeg', 'Eye of the Tiger', 37, 2),
                        places('assets/images/21.jpeg', 'Inox Cinema', 21, 4),
                        places('assets/images/22.jpeg', 'Laser Tag Manipal', 22, 4),
                        places('assets/images/24.jpeg', 'The Chillspace', 24, 1),
                        places('assets/images/36.jpeg', 'Zeal Rooftop', 36, 1),
                      ],
                    ),
                  ),
                  heading('Adventure', myColors[10]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/27.jpeg', 'Coorg', 27, 196),
                      ],
                    ),
                  ),
                  heading('Restaurants', myColors[11]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        places('assets/images/35.jpeg', 'Cocks n Mocks', 35, 3),
                        places('assets/images/34.jpeg', 'Hakuna Matata Restaurant', 34, 1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        )
    );
  }

  places(String path, String text, int index, int dist)
  {
    return RaisedButton(
      color: Colors.white,
      elevation: 0.0,
      onPressed: () {
        Navigator.pushNamed(
            context,
            Third.routeName,
            arguments: Arguments(index, path, text, dist));
      },
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              height: 150.0,
              width: 125.0,
              alignment: Alignment.center,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
        height: 150.0,
        width: 125.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(path),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(30.0)
        ),
      ),
    );
  }

  heading(String text, BGColor temp)
  {
    return Column(
      children: [
        if(temp.cname!='scenic')
        SizedBox(height: 20.0,),
        Container(
          height: 40.0,
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: temp.color.withOpacity(0.3)
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(height: 20.0,)
      ],
    );
  }
}

class Third extends StatefulWidget {

  static const routeName = '/extractArguments';

  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {

  @override
  Widget build(BuildContext context) {

    final Arguments args = ModalRoute.of(context).settings.arguments;

    var details = ['The quintessential hangout for the avid bicycle enthusiast in Manipal, this bridge is located a mere few kilometers away from Manipal and is the one place to visit when you’re in the mood for a fun ride, but not in the mood for spending any money. It’s located atop a small backwater channel. This is the ideal spot for those who wish to enjoy the beauty of nature away from the hustle and bustle of a city. To be fair, you could just do that within literally anywhere in Manipal itself that isn’t a part of the University, but hey, traveling is fun!',
    'Located at a comfortable distance of around 45 kilometers from Manipal, the trip to Agumbe is in itself a joyous experience filled with beautiful vistas of Karnataka’s forest regions. The various stops along the way, which include Sunset Point, a temple, and numerous waterfalls(Onaki Abbi, Barkana falls and Jogigundi falls), make the journey to Agumbe a rather eventful one. It is one of the highest peaks of the Western Ghats and receives the most amount of rainfall in all of Karnataka!\n\nOnce you get there, there’s a lot of trekking to do should you choose to do so, which, given the fact that it rains every hour or so, is quite an exhilarating experience. If you’re lucky enough to be there during the sunset, you’ll be a witness to one of the most breathtaking vistas this amazing state has to offer. A really cool fact about the Agumbe is that Malgudi Days, a television series based on the collection of short stories by R.K. Narayan was shot over there! A much cooler fact about Agumbe is that the make-believe town of Malgudi actually exists! The best part about this is that the house where most of the series was shot is still there. It’s owned by a kind lady whom everyone lovingly calls Kasturi Akka. You can knock on her door and they’ll greet you with the warmth and hospitality usually tendered to long lost kin, complete with the delicious local food served on banana leaves. Getting to explore the 120-year-old house where it all happened is an added bonus',
    'Karkala is a town of historical importance and is also a well-known pilgrimage spot for Jains. The famous single stone 42-foot statue of Gomateshwara (Lord Bahubali) is located about 1 km from the center of the town. Combined with the lake that it overlooks, it is a sight you would NOT want to miss out on. It’s also only 40 kilometers away from Manipal, so it’s ideal for a short trip. The statue was erected by a Jain king in 1432, in memory of Bahubali who renounced the world at his most victorious moment.\n\nRight opposite this gargantuan structure, there is a Jain ‘Basadi’ known as ‘Chaturmukha Basadi’ which is built of granite. In front of this temple, there is a beautifully carved pillar called Manasthamhha which is nearly 50 feet high. What’s more, is, this is the tallest and the most beautiful of 11 such pillars (all of which are conveniently named Manasthamhas). If all of this wasn’t enough, there are 17 other such temples in Karkala! If you aren’t religious, go check it out for its awesome art and architecture',
    'This is a beach resort, so it’s perfect for you if you’re okay with spending a bit of money on your little trip outside Manipal. This is a place where you go about your clichéd beach holiday activities, like going on long walks along the beach whilst absorbing the breathtaking scenery, snorkeling, and scuba diving. Here’s what’s interesting about the place, though: it gets its name from the turtles that frequent this region during their nesting season of October to December. So if you want to catch a glimpse of the turtles, that’s the time to visit them. But, for the sake of all that is sacred, do not disturb them. Live and let live. Or in this case, live and let turtles breed and raise young in peace',
    'The Heritage Village is a private collection of heritage homes that were dismantled a long time ago, but have been restored to their erstwhile grandeur by a retired bank employee named Vijayanath Shenoy. He underwent the pain of seeing beautiful ancestral homes being torn down in Malnad in 1983. The event leads to him being determined to one day restore their ancestral homes, which Mr. Shenoy believed to represent their heritage and their very culture.\n\nThe Heritage Village stands a proud bastion of what once was and should have always been. It took him five years to complete the house he named “Hasta Shilpa”. Every traditional structure that gets taken down is restored at the Heritage Village, courtesy of Mr. Shenoy. The State Directorate of Archaeology and Museums declared it a protected monument and started restoration work. Shenoy is also planning to establish a similar heritage village in Mysore and land has already been donated to the trust. The property isn’t currently open to the public, and one would require Mr. Shenoy’s permission to visit it.',
    '30 km from Karkala, Kudremukh is also a place you’d visit for a long ride amidst the wilderness. ‘Kudremukh’ literally means ‘Horse Face’. That’s an addition to your list of insults in the native language. You’re welcome. It gets this poetic sobriquet from the fact that a particular view of a side of a mountain resembles the shape of a horse’s face. This happens to be the largest reserve of a tropical wet evergreen forest in Karnataka.\n\nA hilly region, situated 1894 m above sea level, it overlooks the Arabian Sea and is rich in flora and fauna. It’s also Karnataka’s third-highest peak. A ride along the forests can be really fun if you’re into that sort of thing. The forest is incredibly dense out here and provides fertile grounds for hiding in plain sight be a little disappointed if you’re going there solely to watch the animals. It gets an annual rainfall of 7000 mm, so packing some rain gear may be wise',
    'This place is another 40 km from Turtle Bay. You can visit it on the way to Gokarna or Goa. It houses a pretty huge statue of Shiva. It’s surrounded by the sea on three sides. Two life-size elephants in concrete stand guard at the steps leading to the temple. The Murudeshwar temple has a history that dates back to a few centuries. Fun fact, the Shiva Idol is the second largest in the world, measuring at a colossal 123 feet.\n\nIt’s only second to the largest one in Batu Caves that you’ll find on the way to Kuala Lumpur, Malaysia, which measures 140 feet. That’s one reason for you to visit this place right there. Murudeshwar, that is. Not Malaysia. Although definitely check out Malaysia too if you can. It’s pretty epic. Three important rivers, the Tunga, the Bhadra, and the Nethravathi are said to have their origin here. A shrine of goddess Bhagavathi and a Varaha statue inside a cave are the major tourist attractions',
    'If you’re a fan of high elevations, you’re in luck, because Jog Falls, the highest waterfall in the country is located near Manipal! Well, actually 180 km away from it, but hey, that’s manageable, right? You can hitch a ride on a bike or a car there right after the monsoons. During the monsoons, the rains are way too heavy to be fun; it gets swampy and slushy and it’ll just be a lousy trip overall. It’s 875 feet tall and fed by the Shravati river, which gets split into four streams, namely Raja, Rani, Roarer, and Rocket.\n\nInterestingly, you can start from the top and walk down the length of the fall. You’ll feel a little icky due to the dirt and littering at the bottom, but it’s still worth the trip if you’re an avid trekker. This is the fifth highest waterfall in Asia. Also, check out Linganmakki Dams (6 km away) if you’re visiting Jog Falls',
    'Ah, now we finally arrive at the local haunts of everyday Manipal students who aren’t really in the mood for much adventure but still want to have a good time. The beaches. There are plenty of them around Manipal, and Malpe is the most commercialized of them all. It’s usually quite crowded and especially so on Saturday Nights. It’s the closest beach you can get to around Manipal. It also has water sports like parasailing and jet-skis among others. Lots of local shops out there sell cheap street food.\n\nBut between you and me, I’d advise you stay away from the golas out there. They’re nothing like what golas are actually supposed to taste like, and you deserve better than that. Recently, it became the very first beach in India with free WiFi for 30 minutes for each user (available at 4G speeds), courtesy of BSNL, so people can finally be glued to their phones even while at the beach. What a time to be alive',
    'It’s pronounced “Kapu”. I kid you not. It’s a relatively less crowded beach and features a cool lighthouse which was built by the British in 1901. The lighthouse is 89 feet high and has a range of 24 nautical miles (which is around 27 regular miles, which is around 9 leagues. That reminds me, read the book 20,000 Leagues Under the Sea by Jules Verne if you haven’t already. It’s really cool. I digress. Let’s get back to the article). None of these facts will affect your trip to Kaup in any way. They’re just fun to know. You’ll have a great time there though if you’re a beach person.\n\nBesides the lighthouse, Kaup also has ruins of Jain Basadis that line across the stretch of sand and it also has two Hindu temples dedicated to the Goddess Mariamman. If you intend to explore the beach, you might want to watch out for the crabs if you’re venturing into the darker, siltier side of the beach. They’re sneaky and inconspicuous, so you won’t notice them until you really notice them, and the fact that they’re everywhere. Stick to the more populated side of the beach and you’ll be just fine.',
    'It is a small group of islands accessible by ferry from Malpe, and you get around 2 hours to explore it before the ferry takes you back. It’s a clean and beautiful group of islands (for now. Looking at you, Jog Fall tourists who littered the area). Apparently Vasco Da Gama came here before reaching Calicut in 1498. Pretty cool,huh? Scientific studies indicate that the basalt of the St. Mary’s Islands was formed by volcanic activity, because at that time Madagascar was attached to India about 88 million years ago! The large number of coconut trees in the place has earned it the moniker of Coconut Island.',
    'This is the perfect place for you if you enjoy lazy, solitary walks along a beach. The place is practically deserted most of the time. No idea why. There are a lot of water sports you can indulge in out here and it also has a bunch of shacks scattered across the beach. It also has a lot of stray dogs, for some reason, so be wary of where you step to avoid that gooey, spongy, and (eventually) repulsive sensation underneath your foot.',
    'This is one of the places you can see from the End Point in Manipal and is located around 5 km away from Tiger Circle. This is just a peaceful location where you can go to relax for a couple of hours. The trains passing by cause the whole bridge to shake and that can be fun. You might want to exercise proper caution during the rains, though, as it gets dangerously slippery.',
    'This is a truly epic and underrated place relatively close to Manipal (around 160 kilometers). It features a lot of homestays and waterfalls and is famous for its serene mountains, lush green forests, and tall mountains. It is also known as the ‘coffee land’ of Karnataka. This place is one of the largest producers of coffee in India and the plantations are a sight to behold. Legend has it that a 17th century Sufi pilgrim, Baba Budan Giri, tucked away seven seeds of coffee in his belt while returning from Mecca. He came back and sprung them on the fertile hills of Chikmagalur, making it one of the most rampant coffee cultivating spots in India and spawning the coffee culture of the place.',
    'A tranquil getaway that has become increasingly popular over the years, End Point has the added advantage of a well-maintained, manicured garden. It also boasts wonderful views of the sunrise and sunset in the valley, as well as the river Tunga, with a conveniently placed gazebo along the path. However, entry closes at 6:30, after which visitors are ushered out by the omnipresent security guards.',
    'Touted to be one of the largest of its kind in Asia, the Museum of Anatomy and Pathology (MAP) is the brainchild of Dr. SS Godbole, the very first Anatomy Professor of Kasturba Medical College. From a modest collection of 650 specimens during its inception, the Museum has burgeoned to include over 3000 specimens and samples including the skulls of an elephant, a whale, and even a King Cobra.\n\nLocated directly opposite the main administrative complex (also called the EDU building), the Anatomy section houses well-preserved specimens of the human body from head to toe. The Pathology museum also houses a section dedicated to the human body including displays of well-preserved organs of the body, both diseased and healthy (not for the faint-hearted). It also has a section dedicated to inculcating awareness among the general public, regarding various lifestyle-related diseases and their impact on the body.\n\nThe museum is open from 8 AM to 6 PM on all days, except for public holidays to all members of the public. While the entrance for Manipal university staff, students, and guests is free, a nominal fee is collected from the public. A visit to this enthralling museum can be aptly expressed by the words of Dr. RJ Last, former Anatomical Curator of the Royal College of Surgeons, London: Its one of the best.',
    'Venugopal temple is nicely maintained with green grass and a beautiful garden around it and a spacious parking lot. Devotees throng the temple regularly. The temple has a beautifully semicircular dome and there is music playing for your ears incessantly.',
    'Mannapalla (Manipal Lake) is one of Manipal’s prominent tourist attractions. The boating facilities at the lake attract the tourists flocking to the lake. The boat ride provides one with the opportunities to snap several photographs of the breathtaking vista around them and the numerous birds found there. Owing to the abundant rainfall in the area, the lake occupies nearly 55 acres of water, with plenty of water in the summer as well.\n\nThe lake also has a two-kilometer jogging track surrounding it, where one can breathe in the cool air when jogging in the morning. Besides, the lake also has numerous amenities near the jogging track like stainless steel garbage bins, solar-powered streetlights, and benches for the elderly',
    'Located adjacent to Hotel Madhuvan Serai, Smriti Bhavan is an easily missed museum by passers-by. It is the humble bungalow of the legendary Late Dr. T. M. A. Pai, who is the founder and carver of the educational town of Manipal. It’s a museum based on his life and how Manipal came to be across the lifespan of Dr. Pai. The museum contains his belongings, framed photographs, and many achievements. The house also has Dr. Pai’s clinic and his medical instruments from that era.\n\nThe entry for the museum is free for all. It is closed on Sundays and is open from 9:30 AM to 1:00 PM and 2:30 PM to 6:00 PM. One can imagine the growth of this education town vividly while observing the place.',
    'The planetarium is dedicated to Dr. T.M.A. Pai (Founder, Indian doctor, educationist, banker, and philanthropist) and is located on the banks of the Manipal Lake near the Manipal Junior College.  It is owned by the Manipal Institute for Development of Human Resources and is operated on a not for profit basis. It is currently managed by the Manipal Centre for Natural Sciences, Centre of Excellence, Manipal Academy of Higher Education.  This project was initiated by Sri. T. Ashok Pai commenced in the year 1997 and completed in 1998. For this purpose 5 acres of land were provided by The Government of Karnataka in a picturesque part of the campus.',
    'Located on the Udupi-Manipal road, better known as Central Cinemas, the movies here are released in sync with the rest of the country.',
    'Fire Up Thrill, Fun, And Amusement! Our unique, adventurous themed arena offers an inimitable experience to the players. The excitement of participating in a game is far more appealing than playing any video game. We take you to a different world full of adventure, entertainment, and recreation to offer you a one-of-a-kind playing experience.',
    'This Tree Park is Manipal’s latest attraction. This tree park is named after Salumarada Thimmaka and has a large natural forest area enhanced with some displays, attractions, and information. The attractions here are Treehouses, Adventure Zone, Elevated Walkway, Exhibits showcasing regional specialties, lots of trees, Mini nursery, Information displays pertaining to wildlife, a Mini waterfall, few social awareness messages related to wildlife, an Amphitheatre, water feeding spots for birds, Herbal garden and a cafe!!',
    'It is an Indoor Recreational Space with services including spectrum PC, Board, Console gaming, and an ever-expanding Graphic Library with over 1000 curated titles in Comics, Manga, and Light Novels. Their Chief is ecreating recreation in a way that creates memories that can be recollected and cherished upon in life is the founding principle for ChillSpace. I hope to see a sober way of enjoyment which makes people addicted to recreation while no person finds it harmful to any person or society.',
    'One of the best ways to savor your scarce long weekends over the academic calendar is by catching the first train to Gokarna from the nearby Udupi Station. Courtesy of the picturesque views and pleasant company of peers sans the college humdrum, it might seem only minutes before you reach the temple town.\n\nGokarna, widely famous for the Mahabaleshwara Temple and an array of five beaches, is at the confluence of two rivers shaped like an ear. Mahabaleshwar Temple holds its prestige for housing one of the Shiva Lingas, known as ‘Atmalinga’. The temple complex stands out for its intricate design and architecture.\n\nThe beaches at Gokarna have a lot to offer. The main Gokarna beach charms oneself with its absolute beauty despite the fact that it might get a bit crowded during peak season. A short trek will lead one to Kudle beach circumscribed by hillocks and rocks. The place can easily set your appetite with its scattered shacks and small inns. Once in Gokarna, never miss out on the pristine lands of Om beach. The waves are sparkling blue, the tides like to play about both gentle and rough, and it is perfect to plunge into the secluded waters. Namaste Cafe is a go-to place for some tasty delicacies and a calming ambiance. Well, if you want the beaches all to yourself, Paradise and Half-Moon are where one should hit for some quality self-time.\n\nAll in all, Gokarna could hold a very special place in your travel diaries and photo albums, rejuvenating souls with the soothing touch of nature in its most unadulterated form.',
    'Mangalore (or Mangaluru) is an Arabian Seaport and a major commercial center in the Indian state of Karnataka. Its home to the Kadri Manjunath Temple, known for its bronze statues, and the 9th-century Mangaladevi Temple. Its Catholic sites include Milagres Church, dating to the 17th century, and St. Aloysious Chapel, which features interior paintings. Tannirbhavi Beach is popular for its sunset views.',
    'Kodagu (also known by its former name Coorg) is a hill town in southern India. Framed by the Western Ghats mountain range, it’s known for the Raja’s Seat, a simple monument overlooking forests and rice paddies. In the center, the 17th-century Madikeri Fort features 2 stone elephants at the entrance. Nearby, the domed Omkareshwar Temple is dedicated to the Hindu deity Shiva. To the northwest, cascading Abbey Falls is surrounded by spice plantations.',
    'Goa is a state in western India with coastlines stretching along the Arabian Sea. Goa is also known for its beaches, ranging from popular stretches at Baga and Palolem to those in laid-back fishing villages such as Agonda.',
    'Kerala, a state on Indias tropical Malabar Coast, has nearly 600km of Arabian Sea shoreline. Its known for its palm-lined beaches and backwaters, a network of canals. Inland are the Western Ghats, mountains whose slopes support tea, coffee, and spice plantations as well as wildlife. National parks like Eravikulam and Periyar, plus Wayanad and other sanctuaries, are home to elephants, langur monkeys, and tigers.',
    'For a more spiritual experience, Udupi’s famous Sri Krishna Matha is a must-visit. The temple is unique in that the idol of Lord Krishna is worshipped and viewed through a silver-plated window with nine windows, called Navagraha Kindi.  The temple is open from 5:30 AM to 9 PM, however, most pujas are held between 6 AM and 10 PM, with another puja at 7 PM which is worth witnessing. After your time in the temple, do try to have food at Anna Brahma Bhojana Shale—which, despite being crowded, is the perfect conclusion to a visit to the temple.',
    'Bandaje falls (now known as Arbi Falls) are a set of waterfalls located in the Charmadi ghat section of the Western Ghats in Karnataka. The waterfalls can be reached only by undertaking a trek through thick evergreen forests and grasslands with the help of local guides, and in summer the waterfalls go dry. Formed by a tributary of the Netravathi river, the Bandaje falls almost 200 feet high.\n\nThe path to Bandaje falls from Valambra goes through thick evergreen forest ending in grasslands. Locally these falls are called the Bandaje Arbi, where Arbi means ‘waterfall’ in Tulu. The name is shortened to Arbi Falls to promote tourism.',
    'BABA POINT is actually a small food joint situated at the banks of the Suvarna river. But when we say Baba Point, we typically mean the river banks. Baba Point gives you a serene view of the Suvarna River. You will sometimes find fishermen taking their boats for a ride. And if you are lucky enough, they might even give you a ride. It is a cozy and lovely place to chill.',
    'It is a place where you go to drown your sorrows or celebrate your success. Be it heartbreak or a placement, an F-Grade or 9 CGPA, you go to DeeTee to drink everything away. It is a temple for unholy vices and as whatever happens there stays there. It is indeed Deetee(RathaYatra).',
    'The upbeat setting for Indian & global cuisine, plus a club with DJ music, dancing, beer & cocktails.',
    'Cocks n Mocks is a Restro Bar Now at Mandavi Emerald, End Point Road, Manipal. It is a place to enjoy good times together & Party hard.',
    'ZEAL is a Restro Bar and it plays mostly EDM. So if you are not into a lot of EDM, you might just get bored.',
    'One of the best places to eat continental cuisine—EOTT is a nonvegetarian’s delight. With classic meat and chicken dishes, as well as an array of fresh seafood, this place is one of the most visited restaurants in town. Though a little pricier than other restaurants, the food here is definitely worth the money, you spend on it. It is also famous for one of its most foreboding dishes, Ghost Wings—the spiciest set of wings one would’ve ever come across, and a ghost pepper smeared challenge for even the most hardcore spice lovers.',
    'Uppinakudru, located 6 km north of Kundapura Udupi District (Karnataka, India), is a small island village, once famous for the trading of salt (uppu) and seafood (picking of seashells in backwaters). UppinaKudru (UK) is also having a short name of the UK. So this is called as UK of Kundapura. This is also known as The King of Kudrus.',
    'Sri Kalikamba Vinayaka Temple is located in Lower Car Street, Mangalore, India. The temple is mainly revered by the Vishwakarma Brahmana community (people involved in the goldsmith, blacksmith, carpentry, and architecture businesses). The Garbhagrihas of Lord Ganesh and Goddess Kalikamba were rebuilt with granite.',
    'Delta Beach, also known as Kodi Bengre Beach is located in a small sleepy village of Kodi Bengre in Udupi, which lies on the west coast of Karnataka. The beach is really beautiful, clean, soothing, and mesmerizing. It is best to relax in the locality of Manipal.',
    'NITK Beach is situated in Surathkal, the northern part of Mangalore city, Karnataka. This beach is also known as Surathkal beach. It was later named after the nearby NITK (National Institute of Technology, Karnataka). It is a private beach.',
    'Anegudde is a village in the Kundapura taluk of Udupi district, India. The village is also known as Kumbashi. Anegudde Temple has two guest houses, "Amoda" &"Pramoda" for pilgrims.',
    'Kollur Mookambika Temple is located at Kollur, Udupi District in the state of Karnataka, India. It is a Hindu temple dedicated to the Mother Goddess known as Mookambika Devi. It is situated in the foothills of Kodachadri hills, on the southern bank of Souparnika River.',
    'This place is a true testament to the saying, “The climb is hard, but the view is great”. Owing to bad roads and slightly steep steps it might not be easy to get to these waterfalls but let me assure you, once your eyes feast on the majesty of the water as it gushes down the rocks and collects into the little pool at the bottom, you will feel rejuvenated.\n\nThis waterfall, located 42 km from Udupi, is sure to leave you feeling refreshed and awakened. The Kudlu Theertha Falls is situated within the lush green forests of the Western Ghats and is the first waterfall arising from the river Sita as it flows downstream into Karnataka.\n\nThough there is a waterfall called Manga Theertha right above Kudlu Falls, it is out of human reach and is accessible only to monkeys, hence the name Monkey Falls. Carry lots of food as the trek can be exhausting and travel light. Carry bread with you if you want to see and feed the little fish that inhabit the pond. Also, make sure you have an extra pair of clothes as jumping into the cold pool of water is the best way to re-energize yourself after a long road trip.',
    'Jomlu Theertha is a lovely waterfall created by River Sita. The waterfall is situated at a distance of about 40 km from the town of Udupi. It is a small waterfall with a height of about 20 feet. It is a picturesque waterfall situated in the midst of natural beauty. The cool water, the chirping of birds, and the calm atmosphere add to the charm of the falls. It is perfect for weekend getaways with family and friends. It is a preferred picnic spot of the local people who want to break free from the monotonous schedule. The refreshing and everlasting beauty of the waterfall attracts a lot of visitors on a regular basis. The white water rushing down the rocks and the surrounding greenery is a visual treat for anyone visiting the spot.',
    'Ratha Beedi’s market area near the Krishna Temple is the most visited. One will find a wide variety of religious products like incense and holy figurines. The place lights up with temporary shops and stalls and attracts a select crowd during festival time.',
    'Devoted to Lord Shiva, this temple must be visited by all devotees before visiting the Krishna Temple as it is also located right next to it. The history of this temple dates back to over 900 years and is older than the Krishna Mutt. It is said to be extremely peaceful inside.',
    '8th century C.E. Udupi Anantheshwara Temple is a historic Hindu temple dedicated to Lord Ananteshwara, (Lord Vishnu) and the place of worship is the in Udupi, India. The temple is adjacent to the more famous Udupi Sri Krishna Matha established by saint Shri Madwacharyara, who preached dwaitha philosophy in Udupi.',
    'It is a rare museum of old coins, old notes which takes us to a trip to history. This museum is a very rare place, where old coins and notes unveil the important events of History. The explanation there is given a lot of care.',
    'It is the birthplace of the Hindu deity Sri Madhvacharya. It has interpretive signs, sculptures & a quiet vibe.',
    'This ancient temple is in Kamalashile, about 35 km from Kundapura and surrounded by beautiful hills and green forests nearby. The notable feature is the goddess here is worshipped in the form of a Linga! (Usually, only Lord Shiva is in the form of a Linga, so it is very rare to find the goddess in Linga form). The goddess is said to be the convergence of the three Devis - Kali, Lakshmi, and Saraswathi. Another notable example of the religious harmony of this place is - every evening there is a special pooja performed to the goddess to date and as a tribute to the rulers Hyder Ali and his son Tippu Sultan who are said to have patronized this temple! Otherwise, the temple looks very ordinary and this is due to the poor upkeep done by the endowment board and the temple authorities.',
    'Anantha Padmanabha Temple is located on the Udupi Agumbe road at a distance of 20 km from Udupi. This is an ancient temple with Anantha Padmanbha as a reigning deity. The deity is in standing position with Shanka, Chakra, Gada & Hastha.',
    'The temple is on a small hill near a bus stop between Udupi and Manipal. This temple is a small temple which however has a beautiful deity of Sri Indrani Devi. A nice temple to visit. It is an understated Hindu temple with a low-key vibe, surrounding gardens & a water feature.',
    'Anejhari Butterfly Camp is located near Kollur, about 80 km from Udupi. The camp offers an amazing opportunity to trek the Kodachadri peak (10th highest peak in Karnataka), a declared natural heritage site by the Government of Karnataka.',
    'Kolluru or Kollur is a small temple-town in Byndoor Taluk in Udupi district of Karnataka state, India. It is situated about 27 km from Byndoor town. This village lies at the foot of the Western Ghats and is famous for the Mookambika temple, a Hindu pilgrim center.'
    ];

    return Center(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.yellow,
              title: Text(
                args.text,
                style: TextStyle(
                    color: Colors.black
                ),
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(args.path),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconTheme(
                          data: IconThemeData(
                              size: 28.0,
                              color: Colors.black
                          ),
                          child: Icon(Icons.share),
                        ),
                        IconTheme(
                          data: IconThemeData(
                              size: 28.0,
                              color: Colors.black
                          ),
                          child: Icon(Icons.message),
                        ),
                        IconTheme(
                          data: IconThemeData(
                              size: 28.0,
                              color: Colors.black
                          ),
                          child: Icon(Icons.directions),
                        ),
                        Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                        ),
                        Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.red,
                        ),
                        Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      args.text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      args.dist.toString() + ' kms from MIT Campus',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      details[args.index-1],
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }
}

class Arguments {
  final int index;
  final String path;
  final String text;
  final int dist;
  Arguments(this.index, this.path, this.text, this.dist);
}

class BGColor {
  final Color color;
  final String cname;
  const BGColor(this.color, this.cname);
}




