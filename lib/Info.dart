import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Information",
          textScaleFactor: 1.15,
          style: TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Card(
                elevation: 0,
                color: const Color.fromRGBO(24, 123, 168, 0.8),
                child: SizedBox(
                  height: 280,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/logo.png', height: 100,
                        ),
                        //Icon(Icons.rocket_launch_rounded, size: 50),
                        const SizedBox(height: 20),
                        const Text(
                          'Clone Wars Quotes',
                          textScaleFactor: 2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'The most inspiring quotes in the galaxy!',
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: const SizedBox(
                  height: 80,
                  child: Center(
                    child: ListTile(
                      onTap: _launchUrlGithub,
                      leading: Icon(
                        Icons.code,
                        size: 30,
                      ),
                      title: Text(
                        'Open Source',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Code available on GitHub. Click here to see it.'),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: const SizedBox(
                  height: 80,
                  child: Center(
                    child: ListTile(
                      leading: Icon(
                        Icons.info_outline_rounded,
                        size: 30,
                      ),
                      title: Text(
                        'Version',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('0.1.3'),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: const SizedBox(
                  height: 330,
                  child: Column(
                    children: [

                      ListTile(
                        leading: Icon(
                          Icons.update_rounded,
                          size: 30,
                        ),
                        title: Text(
                          'Changelog',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('Recent changes and updates'),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(65, 10, 10, 10),
                        child: ListBody(
                          children: [
                            Text('0.1.3 (2023.05.29)', style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('Scroll to next Quote implemented.'),
                            SizedBox(height: 15),
                            Text('0.1.2 (2023.05.28)', style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('App revised; "All Quotes" page created; Information page updated; Logo app added.'),
                            SizedBox(height: 15),
                            Text('0.1.1 (2023.05.25)', style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('App revised; Information page updated.'),
                            SizedBox(height: 15),
                            Text('0.1.0 (2023.05.24)', style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('First version developed.',
                                textAlign: TextAlign.start),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: const SizedBox(
                  height: 100,
                  child: Center(
                    child:
                      ListTile(
                        onTap: _launchUrlMedium,
                        leading: Icon(
                          Icons.format_quote_rounded,
                          size: 30,
                        ),
                        title: Text(
                          'Quotes: Medium.com/@naacel',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                            'Clone Wars Opening Quotes That Will Help You Think Like A Jedi'),
                      ),

                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: const SizedBox(
                  height: 80,
                  child:
                    Center(
                      child:
                      ListTile(
                        onTap: _launchUrlVectorified,
                        leading: Icon(
                          Icons.attribution_rounded,
                          size: 30,
                        ),
                        title: Text(
                          'Logo: Vectorified',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                            'Clone Trooper Icon (modified)'),
                      ),
                ),
              ),
            ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: const SizedBox(
                  height: 100,
                  child: Center(
                    child: ListTile(
                      onTap: _launchUrlMail,
                      leading: Icon(
                        Icons.mail_outline_rounded,
                        size: 30,
                      ),
                      title: Text(
                        'Author: Anderson de Toledo',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                          'Developed in Flutter for learning purposes. Suggestions are welcome.'),
                    ),
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

final Uri _urlGithub =
    Uri.parse('https://github.com/toledoanderson/clone-wars-quotes');
final Uri _urlMedium = Uri.parse(
    'https://medium.com/illumination/clone-wars-opening-quotes-that-will-help-you-think-like-a-jedi-64d0300653b3');
final Uri _urlVectorified = Uri.parse(
    'https://vectorified.com/clone-trooper-icon');

final Uri _urlMail = Uri.parse('mailto:email@mecaniza.org');

Future<void> _launchUrlGithub() async {
  if (!await launchUrl(_urlGithub, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $_urlGithub');
  }
}

Future<void> _launchUrlMedium() async {
  if (!await launchUrl(_urlMedium, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $_urlMedium');
  }
}

Future<void> _launchUrlVectorified() async {
  if (!await launchUrl(_urlVectorified, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $_urlVectorified');
  }
}

Future<void> _launchUrlMail() async {
  if (!await launchUrl(_urlMail, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $_urlMail');
  }
}
