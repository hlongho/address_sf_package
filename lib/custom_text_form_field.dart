import 'package:address_sf_package/theme_helper.dart';
import 'package:flutter/material.dart';

import 'app_style.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.minLines,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
    this.initialValue
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? minLines;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final Function(String)? onChanged;

  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          autofocus: autofocus!,
          style: textStyle ?? AppStyle.montserratRegular14_222020,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          minLines: minLines,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          onChanged: onChanged,
          initialValue: initialValue,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? theme.textTheme.titleSmall,
        errorStyle: AppStyle.montserratRegular12_FA1C1C,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints ?? const BoxConstraints(
          maxHeight: 44,
        ),
        isDense: true,
        contentPadding: contentPadding ??
            const EdgeInsets.only(
              top: 15,
              right: 15,
              bottom: 15,
            ),
        fillColor: fillColor ?? theme.colorScheme.onSecondaryContainer,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: theme.colorScheme.onPrimaryContainer,
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: theme.colorScheme.primary,
                width: 1,
              ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: theme.colorScheme.primary,
                width: 1,
              ),
            ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get fillGray => OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: BorderSide.none,
  );
  static OutlineInputBorder get fillPrimary => const OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            22,
          ),
          topRight: Radius.circular(
            22,
          ),
          bottomLeft: Radius.circular(
            21,
          ),
          bottomRight: Radius.circular(
            22,
          ),
        ),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlinePrimary => OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineOnPrimaryContainerTL6 =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlinePrimaryTL12 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
      );
}
