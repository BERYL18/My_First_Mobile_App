import 'package:flutter/cupertino.dart';

Row stats(String region, String type, String size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(children: [
        Text(region, style: const TextStyle(fontSize: 12)),
        const Icon(CupertinoIcons.globe)
      ]),
      const SizedBox(width: 10),
      Column(children: [
        Text(type, style: const TextStyle(fontSize: 12)),
        const Icon(CupertinoIcons.leaf_arrow_circlepath)
      ]),
      const SizedBox(width: 10),
      Column(children: [
        Text(size, style: const TextStyle(fontSize: 12)),
        const Icon(CupertinoIcons.text_aligncenter)
      ])
    ],
  );
}
