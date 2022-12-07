// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:student_management/ui/sign_in/sign_in_delegate.dart';
// import 'package:student_management/ui/sign_in/sign_in_provider.dart';
//
// import '../../components/base_view.dart';
// import '../../utils/colors.dart';
// import '../../utils/styles.dart';
// import '../../utils/toast.dart';
//
// class SignInScreen extends StatelessWidget {
//   String? account;
//   String? password;
//
//   SignInScreen({Key? key, this.account, this.password}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<LoginProvider>.value(
//       value: LoginProvider(),
//       child: _BodyWidget(account ?? "", password ?? ""),
//     );
//   }
// }
//
// class _BodyWidget extends StatefulWidget {
//   String account;
//   String password;
//
//   _BodyWidget(this.account, this.password);
//
//   @override
//   _BodyWidgetState createState() => _BodyWidgetState();
// }
//
// class _BodyWidgetState extends State<_BodyWidget> implements SignInDelegate {
//   late LoginProvider _provider;
//
//   @override
//   void didChangeDependencies() {
//     // TODO: implement didChangeDependencies
//     super.didChangeDependencies();
//     _provider = Provider.of(context);
//     _provider.delegate = this;
//     _provider.emailController.text = widget.account;
//     _provider.passwordController.text = widget.password;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BaseView(child: Builder(builder: (context) {
//       return Container(
//         width: double.infinity,
//         decoration: BoxDecoration(color: Colors.white),
//         child: Column(
//           children: <Widget>[
//             const SizedBox(height: 20,),
//             const Expanded(
//               flex: 20,
//                 child: Icon(Icons.add)
//             ),
//             Text(
//                 'SIGNIN',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20,),
//             Expanded(
//               child: Container(
//                 margin: const EdgeInsets.all(20),
//                 child: Column(
//                   children: <Widget>[
//                     TextFormField(
//                       // controller: _provider.accountController,
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 12),
//                         border: CustomBorder.enabledBorder,
//                         hintText: 'Account',
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(15),
//                           borderSide:
//                               const BorderSide(color: primaryMaterialColor),
//                         ),
//                       ),
//                       keyboardType: TextInputType.emailAddress,
//                     ),
//                     const SizedBox(height: 20),
//                     TextFormField(
//                       // controller: _provider.passwordController,
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 12),
//                         border: CustomBorder.enabledBorder,
//                         hintText: 'Password',
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(15),
//                           borderSide:
//                           const BorderSide(color: primaryMaterialColor),
//                         ),
//                       ),
//                       keyboardType: TextInputType.emailAddress,
//                     ),
//                     const SizedBox(height: 20),
//                     Container(
//                       margin: EdgeInsets.only(left: 200),
//                       width: 120,
//                       height: 45,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text(
//                           "Sign In",
//                           style: CustomTextStyle.textFormFieldRegular
//                               .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
//                         ),
//                         style: ElevatedButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           backgroundColor: Colors.redAccent
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               flex: 60,
//             )
//           ],
//         ),
//       );
//     }));
//   }
//
//
//   @override
//   void showError(String message) {
//     // TODO: implement showError
//   }
//
//   @override
//   void showSuccess(String message) {
//     // TODO: implement showSuccess
//   }
// }
