import 'package:comma_app/constants/constants.dart';
import 'package:flutter/material.dart';

class SectionInformation extends StatelessWidget {
  const SectionInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: height * 0.01),
      height: height >= 668 ? height * 0.275 : height * 0.36,
      width: width * 0.9,
      decoration: BoxDecoration(
          color: Constants.kBlueLightColor.withOpacity(0.09),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Center(
              child: Text(
            'Information',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Constants.kBlackColor,
                fontSize: 22),
          )),
          const Divider(),
          const ListTile(
            leading: CircleAvatar(
              radius: 30,
              // maxRadius: 30,
              backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,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'),
            ),
            title: Text(
              'Mohamed',
              maxLines: 1,
            ),
            subtitle: Text(
              'comma@gmail.com',
              maxLines: 1,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                )
              ],
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_box_rounded),
            title: const Text(
              'Delete Account',
              maxLines: 1,
            ),
            trailing: Icon(
              Icons.delete,
              color: Constants.kRedColor,
            ),
            onTap: () {
              print('delete');
            },
          ),
        ],
      ),
    );
  }
}
