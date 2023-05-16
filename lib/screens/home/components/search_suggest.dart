import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SearchSuggest extends StatelessWidget {
  const SearchSuggest({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SuggestionCard(
            suggestions: 'Ham & Cheese Pizza',
            press: () {},
          ),
          SuggestionCard(
            suggestions: 'Chicken Pizza',
            press: () {},
          ),
          SuggestionCard(
            suggestions: 'Veggie Pizza',
            press: () {},
          ),
          SuggestionCard(
            suggestions: 'Italian Pizza',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({
    Key? key,
    required this.suggestions,
    required this.press,
  }) : super(key: key);

  final String suggestions;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(6)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          height: getProportionateScreenWidth(25),
          width: getProportionateScreenWidth(148),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF62D00),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(2),
                        vertical: getProportionateScreenWidth(4)),
                    child: Text(
                      '$suggestions',
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
