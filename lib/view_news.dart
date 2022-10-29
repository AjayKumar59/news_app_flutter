import 'package:flutter/material.dart';
import 'package:indian_news18/HomePage%20.dart';
import 'package:indian_news18/model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class ViewNews extends StatelessWidget {
  const ViewNews({super.key, required this.post});
  final News post;
  Future<void> launchLink(String url, {bool isNewTab = true}) async {
    await launchUrl(
      Uri.parse(url),
      webOnlyWindowName: isNewTab ? '_blank' : '_self',
    );
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss | EEEE d MMM |').format(now);
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            child: Text("${post.title ?? ''}"),
          )),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      post.title ?? '',
                      maxLines: 5,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                    child: Text(
                  "${formattedDate} ${post.source ?? ''}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  post.img ?? '',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 2.8,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "${post.title ?? ''}Google Pixel 7 is now official. 7 will besold in Snow, Obsidian and Lemongrass colour options via Flipkart. Google has announced a limited time launch offer includin Google Pixel 7 is now official. 7 will besold in Snow, Obsidian and Lemongrass colour options via Flipkart. Google has announced a limited time launch offer includin Google Pixel 7 is now official. 7 will besold in Snow, Obsidian . ",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                child: InkWell(
                  onTap: () {
                    launchLink(post.url ?? '', isNewTab: true);
                  },
                  child: const Text(
                    "Read More",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
