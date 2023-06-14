import 'package:flutter/material.dart';

class NeumorphicButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  NeumorphicButton({required this.onPressed, required this.text});

  @override
  _NeumorphicButtonState createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: _isPressed
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    offset: Offset(4.0, 4.0),
                    blurRadius: 8.0,
                  ),
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 8.0,
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.8),
                    offset: Offset(4.0, 4.0),
                    blurRadius: 8.0,
                  ),
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 8.0,
                  ),
                ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: _isPressed
                ? [
                    Colors.grey.shade400,
                    Colors.grey.shade300,
                  ]
                : [
                    Colors.grey.shade300,
                    Colors.grey.shade400,
                  ],
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: _isPressed ? Colors.grey.shade700 : Colors.grey.shade800,
            ),
          ),
        ),
      ),
    );
  }
}

///

class NeumorphicTextField extends StatefulWidget {
  @override
  NeumorphicTextFieldState createState() => NeumorphicTextFieldState();
}

class NeumorphicTextFieldState extends State<NeumorphicTextField> {
  bool _isFocused = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: _isFocused ? Colors.grey[200] : Colors.grey[300],
        boxShadow: [
          BoxShadow(
            color: _isFocused ? Colors.white : Colors.black,
            offset: Offset(4.0, 4.0),
            blurRadius: 6.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: _isFocused ? Colors.grey[400]! : Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 6.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter text',
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        ),
        onChanged: (value) {
          // Handle text field value changes here
        },
        onTap: () {
          setState(() {
            _isFocused = true;
          });
        },
      ),
    );
  }
}
