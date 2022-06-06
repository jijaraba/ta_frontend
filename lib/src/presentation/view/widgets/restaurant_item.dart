import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/src/core/res/res.dart';
import 'package:tresastronautas_frotend/src/domain/entities/restaurant_entity.dart';

import '../../../core/presentation/theme/theme.dart';

class RestaurantItem extends ConsumerWidget {
  final RestaurantEntity restaurant;

  const RestaurantItem({Key? key, required this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: UIColors.grey50,
        ),
      ),
      child: Row(
        children: <Widget>[
          CachedNetworkImage(
            width: 120,
            height: 120,
            imageUrl:
                'https://centrocomercialeldorado.mx/galerias/dir_galerias/centro_comercial_y_marina_el_dorado_147_imagen_tres.jpg',
            fit: BoxFit.fill,
            errorWidget: (_, __, ___) => Icon(
              Icons.restaurant,
              color: Colors.grey,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 200,
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      restaurant.name,
                      style: textNormal.copyWith(
                        color: UIColors.textGrey,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Price: ${restaurant.price}',
                      style: textNormal.copyWith(
                        color: UIColors.textGrey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
