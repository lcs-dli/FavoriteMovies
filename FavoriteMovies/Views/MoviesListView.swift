//
//  MoviesListView.swift
//  FavoriteMovies
//
//  Created by David Li on 2023-05-28.
//
import Blackbird
import SwiftUI

struct MoviesListView: View {
    //MARK: Storing property
    //
    @BlackbirdLiveModels ({db in
        try await Movie.read(from: db)
    }) var movies
    //MARK: Computed property
    var body: some View {
        NavigationView{
            List(movies.results){ currentMovie in
                MovieItemView(movieTitle: currentMovie.name, movieRating: currentMovie.rating, movieGenre: currentMovie.genre)
            }
        }
        .navigationTitle("Favorite Movie")
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MoviesListView()
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}
