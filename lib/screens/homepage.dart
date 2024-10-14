import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? name;
  String? email;
  String? subject;
  String? message;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 100, left: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "UTSAVI",
                    style: GoogleFonts.ubuntu(
                      color: Colors.red,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 360,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: Text(
                      "HOME",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("about");
                    },
                    child: Text(
                      "ABOUT",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("services");
                    },
                    child: Text(
                      "SERVICES",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("portfolio");
                    },
                    child: Text(
                      "PORTFOLIO",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("contact");
                    },
                    child: Text(
                      "CONTACT",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "WELCOME!",
                        style: GoogleFonts.ubuntu(
                          color: Colors.red,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "I Am Flutter Developer",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "I'm a Flutter Developer, I am a Fresher. My expertise is to create \n and Flutter developer, Figma and many more",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 18,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 600,
                    width: 600,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        "assert/utsavi.jpg",
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Container(
                    height: 600,
                    width: 600,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        "assert/u1.jpg",
                      )),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, I am Utsavi Bhakhar",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "I'm a Flutter Developer, I'm very passionate dedicated \n to my work. I have acquired the skills and knowledge \n neccesary to make  your project a success. I enjoy every \n step of code process. From discussion and collaboration \n to concept and execution. but I find the most tion in \n seeing the finished product do everything for you that \n it was created to do.",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Name : Utsavi Bhakhar",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Age : 20",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Address : Rajkot",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Phone Number : +91 1234567890",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Email : example@gmail.com",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FloatingActionButton.extended(
                          onPressed: () {}, label: Text("Download Resume")),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "MY\t",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  TextSpan(
                    text: "SERVICES",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ])),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Container(
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
                              "https://tse4.mm.bing.net/th?id=OIP.l94Aqt0tTBFYbiaviXhC4gHaHa&pid=Api&P=0&h=180",
                              height: 80,
                              width: 80,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "App Development",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
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
                              "https://tse4.mm.bing.net/th?id=OIP.dRyGUSNQ61pWJir3c4zlXQHaHa&pid=Api&P=0&h=180",
                              height: 80,
                              width: 80,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Web Development",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
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
                              "https://tse4.mm.bing.net/th?id=OIP.LQuxpo8ALsDeEKStRncZRwHaHa&pid=Api&P=0&h=180",
                              height: 80,
                              width: 80,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Firebase Development",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
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
                              "https://static.vecteezy.com/system/resources/previews/017/322/215/original/ux-ui-design-icon-outline-illustration-vector.jpg",
                              height: 80,
                              width: 80,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "UI/UX Design",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
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
                              "https://media.istockphoto.com/vectors/with-gear-icon-linear-vector-id1206186579?k=20&m=1206186579&s=612x612&w=0&h=tYbuN6WzsY3bnKM0-U1Di53K-TDyzZLI6c07MpgEa2M=",
                              height: 80,
                              width: 80,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "API Calling",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
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
                            "https://tse3.mm.bing.net/th?id=OIP.8fNu5HX8ux502RaE-K2-hgHaFm&pid=Api&P=0&h=180",
                            height: 80,
                            width: 80,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "PHP Development",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "MY\t",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      TextSpan(
                        text: "PORTFOLIO",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
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
              Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "CONTACT\t",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  TextSpan(
                    text: "US",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ])),
              ),
              SizedBox(
                height: 80,
              ),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        ],
                        decoration: const InputDecoration(
                          label: Text("Name",
                              style: TextStyle(color: Colors.grey)),
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Name',
                        ),
                        onSaved: (val) {
                          name = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Your Name";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: emailController,
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          label: Text("Email",
                              style: TextStyle(color: Colors.grey)),
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Email',
                        ),
                        onSaved: (val) {
                          email = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Your Email";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: subjectController,
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        ],
                        decoration: const InputDecoration(
                          label: Text("Subject",
                              style: TextStyle(color: Colors.grey)),
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Subject',
                        ),
                        onSaved: (val) {
                          subject = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Your Subject";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: messageController,
                        maxLines: 7,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          label: Text(
                            "Message",
                            style: TextStyle(color: Colors.grey),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: 'Enter your Message',
                        ),
                        onSaved: (val) {
                          message = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Your Message";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      FloatingActionButton.extended(
                        label: Text("Send Message"),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                          }
                          print(name);
                          print(email);
                          print(subject);
                          print(message);
                        },
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "CopyRight © 2024 Utsavi | All Rights Reserved",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
