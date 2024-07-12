
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tmdb_app/core/network/api_routes.dart';
import 'package:tmdb_app/modules/details/presenter/pages/details_page.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/search_entity.dart';

class SearchPageWidget extends StatelessWidget {
  final List<SearchEntity?> searchMulti;

  const SearchPageWidget({
    super.key,
    required this.searchMulti,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Expanded(
          child: ListView.builder(
            itemCount: searchMulti.length,
            itemBuilder: (context, index) {
              var search = searchMulti[index]!;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    search.mediaTipe != 'person'
                        ? Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                id: search.id!,
                                isMovie:
                                    search.mediaTipe == 'movie' ? true : false,
                              ),
                            ),
                          )
                        : () {};
                  },
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1,
                          blurStyle: BlurStyle.outer,
                          color: Color.fromARGB(255, 194, 191, 191),
                          offset: Offset(0, -2),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 180,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  '${ApiRoutes.image}${search.posterPath ?? ''}',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                search.name != null
                                    ? search.name!
                                    : search.title!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                search.mediaTipe == 'person'
                                    ? ''
                                    : DateFormat.y('pt_BR')
                                        .format(DateTime.parse(
                                        '${searchMulti[index]!.releaseDate!.isNotEmpty ? searchMulti[index]!.releaseDate : searchMulti[index]!.firstAirDate}',
                                      )),
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                search.overview ??
                                    search.knownForDepartment ??
                                    '',
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
