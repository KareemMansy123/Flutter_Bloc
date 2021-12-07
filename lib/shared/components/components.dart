import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildItems(item) => Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      Container(
        width: 120.0,
        height: 120.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                image: NetworkImage('${item['url']}'),
                fit: BoxFit.cover
            )
        ),
      ),
      const SizedBox(width: 20.0),
      Expanded(
        child: Container(
          height: 120.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              Text('${item['id']}',style: const TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
              ),),
              Expanded(child:
              Text('${item['title']}',style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600
              ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,)
              )
            ],
          ),
        ),
      )
    ],
  ),
);

Widget myDivider() => const Padding(padding: EdgeInsets.only(top: 5.0));