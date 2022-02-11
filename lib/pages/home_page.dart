import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:get/get.dart';
import 'package:hamaza_portfolio/pages/about_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_background/animated_background.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  final String title = 'Welcome to my portfolio';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    const MaterialApp(
      title: 'Hamzah',
    );
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
          IconButton(
            icon: const Icon(Icons.wb_sunny),
            onPressed: () {
              Get.changeTheme(ThemeData.light());
            },
          ),
          const SizedBox(
            width: 10.0,
          ),
          IconButton(
            icon: const Icon(Icons.dark_mode_outlined),
            onPressed: () {
              Get.changeTheme(ThemeData.dark());
            },
          ),
        ],
      ),
      drawer: const Drawer(
        backgroundColor: Colors.grey,
        child: Center(child: Text("hamza portfolio")),
      ),
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: const ParticleOptions(
            baseColor: Colors.blue,
            particleCount: 1,
          ),
        ),
        vsync: this,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset("assets/images/image.jpg")),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Hamza Khalifah",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.brown,
                ),
              ),
              const Text(
                "programer",
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 250,
                      child: FlutterSocialButton(
                        onTap: () {
                          showAlertDialog(context);
                        },
                        mini: false,
                        title: 'Apple',
                        buttonType: ButtonType
                            .apple, // Button type for different type buttons
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: FlutterSocialButton(
                        onTap: () {
                          _launchURL(
                            "https://www.facebook.com/hamza.khalifa.1420354/",
                          );
                        },
                        mini: false,
                        title: 'follow me on fb',
                        buttonType: ButtonType
                            .facebook, // Button type for different type buttons
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: FlutterSocialButton(
                        onTap: () {
                          _launchURL("https://wa.me/+963949980936?text=Hi");
                        },
                        mini: false,
                        title: 'Contact me on WhatsApp',
                        buttonType: ButtonType
                            .whatsapp, // Button type for different type buttons
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: FlutterSocialButton(
                        onTap: () {
                          _launchURL("tel://+963947583262");
                        },
                        mini: false,
                        title: 'Contact me ',
                        buttonType: ButtonType
                            .phone, // Button type for different type buttons
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: FlutterSocialButton(
                        onTap: () {
                          _launchURL(
                              "mailto:hamzakhalifah9@gmail.com?subject=<subject>&body=<body>");
                        },
                        mini: false,
                        title: 'Contact me ',
                        buttonType: ButtonType
                            .email, // Button type for different type buttons
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch';
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Coming Soon"),
    content: Text("Apple Account coming soon"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
// fb: https://www.facebook.com/hamza.khalifa.1420354/
//email: mailto:hamzakhalifah9@gmail.com?subject=<subject>&body=<body>"
//instagram:   https://www.instagram.com/hamzakhalifa45/
// https://wa.me/+963947583262?text=Hi

// "tel://+963947583262"
