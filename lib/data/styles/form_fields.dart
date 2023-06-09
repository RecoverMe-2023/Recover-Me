// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recover_me/domain/bloc/doctor_register/doctor_register_cubit.dart';
import '../../domain/bloc/login/login_cubit.dart';

import '../../domain/bloc/patient_register/patient_register_cubit.dart';
import 'colors.dart';
import 'fonts.dart';

class RecoverTextFormField extends StatelessWidget {
  RecoverTextFormField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.focusNode,
    this.label,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.keyboardType,
    this.textInputAction,
    this.height,
  }) : super(key: key);

  final String hintText;
  String? label;
  String? Function(String?)? validator;
  void Function(String)? onFieldSubmitted;
  void Function(String)? onChanged;
  final TextEditingController controller;
  dynamic keyboardType;
  final FocusNode? focusNode;
  TextInputAction? textInputAction;
double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height:height?? 50,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: RecoverColors.myColor.withOpacity(.7),
      ),
      child: TextFormField(
        textInputAction: textInputAction,
        focusNode: focusNode,
        controller: controller,
        keyboardType: keyboardType,
        style: GoogleFonts.montserrat(
          color: RecoverColors.recoverWhite,
        ),
        decoration: InputDecoration(
            // label: RecoverHints(hint: label!),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: RecoverColors.recoverWhite,width: 0),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: RecoverColors.myColor,width: 0),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.montserrat(
                color: RecoverColors.recoverWhite, fontWeight: FontWeight.w600),
            focusColor: RecoverColors.recoverWhite,
            contentPadding:  const EdgeInsets.only(left: 5,right: 5)),
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
      ),
    );
  }
}

class RecoverPhoneFormField extends StatelessWidget {
  RecoverPhoneFormField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.focusNode,
    this.label,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.keyboardType,
    this.textInputAction, required this.countryController,
  }) : super(key: key);

  final String hintText;
  String? label;
  String? Function(String?)? validator;
  void Function(String)? onFieldSubmitted;
  void Function(String)? onChanged;
  final TextEditingController controller;
  final TextEditingController countryController;
  dynamic keyboardType;
  final FocusNode? focusNode;
  TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: RecoverColors.myColor.withOpacity(.7),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 40,
            child: TextField(
              controller: countryController,
              keyboardType: TextInputType.number,
              style: GoogleFonts.montserrat(
                color: RecoverColors.recoverWhite,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(color: RecoverColors.recoverWhite),

              ),
            ),
          ),
          const Text(
            "|",
            style: TextStyle(fontSize: 33, color: Colors.grey),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextFormField(
              textInputAction: textInputAction,
              focusNode: focusNode,
              controller: controller,
              keyboardType: keyboardType,
              style: GoogleFonts.montserrat(
                color: RecoverColors.recoverWhite,
              ),
              decoration: InputDecoration(
                  // label: RecoverHints(hint: label!),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: RecoverColors.recoverWhite),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: RecoverColors.recoverGrey),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: hintText,
                  hintStyle: GoogleFonts.montserrat(
                      color: RecoverColors.recoverWhite, fontWeight: FontWeight.w600),
                  focusColor: RecoverColors.recoverWhite,
                  contentPadding:  const EdgeInsets.only(left: 5,right: 5)),
              validator: validator,
              onFieldSubmitted: onFieldSubmitted,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class RecoverPassFormField extends StatelessWidget {
  RecoverPassFormField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.focusNode,
    this.label,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.keyboardType,
    this.textInputAction,
    this.loginCubit,
    this.dRegisterCubit,
    this.pRegisterCubit,
  }) : super(key: key);

  final String hintText;
  String? label;
  String? Function(String?)? validator;
  void Function(String)? onFieldSubmitted;
  void Function(String)? onChanged;
  final TextEditingController controller;
  dynamic keyboardType;
  final FocusNode? focusNode;
  TextInputAction? textInputAction;
  LoginCubit? loginCubit;
  DoctorRegisterCubit? dRegisterCubit;
  PatientRegisterCubit? pRegisterCubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: RecoverColors.myColor.withOpacity(.7),
      ),
      child: TextFormField(
        textInputAction: textInputAction,
        focusNode: focusNode,
        controller: controller,
        keyboardType: keyboardType,
        style: GoogleFonts.montserrat(
          color: RecoverColors.recoverWhite,
        ),
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: RecoverColors.recoverWhite),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: RecoverColors.recoverGrey),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          hintText: hintText,
          hintStyle: RecoverTextStyles.recoverHintMontserrat(fs: 17.0,color: RecoverColors.recoverWhite),
          contentPadding: const EdgeInsets.all(30),
          suffixIcon: IconButton(
            onPressed: loginCubit != null
                ? loginCubit!.changePasswordVisibility
                : pRegisterCubit != null
                    ? pRegisterCubit!.changePasswordVisibility
                    : dRegisterCubit!.changePasswordVisibility,
            icon: Icon(
              loginCubit != null
                  ? loginCubit!.visible
                  : pRegisterCubit != null
                      ? pRegisterCubit!.visible
                      : dRegisterCubit!.visible,
            ),
          ),
          focusColor: RecoverColors.recoverRed,
        ),
        obscureText: loginCubit != null
            ? loginCubit!.isShown
            : pRegisterCubit != null
                ? pRegisterCubit!.isShown
                : dRegisterCubit!.isShown,
        validator: validator,
        onEditingComplete: () {},
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
      ),
    );
  }
}
