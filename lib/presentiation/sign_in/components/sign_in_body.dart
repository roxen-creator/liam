// import 'package:flutter/material.dart';
// import 'package:liam/presentiation/resources/size_config.dart';
// import 'package:liam/presentiation/resources/strings_manager.dart';
// import 'package:liam/presentiation/widget/social_card.dart';
// import '../../resources/assets_manager.dart';

// class SignInBody extends StatelessWidget {
//   const SignInBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SizedBox(
//         width: double.infinity,
//         child: Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: SizeConfig.screenHeight * 0.04),
//                 Text(
//                   AppStrings.welcomeBack,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: getProportionateScreenWidth(20),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const Text(
//                   AppStrings.signInPageText,
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: SizeConfig.screenHeight * 0.08),
//                 // signForm(),
//                 SizedBox(height: SizeConfig.screenHeight * 0.08),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SocialCard(
//                       icon: ImageAssets.googleIcon,
//                       press: () {},
//                     ),
//                     SocialCard(
//                       icon: ImageAssets.faceBookIcon,
//                       press: () {},
//                     ),
//                     SocialCard(
//                       icon: ImageAssets.twitterIcon,
//                       press: () {},
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: getProportionateScreenHeight(20),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
