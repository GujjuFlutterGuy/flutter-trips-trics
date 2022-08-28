import 'package:flutter/material.dart';
import 'package:tips/IndexedStack/IndexedStack_example.dart';
import 'package:tips/PageStorage/Page_storage_example.dart';
import '../AutomaticKeepAliveMixin/Automatickeepalive_example.dart';

class Utils {
  static List<String> listOfTricks = [
    "AutoMaticKeepAliveMixin",
    "Indexed Stack",
    "Page storage"
  ];

  static routes(int index, BuildContext ctx) {
    switch (index) {
      case 0:
        {
          Navigator.push(
            ctx,
            MaterialPageRoute(builder: (context) => const keepAliveMixinDemo()),
          );
        }
        break;

      case 1:
        {
          Navigator.push(
            ctx,
            MaterialPageRoute(builder: (context) => const IndexStackedDemo()),
          );
        }
        break;

      case 2:{
        Navigator.push(
          ctx,
          MaterialPageRoute(builder: (context) => const PageStorageExample()),
        );
      }
      break;

      default:
        {
          //statements;
        }
        break;
    }
  }
}
