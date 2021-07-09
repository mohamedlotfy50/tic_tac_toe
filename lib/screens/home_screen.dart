import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/providers/home_page_provider.dart';
import 'package:tic_tac_toe/widgets/animated_title.dart';
import 'package:tic_tac_toe/widgets/animated_xo.dart';
import 'package:tic_tac_toe/widgets/color_picker.dart';
import 'package:tic_tac_toe/widgets/selection_dialog.dart';
import 'package:tic_tac_toe/widgets/sign_picker.dart';
import '../themes/colors_scheme.dart';
import '../widgets/circular_icon_button.dart';
import '../widgets/rounded_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        lazy: false,
        create: (context) => HomePageProvider(),
        builder: (context, child) {
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  MyColorsScheme.red,
                  MyColorsScheme.blue,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AnimatedTitle(),
                AnimatedXO(),
                Container(
                  height: MediaQuery.of(context).size.height / 6.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedElevatedButton(
                        icon: Icons.computer,
                        onPressd: () {
                          context.read<HomePageProvider>().showSelectionPage(
                                context,
                                ChangeNotifierProvider.value(
                                  value: context.read<HomePageProvider>(),
                                  builder: (context, child) => SelectionDialog(
                                    isHuman: false,
                                  ),
                                ),
                              );
                        },
                        text: 'single player',
                      ),
                      RoundedElevatedButton(
                        icon: Icons.people,
                        onPressd: () {
                          context.read<HomePageProvider>().showSelectionPage(
                                context,
                                ChangeNotifierProvider.value(
                                  value: context.read<HomePageProvider>(),
                                  builder: (context, child) =>
                                      SelectionDialog(),
                                ),
                              );
                        },
                        text: 'with a friend',
                      ),
                    ],
                  ),
                ),
                CircularIconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 40,
                    color: MyColorsScheme.purple,
                  ),
                  backgroundColor: Colors.white,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
