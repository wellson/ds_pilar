import 'package:flutter/material.dart';
import 'package:tmdb_app/core/network/api_routes.dart';
import 'package:tmdb_app/modules/details/domain/entities/details/credits_detail_entity.dart';

class CreditsWidget extends StatelessWidget {
  const CreditsWidget({
    super.key,
    required this.creditsList,
  });

  final List<CreditsDetailEntity?>? creditsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Elenco principal',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 280,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount:
                      creditsList!.length > 10 ? 10 : creditsList!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var credits = creditsList![index]!;
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        height: 250,
                        width: 130,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 1,
                              blurStyle: BlurStyle.outer,
                              color: Color.fromARGB(255, 194, 191, 191),
                              offset: Offset(0, -2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.grey,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    '${ApiRoutes.image}${credits.profilePath ?? ''}',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    credits.name ?? '',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    credits.character ?? '',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
