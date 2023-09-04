import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:ticket_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int sum = 0;
  int sumboy = 0;
  int sumgirl = 0;
  int sumAlMaadi = 0;
  int sumNaserCity = 0;
  int sumFasel = 0;
  int sumalMuhandisin = 0;
  int sumHelwan = 0;
  int sumnewCairo = 0;
  int sumOctober = 0;
  int sumAlMokattam = 0;
  int sumAlex = 0;
  int sumAlMaadiboy = 0;
  int sumNaserCityboy = 0;
  int sumFaselboy = 0;
  int sumalMuhandisinboy = 0;
  int sumHelwanboy = 0;
  int sumnewCairoboy = 0;
  int sumOctoberboy = 0;
  int sumAlMokattamboy = 0;
  int sumAlexboy = 0;
  int sumAlMaadigirl = 0;
  int sumNaserCitygirl = 0;
  int sumFaselgirl = 0;
  int sumalMuhandisingirl = 0;
  int sumHelwangirl = 0;
  int sumnewCairogirl = 0;
  int sumOctobergirl = 0;
  int sumAlMokattamgirl = 0;
  int sumAlexgirl = 0;

  int sumAlMaadirespon = 0;
  int sumNaserCityrespon = 0;
  int sumFaselrespon = 0;
  int sumalMuhandisinrespon = 0;
  int sumHelwanrespon = 0;
  int sumnewCairorespon = 0;
  int sumOctoberrespon = 0;
  int sumAlMokattamrespon = 0;
  int sumAlexrespon = 0;

  int sumAlMaadiNew = 0;
  int sumNaserCityNew = 0;
  int sumFaselNew = 0;
  int sumalMuhandisinNew = 0;
  int sumHelwanNew = 0;
  int sumnewCairoNew = 0;
  int sumOctoberNew = 0;
  int sumAlMokattamNew = 0;
  int sumAlexNew = 0;

  int sumAlMaadipro = 0;
  int sumNaserCitypro = 0;
  int sumFaselpro = 0;
  int sumalMuhandisinpro = 0;
  int sumHelwanpro = 0;
  int sumnewCairopro = 0;
  int sumOctoberpro = 0;
  int sumAlMokattampro = 0;
  int sumAlexpro = 0;

  int sumAlMaadiactive = 0;
  int sumNaserCityactive = 0;
  int sumFaselactive = 0;
  int sumalMuhandisinactive = 0;
  int sumHelwanactive = 0;
  int sumnewCairoactive = 0;
  int sumOctoberactive = 0;
  int sumAlMokattamactive = 0;
  int sumAlexactive = 0;

  int sumrespon = 0;
  int sumNew = 0;
  int sumpro = 0;
  int sumactive = 0;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 4), (Timer t) => calculateSum());
    // calculateSum();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<void> calculateSum() async {
    sum = 0;
    sumAlMaadi = 0;
    sumNaserCity = 0;
    sumFasel = 0;
    sumalMuhandisin = 0;
    sumHelwan = 0;
    sumnewCairo = 0;
    sumOctober = 0;
    sumAlMokattam = 0;
    sumAlex = 0;

    sumgirl = 0;
    sumAlMaadigirl = 0;
    sumNaserCitygirl = 0;
    sumFaselgirl = 0;
    sumalMuhandisingirl = 0;
    sumHelwangirl = 0;
    sumnewCairogirl = 0;
    sumOctobergirl = 0;
    sumAlMokattamgirl = 0;
    sumAlexgirl = 0;
    //boy
    sumboy = 0;
    sumAlMaadiboy = 0;
    sumNaserCityboy = 0;
    sumFaselboy = 0;
    sumalMuhandisinboy = 0;
    sumHelwanboy = 0;
    sumnewCairoboy = 0;
    sumOctoberboy = 0;
    sumAlMokattamboy = 0;
    sumAlexboy = 0;

    //volunteeringDegree
    sumrespon = 0;
    sumNew = 0;
    sumpro = 0;
    sumactive = 0;
    sumAlMaadirespon = 0;
    sumNaserCityrespon = 0;
    sumFaselrespon = 0;
    sumalMuhandisinrespon = 0;
    sumHelwanrespon = 0;
    sumnewCairorespon = 0;
    sumOctoberrespon = 0;
    sumAlMokattamrespon = 0;
    sumAlexrespon = 0;

    sumAlMaadiNew = 0;
    sumNaserCityNew = 0;
    sumFaselNew = 0;
    sumalMuhandisinNew = 0;
    sumHelwanNew = 0;
    sumnewCairoNew = 0;
    sumOctoberNew = 0;
    sumAlMokattamNew = 0;
    sumAlexNew = 0;

    sumAlMaadipro = 0;
    sumNaserCitypro = 0;
    sumFaselpro = 0;
    sumalMuhandisinpro = 0;
    sumHelwanpro = 0;
    sumnewCairopro = 0;
    sumOctoberpro = 0;
    sumAlMokattampro = 0;
    sumAlexpro = 0;

    sumAlMaadiactive = 0;
    sumNaserCityactive = 0;
    sumFaselactive = 0;
    sumalMuhandisinactive = 0;
    sumHelwanactive = 0;
    sumnewCairoactive = 0;
    sumOctoberactive = 0;
    sumAlMokattamactive = 0;
    sumAlexactive = 0;

    try {
      final ref = FirebaseDatabase.instance.reference();
      final snapshot = await ref.child('users').get();

      if (snapshot.value != null) {
        if (snapshot.value is Map<dynamic, dynamic>) {
          Map<dynamic, dynamic> data = snapshot.value as Map<dynamic, dynamic>;
          sum = data.length;
          // Iterate over each user in the 'users' node
          data.forEach((key, value) {
            if (value is Map<dynamic, dynamic>) {
              // Access the specific value by its key
              dynamic branch = value['branch'];
              dynamic gender = value['gender'];
              dynamic responsible = value['volunteeringDegree'];
              if (branch == "المعادي") {
                sumAlMaadi += 1;
              }
              if (branch == "مدينة نصر") {
                sumNaserCity += 1;
              }
              if (branch == "المهندسين") {
                sumalMuhandisin += 1;
              }
              if (branch == "حلوان") {
                sumHelwan += 1;
              }
              if (branch == "مصر الجديدة") {
                sumnewCairo += 1;
              }
              if (branch == "اكتوبر") {
                sumOctober += 1;
              }
              if (branch == "المقطم") {
                sumAlMokattam += 1;
              }
              if (branch == "اسكندرية") {
                sumAlex += 1;
              }
              if (branch == "فيصل") {
                sumFasel += 1;
              }
              if (gender == "ولد") {
                sumboy += 1;
              }
              if (gender == "بنت") {
                sumgirl += 1;
              }
              if (branch == "المعادي" && gender == "ولد") {
                sumAlMaadiboy += 1;
              }
              if (branch == "مدينة نصر" && gender == "ولد") {
                sumNaserCityboy += 1;
              }
              if (branch == "المهندسين" && gender == "ولد") {
                sumalMuhandisinboy += 1;
              }
              if (branch == "حلوان" && gender == "ولد") {
                sumHelwanboy += 1;
              }
              if (branch == "مصر الجديدة" && gender == "ولد") {
                sumnewCairoboy += 1;
              }
              if (branch == "اكتوبر" && gender == "ولد") {
                sumOctoberboy += 1;
              }
              if (branch == "المقطم" && gender == "ولد") {
                sumAlMokattamboy += 1;
              }
              if (branch == "اسكندرية" && gender == "ولد") {
                sumAlexboy += 1;
              }
              if (branch == "فيصل" && gender == "ولد") {
                sumFaselboy += 1;
              }

              if (branch == "المعادي" && gender == "بنت") {
                sumAlMaadigirl += 1;
              }
              if (branch == "مدينة نصر" && gender == "بنت") {
                sumNaserCitygirl += 1;
              }
              if (branch == "المهندسين" && gender == "بنت") {
                sumalMuhandisingirl += 1;
              }
              if (branch == "حلوان" && gender == "بنت") {
                sumHelwangirl += 1;
              }
              if (branch == "مصر الجديدة" && gender == "بنت") {
                sumnewCairogirl += 1;
              }
              if (branch == "اكتوبر" && gender == "بنت") {
                sumOctobergirl += 1;
              }
              if (branch == "المقطم" && gender == "بنت") {
                sumAlMokattamgirl += 1;
              }
              if (branch == "اسكندرية" && gender == "بنت") {
                sumAlexgirl += 1;
              }
              if (branch == "فيصل" && gender == "بنت") {
                sumFaselgirl += 1;
              }
              // مسئول
              if (branch == "المعادي" && responsible == "مسئول") {
                sumAlMaadirespon += 1;
              }
              if (branch == "مدينة نصر" && responsible == "مسئول") {
                sumNaserCityrespon += 1;
              }
              if (branch == "المهندسين" && responsible == "مسئول") {
                sumalMuhandisinrespon += 1;
              }
              if (branch == "حلوان" && responsible == "مسئول") {
                sumHelwanrespon += 1;
              }
              if (branch == "مصر الجديدة" && responsible == "مسئول") {
                sumnewCairorespon += 1;
              }
              if (branch == "اكتوبر" && responsible == "مسئول") {
                sumOctoberrespon += 1;
              }
              if (branch == "المقطم" && responsible == "مسئول") {
                sumAlMokattamrespon += 1;
              }
              if (branch == "اسكندرية" && responsible == "مسئول") {
                sumAlexrespon += 1;
              }
              if (branch == "فيصل" && responsible == "مسئول") {
                sumFaselrespon += 1;
              }

              if (responsible == "مسئول") {
                sumrespon += 1;
              }

              if (responsible == "نشيط") {
                sumactive += 1;
              }

              if (responsible == "مشروع مسئول") {
                sumpro += 1;
              }

              if (responsible == "جديد") {
                sumNew += 1;
              }
              //نشيط
              if (branch == "المعادي" && responsible == "نشيط") {
                sumAlMaadiactive += 1;
              }
              if (branch == "مدينة نصر" && responsible == "نشيط") {
                sumNaserCityactive += 1;
              }
              if (branch == "المهندسين" && responsible == "نشيط") {
                sumalMuhandisinactive += 1;
              }
              if (branch == "حلوان" && responsible == "نشيط") {
                sumHelwanactive += 1;
              }
              if (branch == "مصر الجديدة" && responsible == "نشيط") {
                sumnewCairoactive += 1;
              }
              if (branch == "اكتوبر" && responsible == "نشيط") {
                sumOctoberactive += 1;
              }
              if (branch == "المقطم" && responsible == "نشيط") {
                sumAlMokattamactive += 1;
              }
              if (branch == "اسكندرية" && responsible == "نشيط") {
                sumAlexactive += 1;
              }
              if (branch == "فيصل" && responsible == "نشيط") {
                sumFaselactive += 1;
              }
              //
              if (branch == "المعادي" && responsible == "مشروع مسئول") {
                sumAlMaadipro += 1;
              }
              if (branch == "مدينة نصر" && responsible == "مشروع مسئول") {
                sumNaserCitypro += 1;
              }
              if (branch == "المهندسين" && responsible == "مشروع مسئول") {
                sumalMuhandisinpro += 1;
              }
              if (branch == "حلوان" && responsible == "مشروع مسئول") {
                sumHelwanpro += 1;
              }
              if (branch == "مصر الجديدة" && responsible == "مشروع مسئول") {
                sumnewCairopro += 1;
              }
              if (branch == "اكتوبر" && responsible == "مشروع مسئول") {
                sumOctoberpro += 1;
              }
              if (branch == "المقطم" && responsible == "مشروع مسئول") {
                sumAlMokattampro += 1;
              }
              if (branch == "اسكندرية" && responsible == "مشروع مسئول") {
                sumAlexpro += 1;
              }
              if (branch == "فيصل" && responsible == "مشروع مسئول") {
                sumFaselpro += 1;
              }
              //
              if (branch == "المعادي" && responsible == "جديد") {
                sumAlMaadiNew += 1;
              }
              if (branch == "مدينة نصر" && responsible == "جديد") {
                sumNaserCityNew += 1;
              }
              if (branch == "المهندسين" && responsible == "جديد") {
                sumalMuhandisinNew += 1;
              }
              if (branch == "حلوان" && responsible == "جديد") {
                sumHelwanNew += 1;
              }
              if (branch == "مصر الجديدة" && responsible == "جديد") {
                sumnewCairoNew += 1;
              }
              if (branch == "اكتوبر" && responsible == "جديد") {
                sumOctoberNew += 1;
              }
              if (branch == "المقطم" && responsible == "جديد") {
                sumAlMokattamNew += 1;
              }
              if (branch == "اسكندرية" && responsible == "جديد") {
                sumAlexNew += 1;
              }
              if (branch == "فيصل" && responsible == "جديد") {
                sumFaselNew += 1;
              }
            }
          });
        } else {
          print('Invalid data format');
        }
      } else {
        print('No data found');
      }
    } on PlatformException catch (e) {
      print('Firebase Platform Exception: ${e.message}');
    } catch (error) {
      print('Error: $error');
    }

    if (mounted) {
      // Update the UI if the widget is still mounted
      setState(() {
        // this.sum = sum;
      });
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "ظرف غامض",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                item("Total", sum, sumboy, sumgirl, sumactive, sumNew, sumpro,
                    sumrespon),
                SizedBox(
                  height: 5,
                ),
                item(
                    "المعادى",
                    sumAlMaadi,
                    sumAlMaadiboy,
                    sumAlMaadigirl,
                    sumAlMaadiactive,
                    sumAlMaadiNew,
                    sumAlMaadipro,
                    sumAlMaadirespon),
                SizedBox(
                  height: 5,
                ),
                item(
                    "مدينة نصر",
                    sumNaserCity,
                    sumNaserCityboy,
                    sumNaserCitygirl,
                    sumNaserCityactive,
                    sumNaserCityNew,
                    sumNaserCitypro,
                    sumNaserCityrespon),
                SizedBox(
                  height: 5,
                ),
                item(
                    "المهندسين",
                    sumalMuhandisin,
                    sumalMuhandisinboy,
                    sumalMuhandisingirl,
                    sumalMuhandisinactive,
                    sumalMuhandisinNew,
                    sumalMuhandisinpro,
                    sumalMuhandisinrespon),
                SizedBox(
                  height: 5,
                ),
                item(
                    "حلوان",
                    sumHelwan,
                    sumHelwanboy,
                    sumHelwangirl,
                    sumHelwanactive,
                    sumHelwanNew,
                    sumHelwanpro,
                    sumHelwanrespon),
                SizedBox(
                  height: 5,
                ),
                item(
                    "مصر الجديدة",
                    sumnewCairo,
                    sumnewCairoboy,
                    sumnewCairogirl,
                    sumnewCairoactive,
                    sumnewCairoNew,
                    sumnewCairopro,
                    sumnewCairorespon),
                SizedBox(
                  height: 5,
                ),
                item(
                    "أكتوبر",
                    sumOctober,
                    sumOctoberboy,
                    sumOctobergirl,
                    sumOctoberactive,
                    sumOctoberNew,
                    sumOctoberpro,
                    sumOctoberrespon),
                SizedBox(
                  height: 5,
                ),
                item(
                    "المقطم",
                    sumAlMokattam,
                    sumAlMokattamboy,
                    sumAlMokattamgirl,
                    sumAlMokattamactive,
                    sumAlMokattamNew,
                    sumAlMokattampro,
                    sumAlMokattamrespon),
                SizedBox(
                  height: 5,
                ),
                item(
                    "اسكندرية",
                    sumOctober,
                    sumOctoberboy,
                    sumOctobergirl,
                    sumOctoberactive,
                    sumOctoberNew,
                    sumOctoberpro,
                    sumOctoberrespon),
                SizedBox(
                  height: 5,
                ),
                item("فيصل", sumFasel, sumFaselNew, sumFaselgirl, sumFaselgirl,
                    sumFaselNew, sumFaselpro, sumFaselrespon),
              ],
            ),
          )),
    );
  }

  Widget item(String branch, int totalsum, int sumboy, int sumgirl, int active,
      int newvoulnteer, int project, int responsible) {
    double screenWidth = 0;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.amber,
      ),
      height: 180,
      width: 500,
      child: Column(children: [
        Text(
          "$branch",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
        ),
        const Text(
          "العدد الكلي",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          "$totalsum",
          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "$sumboy :الأولاد",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              " $sumgirl :البنات",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "$newvoulnteer :جديد",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                "$project :مشروع مسئول",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                " $responsible : مسئول",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                " $active : نشيط",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
