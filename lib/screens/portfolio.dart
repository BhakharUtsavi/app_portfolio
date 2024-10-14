import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: Row(
                children: [
                  Text("UTSAVI",
                    style: GoogleFonts.ubuntu(
                      color: Colors.red,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 360,),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamed("/");
                  },
                    child: Text("HOME",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamed("about");
                  },
                    child: Text("ABOUT",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamed("services");
                  },
                    child: Text("SERVICES", style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamed("portfolio");
                  },
                    child: Text("PORTFOLIO", style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamed("contact");
                  },
                    child: Text("CONTACT", style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  SizedBox(width: 30,)
                ],
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                          text: "MY\t",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        TextSpan(
                          text: "PORTFOLIO",
                          style: TextStyle(color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ]
                  )
              ),
            ),
            SizedBox(height: 80,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap:(){
                    launchUrl(Uri.parse("https://github.com/BhakharUtsavi/ch3_project_invoice_generator_app"));
                  },
                  child: Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/b5/fe/2e/b5fe2ea1-5be5-7593-db48-0d3be58fdc75/AppIcon-0-0-1x_U007ephone-0-85-220.jpeg/1200x630wa.png",
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Invoice Generator App",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: (){
                    launchUrl(Uri.parse("https://github.com/BhakharUtsavi/festival_app"));
                  },
                  child: Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/previews/010/063/543/non_2x/music-festival-colorful-icon-with-notes-and-the-inscription-music-3d-render-png.png",
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Festival App",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: (){
                    launchUrl(Uri.parse("https://github.com/BhakharUtsavi/Practical-1-Ecommerce-App"));
                  },
                  child: Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://tse1.mm.bing.net/th?id=OIP.Sr5aMBqOGnjoh-1Ro4a5xwHaGb&pid=Api&P=0&h=180",
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Ecommerce-App",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: (){
                    launchUrl(Uri.parse("https://github.com/BhakharUtsavi/project_resumebuilder"));
                  },
                  child: Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://tse2.mm.bing.net/th?id=OIP.OkNdPPnvQdXRstWHJYkjAAHaHa&pid=Api&P=0&h=180",
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Resume Builder",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: (){
                    launchUrl(Uri.parse("https://github.com/BhakharUtsavi/ch2_project_clock"));
                  },
                  child: Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://tse4.mm.bing.net/th?id=OIP.zpx0eI_tntHklqzick87VgHaFj&pid=Api&P=0&h=180",
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Clock App",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 50,
                // ),
                // Container(
                //   height: 280,
                //   width: 350,
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Colors.white),
                //   ),
                //   child: Column(
                //     children: [
                //       SizedBox(
                //         height: 30,
                //       ),
                //       ClipRRect(
                //           borderRadius: BorderRadius.circular(100),
                //           child: Image.network(
                //             "https://tse3.mm.bing.net/th?id=OIP.8fNu5HX8ux502RaE-K2-hgHaFm&pid=Api&P=0&h=180",
                //             height: 80,
                //             width: 80,
                //           )),
                //       SizedBox(
                //         height: 30,
                //       ),
                //       Text(
                //         "PHP Development",
                //         style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 30,
                //             fontWeight: FontWeight.bold),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );

  }
}
