import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

// Colos that use in app
const kSecondaryColor = Color(0xFFFE6D8E);
const kTextColor = Color(0xFF12153D);
const kTextLightColor = Color(0xFF9A9BB2);
const kFillStarColor = Color(0xFFFCC419);
const primaryColor = Color(0xFF255E6);
const textColor = Color(0xFF35364F);

const kDefaultPadding = 20.0;

const kLightColor = Color(0xFFF5F5F5);
const kDarkLightColor = Color(0xFF27272A);
const kDarkColor = Color(0xFF403B58);
const kLightDarkColor = Color(0xFFC084FC);

const kDefaultShadow = BoxShadow(
  offset: Offset(0, 4),
  blurRadius: 4,
  color: Colors.black26,
);

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: primaryColor.withOpacity(
      0.1,
    ),
  ),
);

const emailError = "Enter a valid email";
const requiredValidator = "This field os required";

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits'),
    PatternValidator(r'(?=.*[#?!@$%^&*-])', errorText: 'password')
  ],
);
