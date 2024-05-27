import 'package:flutter/material.dart';
import 'package:scrtproject/mainPages/home2.dart';
import 'package:scrtproject/mainPages/media.dart';

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                menu(),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 420,
              width: 328,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Color.fromARGB(255, 241, 255, 186),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 223, 241, 149),
                          ),
                          child: const Icon(
                            Icons.person,
                            size: 90,
                            color: Color.fromARGB(255, 1, 60, 64),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Electrical Circuits',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontFamily: 'Font1',
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Course Code    :CSE325",
                            style: TextStyle(fontFamily: 'Font2', fontSize: 18),
                          ),
                          const Text(
                            "Teacher Name  :DR.Karim Islam",
                            style: TextStyle(fontFamily: 'Font2', fontSize: 18),
                          ),
                          const Text(
                            "Email                :karim@diu.edu.bd",
                            style: TextStyle(fontFamily: 'Font2', fontSize: 18),
                          ),
                          const Text(
                            "Phone               :0123457895",
                            style: TextStyle(fontFamily: 'Font2', fontSize: 18),
                          ),
                          media()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
