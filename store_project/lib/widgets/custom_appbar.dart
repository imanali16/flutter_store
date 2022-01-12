import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.white),
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {
            Navigator.pushNamed(context, '/wishlist');
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
