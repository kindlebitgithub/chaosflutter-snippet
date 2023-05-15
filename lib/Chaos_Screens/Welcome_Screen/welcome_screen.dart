import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../AuthenticationView/login_Screen.dart';
import '../Utilities/primairy_color.dart';


class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
    _controller = PageController(initialPage: 0);
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  List<String> image = [
    "images/welcome_1.png",
    "images/welcome_2.png",
    "images/welcome_3.png"
  ];

  List<String> welcomeText = [
    "Welcome to Chaos. This app is designed to make your life easier",
    "Quickly view all your family activities in once place, coordinate carpools, and get notified on time for activities",
    "Use with just your family or link up with others to help conquer the Chaos of family activity planning"
  ];

  bool isInstructionView =true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=>_onBackButtonTap(context),
      child: Scaffold(
        backgroundColor: Color(0xFFECF0F1),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  onPageChanged: (value){
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: image.length,
                  itemBuilder: (context, index){
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 6.h,
                          ),
                          Image.asset(image[index].toString(), width: 75.w, height: 50.h,),
                          SizedBox(height: 1.h),
                          Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),),
                          Padding(
                            padding:  EdgeInsets.all(20.0),
                            child: Text(welcomeText[index].toString(),textAlign: TextAlign.center, style: TextStyle(fontSize: 15),),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
           buildDot(image.length, context),
            SizedBox(
              height: 5.h,
            ),
            currentIndex == image.length - 1 ?
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  LoginScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.w),
                    color: const Color(0XFF3498DB)
                ),
                child:   Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Get Started",style: TextStyle(color: ColorX.whiteX),),
                ),
              ),
            ):Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6.w),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF3498DB)
                  ),
                  child: TextButton(
                    onPressed: (){
                    _controller.nextPage(duration: const Duration(milliseconds: 100), curve: Curves.bounceIn);
                  },
                    child: const Icon(Icons.arrow_forward,color: Color(0XFFFFFFFF),size: 20,),
                  ),
                ),

                TextButton(
                    onPressed: (){
                       // _controller.jumpToPage(3);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: const Text("Skip",style: TextStyle(color: Color(0XFF000000),fontSize: 20,fontWeight: FontWeight.bold),)
                )
              ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
  Center buildDot(int index, BuildContext context){
    return Center(
      child: SmoothPageIndicator(
        count: 3,
        controller: _controller,
        effect: const ScrollingDotsEffect(
          spacing: 12,
          dotColor: Colors.grey,
          activeDotColor: Colors.black,
          paintStyle: PaintingStyle.fill,
          dotHeight: 8,
          dotWidth: 8,
        ),
        onDotClicked: (index) => _controller.animateToPage(index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut),
      ),
    );
  }
  Future<bool> _onBackButtonTap(BuildContext context) async {
    bool exit = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Chaos \nAre you sure?"),
            content: const Text("Do you want to Exit an App "),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text("No")),
              TextButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: const Text("Yes")),
            ],
          );
        });
    return exit;
  }
}