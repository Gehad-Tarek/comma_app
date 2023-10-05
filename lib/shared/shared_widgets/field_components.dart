// import 'package:flutter/material.dart';
// import '../../constants/constants.dart';

// enum FieldType { email, password, text ,search}

// class FieldModel {
//   final String? labelTxt;
//   final String? hintTxt;
//   final IconData? icon;
//   final TextInputType? type;
//   TextEditingController? controller;
//   bool? isSecure;
//   final FieldType? fieldType;
//   bool? enabled;
//   final Key? key;
//   Function? onsumbit = () {};
//   final int? maxLines;
//   final int? maxLength;
//   FieldModel(
//       {this.labelTxt = '',
//       this.hintTxt = '',
//       this.icon,
//       this.type,
//       this.controller,
//       this.isSecure = false,
//       this.fieldType = FieldType.text,
//       this.enabled = true,
//       this.onsumbit,
//       this.maxLines,
//       this.maxLength,
//       this.key});
// }

// class CustomField extends StatefulWidget {
//   final FieldModel model;
//   const CustomField(this.model, {super.key});

//   @override
//   State<CustomField> createState() => _CustomFieldState();
// }

// class _CustomFieldState extends State<CustomField> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: TextFormField(
//         key: widget.model.key,
//         validator: (x) {
//           if (x!.isEmpty) {
//             return 'This Field Required';
//           }
//         },
//         decoration: InputDecoration(
//           ///  fillColor:widget.model.fieldType == FieldType.search?Constants.kWhiteColor: Constants.kMaintBlueColor,
//            // hoverColor:widget.model.fieldType == FieldType.search?Constants.kWhiteColor: Constants.kMaintBlueColor,
//             // border: UnderlineInputBorder(
//             //     borderSide: BorderSide.none,
//             //     borderRadius: BorderRadius.circular(25)),
//            //  focusColor:widget.model.fieldType == FieldType.search?Constants.kWhiteColor: Constants.kMaintBlueColor,
//             filled: true,
//              // enabledBorder: InputBorder.none,
//                 border: fieldBorder(Constants.kGreyColor),
//                 errorBorder: fieldBorder(Colors.red),
//                 focusedBorder: fieldBorder(Constants.kGreyColor),
//                 focusedErrorBorder: fieldBorder(Colors.red),
//                 disabledBorder: fieldBorder(Colors.transparent),
//             prefixIcon: Icon(widget.model.icon, color: Constants.kGreyColor),
//             labelText: widget.model.labelTxt,
//            // labelStyle: Constants.TsubGreyFont,
//             hintText: widget.model.hintTxt,
//           //  hintStyle: Constants.TsubGreyFont,
//             suffixIcon: widget.model.fieldType == FieldType.password
//                 ? IconButton(
//                     icon: const Icon(Icons.remove_red_eye),
//                     color: Constants.kGreyColor,
//                     iconSize: 20.0,
//                     onPressed: () {
//                       setState(() {
//                         widget.model.isSecure = !widget.model.isSecure!;
//                       });
//                     },
//                   )
//                 :null,
//            // suffixIcon: widget.model.fieldType == FieldType.search?IconButton(onPressed: (){}, icon: Icon(Icons.search)):null
//                 //      suffixIcon: widget.model.fieldType == FieldType.password
//                 // ? IconButton(
//                 //     icon: const Icon(Icons.remove_red_eye),
//                 //     color: Constants.kGreyColor,
//                 //     iconSize: 20.0,
//                 //     onPressed: () {
//                 //       setState(() {
//                 //         widget.model.isSecure = !widget.model.isSecure!;
//                 //       });
//                 //     },
//                 //   )
//                 //   :widget.model.fieldType == FieldType.search?IconButton(onPressed: (){}, icon: Icon(Icons.search)):null
//                   ),

//         maxLength: widget.model.maxLength,
//         maxLines: widget.model.maxLines,
//         keyboardType: widget.model.type,
//         controller: widget.model.controller,
//         obscureText: widget.model.isSecure!,
//         enabled: widget.model.enabled,
//         onFieldSubmitted: (x) {
//           widget.model.onsumbit!();
//         },
//       ),
//     );
//   }
// }

// OutlineInputBorder fieldBorder(Color color) {
//   return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(25.0),
//       borderSide: BorderSide(color: color, width: 0));
// }

import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  CustomField(
      {super.key,
      required this.onFieldSubmitted,
      required this.onChanged,
      required this.obscureText,
      this.suffix,
      required this.hintText,
      required this.textInputAction,
      required this.validator, this.focusNode});
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  final bool? obscureText;
  final Widget? suffix;
  final String? hintText;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      // validator: (value) {
      //   if (value == null || value.isEmpty) {
      //     return ScaffoldMessenger.of(context)
      //         .showSnackBar(
      //           SnackBar(
      //             duration: const Duration(seconds: 3),
      //             content: const Text(
      //               'Can\'t Be Empty ',
      //               maxLines: 3,
      //             ),
      //             backgroundColor: Colors.red[900],
      //           ),
      //         )
      //         .toString();
      //   }
      //   return null;
      //},
      validator: validator,
      obscureText: obscureText!,
      cursorColor: Colors.grey[600],
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          height: 0,
          color: Colors.transparent,
        ),
        // suffix: InkWell(
        //   onTap: () {
        //     setState(() {
        //       hideOldPass = !hideOldPass;
        //     });
        //   },
        //   child: (hideOldPass)
        //       ? Icon(
        //           Icons.visibility,
        //           color: Colors.grey[700],
        //         )
        //       : Icon(
        //           Icons.visibility_off,
        //           color: Colors.grey[700],
        //         ),
        // ),
        suffix: suffix,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey[500],
        ),
        filled: true,
        fillColor: Colors.grey[200],
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 3,
            color: Color(0x00d4e5f2),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 3,
            color: Color(0x00bcbcbc),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      textInputAction: textInputAction,
    );
  }
}
