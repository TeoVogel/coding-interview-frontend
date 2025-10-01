import 'package:el_dorado/presentation/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ExchangeRateCalculatorScreen extends StatelessWidget {
  const ExchangeRateCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentColor,
      body: Center(
        child: Card(
          color: neutralBackgroundColor,
          // add radius and border to the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: neutralBorderColor, width: 2),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: IntrinsicWidth(
              child: Column(
                spacing: 8,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(999)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 16,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text('USDT'),
                          style: TextButton.styleFrom(
                              visualDensity: VisualDensity.compact),
                        ),
                        Transform.scale(
                          scale: 1.8,
                          child: IconButton.filled(
                            onPressed: () {},
                            icon: Icon(Icons.compare_arrows_rounded),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 8),
                                visualDensity: VisualDensity.compact),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('VES'),
                          style: TextButton.styleFrom(
                              visualDensity: VisualDensity.compact),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "Tasa estimada",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        "= 25.00 VES",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Recibiras",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        "= 250.00 VES",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Tiempo estimado",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        "= 10 Min",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Cambiar'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
