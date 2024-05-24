import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';

// ignore: must_be_immutable
class KTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final bool? requiredField;
  final Color? hintColor;
  final Icon? suffixIcon;
  final Widget? prefixIcon;
  final bool hasPrefixIcon;
  final bool isPasswordField;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final double widthFactor;
  final double heightFactor;
  final bool isReadOnly;
  final Function()? onTap;
  final int maxLines;
  final int minLines;
  final double topMargin;
  final double borderRadius;
  final bool isClearableField;
  final FormFieldValidator? validator;
  String? errorMessage;
  final Function(String value)? callBackFunction;
  final bool callBack;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? laveltextColor;
  final bool suffixCallback;
  final bool alignment;
  final Function()? suffixCallbackFunction;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatters;

  KTextField({
    super.key,
    this.labelText,
    this.requiredField = true,
    this.hintText,
    this.hintColor,
    this.suffixIcon,
    this.prefixIcon,
    this.hasPrefixIcon = false,
    this.isPasswordField = false,
    this.controller,
    this.widthFactor = 1,
    this.heightFactor = 0,
    this.textInputType = TextInputType.text,
    this.isReadOnly = false,
    this.onTap,
    this.maxLines = 1,
    this.minLines = 1,
    this.topMargin = 0,
    this.borderRadius = 6.0,
    this.isClearableField = false,
    this.validator,
    this.errorMessage = "",
    this.callBack = false,
    this.callBackFunction,
    this.backgroundColor = KColors.tranparent,
    this.textColor = KColors.white,
    this.suffixCallback = false,
    this.suffixCallbackFunction,
    this.autofocus = false,
    this.alignment = false,
    this.inputFormatters,
    this.laveltextColor,
  });

  @override
  _KTextFieldState createState() => _KTextFieldState();
}

class _KTextFieldState extends State<KTextField> {
  bool _isClearableText = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Row(
            children: [
              Text(widget.labelText ?? '',
                  textAlign: TextAlign.center,
                  style: KTextStyles.bodyText1.copyWith(
                      color: widget.laveltextColor ??
                          KColors.mute.withOpacity(0.7))),
              if (widget.requiredField!)
                Text('*',
                    textAlign: TextAlign.center,
                    style:
                        KTextStyles.bodyText2.copyWith(color: KColors.white)),
            ],
          ),
        Container(
          width: MediaQuery.of(context).size.width * widget.widthFactor,
          height: widget.heightFactor,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0),
          margin: EdgeInsets.only(top: widget.topMargin),
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            boxShadow: [
              BoxShadow(
                  color: KColors.white.withOpacity(0.1),
                  blurRadius: 2,
                  spreadRadius: 0,
                  offset: Offset(0, 1))
            ],
            border: Border.all(
              color: widget.errorMessage == null
                  ? KColors.mute.withOpacity(0.2)
                  : widget.errorMessage!.isEmpty
                      ? KColors.mute.withOpacity(0.2)
                      : KColors.red,
              width: 1,
              style: widget.errorMessage == null || widget.errorMessage!.isEmpty
                  ? BorderStyle.solid
                  : BorderStyle.solid,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius)),
          ),
          child: TextFormField(
            validator: (String? value) {
              setState(() {
                widget.errorMessage = widget.validator!(value)!;
              });
              return widget.errorMessage!.isNotEmpty ? '' : null;
            },
            inputFormatters: widget.inputFormatters ?? [],
            controller: widget.controller,
            readOnly: widget.isReadOnly,
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            cursorColor: KColors.mute,
            keyboardType: widget.textInputType,
            style: KTextStyles.bodyText1
                .copyWith(color: widget.textColor ?? KColors.white),
            obscureText: widget.isPasswordField ? _obscureText : false,
            textAlignVertical: widget.alignment
                ? TextAlignVertical.top
                : TextAlignVertical.center,
            autofocus: widget.autofocus,
            decoration: InputDecoration(
              isDense: true,
              hintText: widget.hintText,
              hintStyle: KTextStyles.bodyText1
                  .copyWith(color: widget.hintColor ?? KColors.mute),
              errorStyle: const TextStyle(fontSize: 0, height: 0),
              border: InputBorder.none,
              prefixIcon: widget.hasPrefixIcon
                  ? Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: widget.prefixIcon)
                  : Container(width: 0),
              prefixIconConstraints:
                  BoxConstraints(minHeight: widget.hasPrefixIcon ? 48 : 0),
              suffixIcon: widget.isPasswordField
                  ? obscureText()
                  : widget.isClearableField
                      ? clearField()
                      : widget.suffixIcon != null
                          ? InkWell(
                              onTap: widget.suffixCallbackFunction,
                              child: widget.suffixIcon)
                          : null,
            ),
            onTap: widget.onTap,
            onChanged: (val) {
              if (val != '') {
                if (!_isClearableText) {
                  setState(() {
                    _isClearableText = true;
                  });
                } else if (widget.errorMessage != null) {
                  setState(() {
                    widget.errorMessage = null;
                  });
                }
              } else {
                setState(() {
                  _isClearableText = false;
                });
              }

              /// Search query
              if (widget.callBack) {
                widget.callBackFunction!(val);
              }
            },
          ),
        ),
      ],
    );
  }

  GestureDetector obscureText() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
      child: Icon(
        /// Based on password visibility state choose the icon
        _obscureText
            ? Icons.visibility_outlined
            : Icons.visibility_off_outlined,
        size: 18.0,
        color: KColors.black,
      ),
    );
  }

  GestureDetector clearField() {
    return GestureDetector(
      onTap: () {
        widget.controller!.clear();
        setState(() {
          _isClearableText = false;
        });
        if (widget.suffixCallback) {
          widget.suffixCallbackFunction!();
        }
      },
      child: Icon(
        Icons.cancel,
        color: _isClearableText ? KColors.black : KColors.tranparent,
        size: 16.0,
      ),
    );
  }
}
