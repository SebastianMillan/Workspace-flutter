import 'package:ejemplo_bloc/blocs/movies/movies_bloc.dart';
import 'package:ejemplo_bloc/repositories/movie_repository.dart';
import 'package:ejemplo_bloc/repositories/movie_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  late MovieRepository movieRepository;

  @override
  void initState() {
    super.initState();
    movieRepository = MovieRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MoviesBloc(movieRepository)..add(MovieFetchPopularEvent('popular')),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Movie'),
        ),
        body: Center(child: _movieList()),
      ),
    );
  }
}

Widget _movieList() {
  return BlocBuilder(builder: (context, state) {
    if (state is PopularMovieFetchSuccess) {
      return ListView.builder(
          itemCount: state.popularMovieList.length,
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text(state.popularMovieList[index].title!),
            );
          }));
    } else if (state is PopularMovieFetchError) {
      return Text(state.errorMessage);
    } else {
      return const CircularProgressIndicator();
    }
  });
}
