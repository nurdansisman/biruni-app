import 'package:flutter/material.dart';
import 'dart:async';
import 'pages/about_page.dart';
import 'pages/candidate_student_page.dart';
import 'pages/academic_programs_page.dart';
import 'pages/events_page.dart';
import 'pages/contact_support_page.dart';
import 'pages/language_options_page.dart';
import 'pages/campus_guide_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Import ekleyin

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = Locale('tr', 'TR');

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biruni Connect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade900,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade700,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      locale: _locale,
      supportedLocales: [
        Locale('en', 'US'),
        Locale('tr', 'TR'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: HomePage(setLocale),
    );
  }
}

class HomePage extends StatefulWidget {
  final Function(Locale) setLocale;

  HomePage(this.setLocale);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<Widget> buttons = [];

  @override
  void initState() {
    super.initState();
    _loadButtons();
  }

  _loadButtons() {
    List<Widget> tempButtons = [];

    tempButtons.add(_buildAnimatedButton('Kampüs Rehberi', Icons.map, CampusGuidePage(), Offset(-1, 0)));
    tempButtons.add(_buildAnimatedButton('Hakkında', Icons.info, AboutPage(), Offset(1, 0)));
    tempButtons.add(_buildAnimatedButton('Aday Öğrenci', Icons.school, CandidateStudentPage(), Offset(-1, 0)));
    tempButtons.add(_buildAnimatedButton('Akademik Programlar', Icons.book, AcademicProgramsPage(), Offset(1, 0)));
    tempButtons.add(_buildAnimatedButton('Etkinlikler', Icons.event, EventsPage(), Offset(-1, 0)));
    tempButtons.add(_buildAnimatedButton('Dil Seçenekleri', Icons.language, LanguageOptionsPage(widget.setLocale), Offset(-1, 0)));

    setState(() {
      buttons = tempButtons;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biruni Connect'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://pbs.twimg.com/profile_images/918754052816564224/ZQkhbLET_400x400.jpg',
                height: 150,
              ),
              SizedBox(height: 30),
              ...buttons,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedButton(String title, IconData icon, Widget page, Offset startOffset) {
    return AnimatedButton(
      title: title,
      icon: icon,
      page: page,
      startOffset: startOffset,
    );
  }
}

class AnimatedButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final Widget page;
  final Offset startOffset;

  AnimatedButton({
    required this.title,
    required this.icon,
    required this.page,
    required this.startOffset,
  });

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );
    _animation = Tween<Offset>(
      begin: widget.startOffset,
      end: Offset(0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Controller'ı doğru şekilde dispose edin
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => widget.page),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 30),
            backgroundColor: Colors.blue.shade800,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5,
            shadowColor: Colors.black.withOpacity(0.3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(widget.icon, color: Colors.white),
              SizedBox(width: 12),
              Text(
                widget.title,
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
