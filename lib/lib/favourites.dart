import 'package:flutter/material.dart';
import 'Shared/PopularProdcut.dart';
import 'Shared/SharedFav.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'pages/Products.dart';
import 'package:provider/provider.dart';
import 'package:slider_button/slider_button.dart';

class favourite extends StatelessWidget {
  const favourite({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    roadfav() {
      if (classInstancee.Favourite.isEmpty) {
        return Kanbti();
      } else {
        return fav();
      }
    }

    return roadfav();
  }
}
