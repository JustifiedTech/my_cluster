import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/config/constants.dart';
import '../components/custom_details_header.dart';
import '../components/space.dart';

class ClusterDetailsWidget extends StatelessWidget {
  const ClusterDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Space(),
            const ClusterDetailsHeader(
                svg: 'naira_badge', title: 'Cluster purse setting'),
            const Space(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Frequency of Contribution'),
                      Text('Monthly upfront')
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Change',
                    style: TextStyle(color: AppColors.primarysBrandBase),
                  ),
                )
              ],
            ),
            const Text('₦550,000,000'),
            const Text('Your contribution is 8% of your eligible amount '),
            const Space(),
            const Divider(),
            const Space(),
            const ClusterDetailsHeader(
                svg: 'chains', title: 'Group invite Link/Codes'),
            const Space(),
            const Text('Use the link or code below to invite new member'),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Member invite code'),
                      Text('30DF38TG000')
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Get new code',
                    style: TextStyle(color: AppColors.primarysBrandBase),
                  ),
                )
              ],
            ),
            const Space(),
            const Divider(),
            const Space(),
            const ClusterDetailsHeader(svg: 'indent', title: 'Loan setting'),
            const Space(),
            const Text('Total loan collected by cluster'),
            const Text('₦550,000,000'),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [Text('Repayment Day'), Text('Every Monday')],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Change',
                    style: TextStyle(color: AppColors.primarysBrandBase),
                  ),
                )
              ],
            ),
            // const Space(),
            const Divider(),
            // const Space(),
            const ClusterDetailsHeader(
                svg: 'indent', title: 'Pending Join Request'),
            // const Space(),
            const Text('No pending cluster join request'),
            // const Space(),
            const Divider(),
            // const Space(),
            const ClusterDetailsHeader(svg: 'setting', title: 'Group Settings'),
            // const Space(),
            const Text('Group rules'),
            const Text(
                '1. Check the car’s rental terms as well, because each company has its own rules.'),
            const Text(
                '2. Check the car’s rental terms as well, because each company has its own rules.'),
            // const Space(),
            const Text('Group Whatsapp'),
            const Space(
              height: 5,
            ),
            const Text(
              'https://chat.whatsapp.com/BmK1mYu9zGAGhhqi8xqQQ5',
              style: TextStyle(color: AppColors.greenDarkest),
            ),
            const Space(
              height: 5,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/svg/pen.svg'),
                const Space(width: 10),
                const Text(
                  'Edit Settings',
                  style: TextStyle(color: AppColors.primarysBrandBase),
                ),
              ],
            ),
            const Space(),
            const Divider(),
            const Space(),
            const ClusterDetailsHeader(svg: 'note', title: 'Benefits earned'),
            const Space(),
            const Text('Total CH benefits earned'),
            const Text('₦550,000,000'),
            const Text('Available Benefits'),
            Row(
              children: const [
                Text('₦550,000,000'),
                Text('+₦5000 today'),
              ],
            ),
            Row(
              children: const [
                Icon(
                  Icons.visibility,
                  color: AppColors.primarysBrandBase,
                  size: 20,
                ),
                // Space(),
                Text(
                  'View earning history',
                  style: TextStyle(color: AppColors.primarysBrandBase),
                ),
              ],
            ),
            const Space(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
