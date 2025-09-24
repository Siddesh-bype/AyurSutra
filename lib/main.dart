
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

// main.dart

void main() {
  runApp(const AyurSutraApp());
}

// constants/colors.dart

const Color ayurvedaPrimary = Color(0xFF8B4513); // SaddleBrown
const Color ayurvedaSecondary = Color(0xFFD2691E); // Chocolate
const Color ayurvedaAccent = Color(0xFFCD853F); // Peru
const Color ayurvedaLight = Color(0xFFF5DEB3); // Wheat
const Color warmWhite = Color(0xFFFAF3E8);
const Color darkBrown = Color(0xFF5C4033);
const Color cream = Color(0xFFFFF7ED);
const Color raktamokshanaRuby = Color(0xFF9B111E);

// constants/text_styles.dart

final TextStyle heading1 = GoogleFonts.playfairDisplay(
  fontSize: 48,
  fontWeight: FontWeight.bold,
  color: darkBrown,
);

final TextStyle heading2 = GoogleFonts.playfairDisplay(
  fontSize: 32,
  fontWeight: FontWeight.w700,
  color: darkBrown,
);

final TextStyle subtitle = GoogleFonts.inter(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  color: ayurvedaAccent,
);

final TextStyle bodyText1 = GoogleFonts.inter(
  fontSize: 16,
  height: 1.5,
  color: darkBrown,
);

final TextStyle bodyText2 = GoogleFonts.inter(
  fontSize: 14,
  height: 1.5,
  color: ayurvedaAccent,
);

final TextStyle buttonText = GoogleFonts.inter(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.5,
);

// models/therapy.dart

class Therapy {
  final String name;
  final String image;
  final String description;

  Therapy({
    required this.name,
    required this.image,
    required this.description,
  });
}

// models/product.dart

class Product {
  final String name;
  final String image;
  final double price;

  Product({
    required this.name,
    required this.image,
    required this.price,
  });
}

// models/wellness_center.dart

class WellnessCenter {
  final String name;
  final String location;
  final String image;

  const WellnessCenter({
    required this.name,
    required this.location,
    required this.image,
  });
}

// app.dart

class AyurSutraApp extends StatelessWidget {
  const AyurSutraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AyurSutra',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: ayurvedaPrimary,
        scaffoldBackgroundColor: warmWhite,
        colorScheme: const ColorScheme.light().copyWith(
          primary: ayurvedaPrimary,
          secondary: ayurvedaSecondary,
          tertiary: ayurvedaAccent,
          surface: cream,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: darkBrown,
          error: raktamokshanaRuby,
        ),
        textTheme: TextTheme(
          displayLarge: heading1,
          headlineMedium: heading2,
          titleMedium: subtitle,
          bodyMedium: bodyText1,
          bodySmall: bodyText2,
          labelLarge: buttonText,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: warmWhite,
          foregroundColor: darkBrown,
          elevation: 0,
          titleTextStyle: subtitle.copyWith(color: darkBrown),
          iconTheme: const IconThemeData(color: darkBrown),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ayurvedaPrimary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            textStyle: buttonText,
          ),
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
             side: BorderSide(color: ayurvedaLight.withOpacity(0.5)),
          ),
          shadowColor: ayurvedaPrimary.withOpacity(0.1),
        )
      ),
      home: const HomeScreen(),
    );
  }
}

// screens/home_screen.dart

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreenContent(),
    const TherapiesScreen(),
    const CentersScreen(),
    const BookingScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

// screens/home_screen_content.dart

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to AyurSutra',
              style: heading1.copyWith(fontSize: 36),
            ),
            const SizedBox(height: 8),
            Text(
              'Discover the ancient science of healing.',
              style: subtitle.copyWith(fontSize: 20),
            ),
            const SizedBox(height: 32),
            const SearchBar(),
            const SizedBox(height: 32),
            Text(
              'Popular Therapies',
              style: heading2,
            ),
            const SizedBox(height: 16),
            const TherapiesCarousel(),
            const SizedBox(height: 32),
            Text(
              'Featured Products',
              style: heading2,
            ),
            const SizedBox(height: 16),
            const FeaturedProducts(),
          ],
        ),
      ),
    );
  }
}

// screens/therapies_screen.dart

class TherapiesScreen extends StatelessWidget {
  const TherapiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Therapies Screen'),
    );
  }
}

// screens/centers_screen.dart

class CentersScreen extends StatelessWidget {
  const CentersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<WellnessCenter> wellnessCenters = [
      const WellnessCenter(
        name: 'Serene Sands',
        location: 'Goa, India',
        image: 'https://picsum.photos/seed/serene-sands/400/300',
      ),
      const WellnessCenter(
        name: 'Himalayan Retreat',
        location: 'Rishikesh, India',
        image: 'https://picsum.photos/seed/himalayan-retreat/400/300',
      ),
      const WellnessCenter(
        name: 'Kerala Backwaters',
        location: 'Alleppey, India',
        image: 'https://picsum.photos/seed/kerala-backwaters/400/300',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wellness Centers'),
      ),
      body: ListView.builder(
        itemCount: wellnessCenters.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: CenterCard(center: wellnessCenters[index]),
          );
        },
      ),
    );
  }
}

// screens/booking_screen.dart

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Booking Screen'),
    );
  }
}

// screens/profile_screen.dart

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen'),
    );
  }
}

