// import 'package:flutter/material.dart';

// class SignForm extends StatefulWidget {
//   const SignForm({Key? key}) : super(key: key);
//   @override
//   State<SignForm> createState() => _LoginFormClassState();
// }

// class _LoginFormClassState extends State<SignForm> {
//   final TextEditingController username = TextEditingController();
//   final TextEditingController password = TextEditingController();
//   bool _isObscure = true;
//   String passBackData = '';
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _formKey,
//         child: ListView(
//           children: [
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Center(
//                 child: SizedBox(
//                   child: Icon(
//                     Icons.person_rounded,
//                     size: 200,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   labelText: "Username",
//                   hintText: "Enter Username",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//                 controller: username,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter username';
//                   }
//                   return null;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 obscureText: _isObscure,
//                 decoration: InputDecoration(
//                     labelText: "Password",
//                     hintText: "Enter Password",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                           _isObscure ? Icons.visibility : Icons.visibility_off),
//                       onPressed: () {
//                         setState(() {
//                           _isObscure = !_isObscure;
//                         });
//                       },
//                     )),
//                 controller: password,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter password';
//                   }
//                   return null;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: MaterialButton(
//                 color: Colors.blue,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     // If the form is valid, display a snackbar. In the real world, you'd oftern call as server aor save the infomration in a database.
//                     // Navigator.pushReplacementNamed(context, Routes.FirstScreen);
//                   }
//                 },
//                 child: const Text(
//                   "Log In",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Center(
//                 child: SizedBox(
//                   child: Text("Forget Password",
//                       style: TextStyle(
//                         color: Colors.black,
//                       )),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Center(
//                 child: GestureDetector(
//                   onTap: () {
//                     // Navigator.pushNamed(context, Routes.firstScreen);
//                   },
//                   child: const SizedBox(
//                     child: Text("Not a member. Sign up now ",
//                         style: TextStyle(
//                           color: Colors.black,
//                         )),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
