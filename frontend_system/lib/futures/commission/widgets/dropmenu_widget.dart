import 'package:flutter/material.dart';

class DropMenuWidget extends StatelessWidget {
  final String hintText;
  final List<String> data;
  final Function(String?) onChanged;

  const DropMenuWidget(
      {super.key,
      required this.hintText,
      required this.data,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 200,
      child: DropdownButtonFormField<String>(
        hint: Text(hintText),
        onChanged: onChanged,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.how_to_reg_outlined), // 添加前缀图标
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        items: _buildMenuList(data),
      ),
    );
  }

  List<DropdownMenuItem<String>> _buildMenuList(List<String> data) {
    return data.map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }
}
