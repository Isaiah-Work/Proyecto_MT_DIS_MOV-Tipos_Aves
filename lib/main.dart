import 'package:flutter/material.dart';
import 'package:proyecto_mt/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme(){
  final ThemeData base = ThemeData.light(useMaterial3: true);
  
  return base.copyWith(
    textTheme: GoogleFonts.rubikTextTheme(base.textTheme),
    colorScheme: base.colorScheme.copyWith(
      surface: kSky50,
      primary: kBlue500,
      onPrimary: Colors.white,
      secondary: kBlue300,
      error: kError,      
      primaryContainer: kCyan100,
      onPrimaryContainer: kBlue700,
      onSecondary: kBlue700,
      secondaryContainer: kSky50,
      onSecondaryContainer: kBlue700,
      onSurface: kBlue700,
    ),
    scaffoldBackgroundColor: kSky50,
    navigationBarTheme: 
      NavigationBarThemeData(
        height: 80,
        backgroundColor: kBlue300,
        elevation: 3,
        indicatorColor: kBlue700,
        indicatorShape: StadiumBorder(),
        iconTheme: WidgetStateProperty.fromMap({
          WidgetState.selected: IconThemeData(color: kBlue700),
          WidgetState.any: IconThemeData(color: kError),
        })
      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kBlue300,
      selectedItemColor: kBlue700,
      type: BottomNavigationBarType.fixed,
      elevation: 3,
    ),
    navigationDrawerTheme: NavigationDrawerThemeData(
      backgroundColor: kSky50,
      indicatorColor: kCyan200,
      elevation: 1,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: kSky50,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
    ), 
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      //clipBehavior: Clip.antiAlias,
    ),
    
  );
}

TextTheme _buildAppTextTheme(TextTheme base){
  return base
    .copyWith(
      headlineSmall: base.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
        color: kBlue700,
      ),
      titleLarge: base.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 20.0,
        color: kBlue700,
      ),
      bodySmall: base.bodySmall!.copyWith(        
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: kBlue700,
      ),
      bodyLarge: base.bodyLarge!.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.4,
        color: kBlue700,
      ),
    )
    .apply(
      fontFamily: 'Rubik',
      displayColor: kBlue700,
      bodyColor: kBlue700
    );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tipos de Aves',
      home: HomePage(),
      theme: _appTheme,
      //textTheme: _buildAppTextTheme(base.textTheme),
      //2home: const //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  Widget _buildSeccion1(Orientation orientation){
    final bool isLandscape = (orientation == Orientation.landscape);

    final double imageWidth = isLandscape ? 400:300;
    final double imageHeight = isLandscape ? 200:300;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/aves_1.png',
            fit:BoxFit.cover,
            width: 300,
            height: 300,
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: Text('No tiene olfato, lo que le dificulta mucho la caza de presas.',
            style: TextStyle(color: Colors.white),),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Text('Águila Blanca',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),),
        ),
      ],
    );
  }

    Widget _buildSeccion2(Orientation orientation){
    final bool isLandscape = (orientation == Orientation.landscape);

    final double imageWidth = isLandscape ? 400:300;
    final double imageHeight = isLandscape ? 200:300;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/aves_2.png',
            fit:BoxFit.cover,
            width: 300,
            height: 300,
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: Text('Tiene patas larguísimas que utiliza para pisotear serpientes venenosas hasta matarla.',
            style: TextStyle(color: Colors.white),),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Text('Ave secretario',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),),
        ),
      ],
    );
  }

    Widget _buildSeccion3(Orientation orientation){
    final bool isLandscape = (orientation == Orientation.landscape);

    final double imageWidth = isLandscape ? 400:300;
    final double imageHeight = isLandscape ? 200:300;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/aves_3.jpg',
            fit:BoxFit.cover,
            width: 300,
            height: 300,
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: Text('Se encuentra en América desde el sur de los Estados Unidos hasta la Amazonía.',
            style: TextStyle(color: Colors.white),),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Text('Pelícano pardo',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),),
        ),
      ],
    );
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Tipos de Aves"),
      ),
      body: 
        OrientationBuilder(
            builder: (context, orientation) {
              switch (_selectedIndex){
                case 0:
                return Center(child: _buildSeccion1(orientation));
                case 1:
                return Center(child: _buildSeccion2(orientation));
                case 2:
                return Center(child: _buildSeccion3(orientation));
                default:
                return _buildSeccion1(orientation);
              }
            },
          
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.flutter_dash),
            label: "Águila Blanca",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: "Ave Secretario",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flight),
            label: "Pelícano Pardo",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
        
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: kBlue500,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [                  
                  Text(
                    'Tipos de Aves',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.flutter_dash),
              title: Text('Águila Blanca'),           
              selected: _selectedIndex == 0,
              onTap: (){
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.pets),
              title: Text('Ave Secretario'),
              selected: _selectedIndex == 1,
              onTap: (){
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.flight),
              title: Text('Pelícano Pardo'),
              selected: _selectedIndex == 2,
              onTap: (){
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
  


