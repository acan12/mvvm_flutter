// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'data/client.dart';
// import 'data/remote/response/user_response.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
// // to set the root of app.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'API Demo Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text("Flutter - Retrofit"),
//       ),
//       body: _buildBody(context),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {},
//         label: Icon(Icons.cancel),
//         backgroundColor: Colors.green,
//       ),
//     );
//   }
//
//   // build list view & manage states
//   FutureBuilder<UserResponse> _buildBody(BuildContext context) {
//     final client = APIClient(Dio(BaseOptions(contentType: "application/json")));
//     return FutureBuilder<UserResponse>(
//       future: client.getPersona(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           final UserResponse? persona = snapshot.data;
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Center(child: Text(persona?.full_name ?? "")),
//               Center(
//                   child: Text(persona?.email ?? "",
//                       style: TextStyle(fontWeight: FontWeight.bold)))
//             ],
//           );
//         } else {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     );
//   }
// }
