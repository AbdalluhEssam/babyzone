import 'package:flutter/material.dart';
import 'package:babyzone/core/constant/color.dart';

class CustomAppBar extends StatelessWidget {
  final String titleAppBar;
  final void Function()? onPressedIconFavorite;
  final void Function()? onPressedSearch;
  final void Function(String)? onChanged;
  final TextEditingController myController;

  const CustomAppBar({
    Key? key,
    required this.titleAppBar,
    required this.onPressedIconFavorite,
    required this.onPressedSearch,
    required this.onChanged,
    required this.myController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: TextFormField(
            controller: myController,
            onChanged: onChanged,
            cursorColor: AppColor.primaryColor.withOpacity(0.8),
            onTap: onPressedSearch,
            // keyboardType: TextInputType.none,
            style: const TextStyle(
              color: AppColor.primaryColor,
              fontSize: 16,
            ),
            // readOnly: true,
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColor.primaryColor,
                ),
                hintText: titleAppBar,
                contentPadding: const EdgeInsets.all(30),
                hintStyle: const TextStyle(color: AppColor.primaryColor),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                fillColor: AppColor.primaryColor.withOpacity(0.1)),
          )),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: AppColor.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)),
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              onPressed: onPressedIconFavorite,
              icon: const Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: AppColor.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
