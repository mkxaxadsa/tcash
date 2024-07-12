import 'package:expense_test/features/finance/pages/finance_test_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/page_title.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(height: 13),
          const PageTitle('Settings'),
          CupertinoButton(
            onPressed: () {
              context.go('/name');
            },
            padding: EdgeInsets.zero,
            child: Text(
              myname.isNotEmpty ? myname : 'User',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'SF',
              ),
            ),
          ),
          const SizedBox(height: 84),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PageSet(
                        data:
                            'https://docs.google.com/document/d/1ekDbCMbQAGvHfqTwKOIZ9iIIveLffj7k6JbFthOCLWo/edit?usp=sharing'),
                  ),
                );
              },
              child: const _Button('Terms of use')),
          const SizedBox(height: 16),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PageSet(
                      data:
                          'https://docs.google.com/document/d/15lruVWGEcbOdBQfGW3oESml7GCuhqM7FFu6Nm6r7j8I/edit?usp=sharing'),
                ),
              );
            },
            child: const _Button('Privacy policy'),
          ),
          const SizedBox(height: 16),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PageSet(
                      data: 'https://forms.gle/hXkogpZ1GcBCeynC8'),
                ),
              );
            },
            child: const _Button('Support page'),
          ),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xffC9C9C9),
        ),
      ),
      child: Container(
        padding: EdgeInsets.zero,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'PoppinsRegular',
            ),
          ),
        ),
      ),
    );
  }
}
