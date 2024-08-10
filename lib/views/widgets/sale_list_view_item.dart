
import 'package:e_commerce_app/utilities/styles.dart';
import 'package:flutter/material.dart';

class SaleListViewItem extends StatelessWidget {
  const SaleListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                'https://m.media-amazon.com/images/I/71WcPwIvIYL._AC_SY741_.jpg', // Sample image URL
                width: MediaQuery.of(context).size.width * (148 / 375),
                height: MediaQuery.of(context).size.height *
                    (184 / 812), // Aspect ratio 4:3
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 8,
                left: 9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(29),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                  child: Text(
                    '-20%',
                    style: Styles.numberStyle_11,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Text(
            'Dorothy Perkins',
            style: Styles.textStyle_11Gray,
          ),
          const SizedBox(height: 5),
          Text(
            'Evening Dress',
            style: Styles.textStyle_16,
          ),
          const SizedBox(height: 3),
          Text(
            '12\$',
            style: Styles.numberStyle_14,
          ),
        ],
      ),
    );
  }
}
