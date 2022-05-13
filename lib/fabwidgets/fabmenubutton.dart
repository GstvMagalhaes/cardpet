import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../delegates/fab_vertical_delegate.dart';

class FabMenuButton extends StatefulWidget {
  FabMenuButton({Key? key}) : super(key: key);

  @override
  State<FabMenuButton> createState() => _FabMenuButtonState();
}

class _FabMenuButtonState extends State<FabMenuButton>
    with SingleTickerProviderStateMixin {
  final actionButtonColor = Colors.tealAccent.shade100;
  late AnimationController animation;
  final menuIsOpen = ValueNotifier<bool>(false);

  @override
  void initiState(animation) {
    super.initState();

    animation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  toggleMenu() {
    menuIsOpen.value ? animation.reverse() : animation.forward();
    menuIsOpen.value = !menuIsOpen.value;
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      clipBehavior: Clip.none,
      delegate: FabVerticalDelegate(animation: animation),
      children: [
        FloatingActionButton(
          heroTag: 'next7',
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: animation,
          ),
          onPressed: () => toggleMenu(),
          backgroundColor: actionButtonColor,
        ),
        FloatingActionButton(
          heroTag: 'next8',
          child: const Icon(Icons.link),
          onPressed: () {},
          backgroundColor: actionButtonColor,
        ),
        FloatingActionButton(
          heroTag: 'next9',
          child: const Icon(Icons.add_card_outlined),
          onPressed: () {},
          backgroundColor: actionButtonColor,
        ),
        FloatingActionButton(
          heroTag: 'next10',
          child: const Icon(Icons.account_balance_wallet_rounded),
          onPressed: () {},
          backgroundColor: actionButtonColor,
        ),
      ],
    );
  }
}