// widgets/custom_app_bar.dart

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: warmWhite,
      shape: Border(bottom: BorderSide(color: ayurvedaLight.withOpacity(0.5), width: 1)),
      title: Row(
        children: [
          SvgPicture.asset(
            'assets/images/logo.svg',
            height: 40,
            colorFilter: const ColorFilter.mode(ayurvedaPrimary, BlendMode.srcIn),
          ),
          const SizedBox(width: 8),
          RichText(
            text: TextSpan(
              style: GoogleFonts.playfairDisplay(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: ayurvedaPrimary,
              ),
              children: <TextSpan>[
                const TextSpan(text: 'AyurSutra'),
                TextSpan(
                  text: ' आयुरसूत्र',
                  style: GoogleFonts.notoSansDevanagari(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                     color: ayurvedaSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined, color: ayurvedaAccent, size: 28),
          onPressed: () {
            // Handle notification icon tap
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// widgets/bottom_nav_bar.dart

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: warmWhite,
        border: Border(top: BorderSide(color: ayurvedaLight.withOpacity(0.5), width: 1)),
        boxShadow: [
          BoxShadow(
            color: ayurvedaPrimary.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: ayurvedaPrimary,
        unselectedItemColor: ayurvedaAccent.withOpacity(0.7),
        backgroundColor: Colors.transparent,
        elevation: 0, // Handled by the container
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
        unselectedLabelStyle: GoogleFonts.inter(),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.spa_outlined),
            activeIcon: Icon(Icons.spa),
            label: 'Therapies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            activeIcon: Icon(Icons.location_on),
            label: 'Centers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            activeIcon: Icon(Icons.menu_book),
            label: 'Knowledge',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// widgets/therapies_carousel.dart

class TherapiesCarousel extends StatelessWidget {
  const TherapiesCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Therapy> therapies = [
      Therapy(
        name: 'Abhyanga',
        image: 'https://images.unsplash.com/photo-1599905292211-952d7234d654?q=80&w=2070&auto=format&fit=crop',
        description: 'Warm oil massage to deeply nourish the body.',
      ),
      Therapy(
        name: 'Shirodhara',
        image: 'https://images.unsplash.com/photo-1544161515-cfd836b080e1?q=80&w=2070&auto=format&fit=crop',
        description: 'A continuous stream of warm oil on the forehead.',
      ),
      Therapy(
        name: 'Panchakarma',
        image: 'https://images.unsplash.com/photo-1600334089648-b0d9d3028269?q=80&w=2070&auto=format&fit=crop',
        description: 'A comprehensive detoxification program.',
      ),
      Therapy(
        name: 'Nasya',
        image: 'https://images.unsplash.com/photo-1512290923902-8a9f31a23653?q=80&w=2070&auto=format&fit=crop',
        description: 'Nasal administration of herbal oils.',
      ),
      Therapy(
        name: 'Swedana',
        image: 'https://images.unsplash.com/photo-1585832349372-a72a951c3ac8?q=80&w=2070&auto=format&fit=crop',
        description: 'An herbal steam therapy for detoxification.',
      ),
    ];

    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: therapies.length,
        itemBuilder: (context, index) {
          final therapy = therapies[index];
          return Container(
            width: 180,
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: ayurvedaPrimary.withOpacity(0.1),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: therapy.image,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(color: ayurvedaPrimary),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error, color: raktamokshanaRuby),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(therapy.name, style: subtitle.copyWith(fontSize: 18)),
                        const SizedBox(height: 4),
                        Text(
                          therapy.description,
                          style: bodyText2.copyWith(fontSize: 12),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// widgets/search_bar.dart

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: ayurvedaPrimary.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        style: bodyText1.copyWith(color: darkBrown),
        decoration: InputDecoration(
          hintText: 'Search for therapies, products...',
          hintStyle: bodyText1.copyWith(color: ayurvedaAccent.withOpacity(0.8)),
          prefixIcon: const Icon(Icons.search, color: ayurvedaAccent, size: 24),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: ayurvedaLight.withOpacity(0.7)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: ayurvedaLight.withOpacity(0.7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: const BorderSide(color: ayurvedaPrimary, width: 1.5),
          ),
        ),
      ),
    );
  }
}

// widgets/featured_products.dart

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
          name: 'Ashwagandha',
          image: 'https://images.unsplash.com/photo-1593035345284-6334d61397b9?q=80&w=2070&auto=format&fit=crop',
          price: 15.99),
      Product(
          name: 'Triphala',
          image: 'https://images.unsplash.com/photo-1579847128218-e738a50c3a81?q=80&w=2070&auto=format&fit=crop',
          price: 12.50),
      Product(
          name: 'Brahmi',
          image: 'https://images.unsplash.com/photo-1628102206402-3f4314644a03?q=80&w=2070&auto=format&fit=crop',
          price: 18.00),
      Product(
          name: 'Turmeric',
          image: 'https://images.unsplash.com/photo-1596701062351-8c2c14d1fdd0?q=80&w=2070&auto=format&fit=crop',
          price: 9.99),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: ayurvedaPrimary.withOpacity(0.08),
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: product.image,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(color: ayurvedaPrimary),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error, color: raktamokshanaRuby),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(product.name, style: subtitle),
                      Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        style: bodyText1.copyWith(
                          color: ayurvedaPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8
                              ),
                              textStyle: buttonText.copyWith(
                                  fontSize: 12
                              )
                          ),
                          child: const Text('Add to Cart'))
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// widgets/center_card.dart

class CenterCard extends StatelessWidget {
  final WellnessCenter center;

  const CenterCard({
    super.key,
    required this.center,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: CachedNetworkImage(
              imageUrl: center.image,
              height: 180,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  center.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  center.location,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
