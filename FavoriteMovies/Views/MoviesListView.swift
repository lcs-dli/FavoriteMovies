//
//  MoviesListView.swift
//  FavoriteMovies
//
//  Created by David Li on 2023-05-28.
//

import SwiftUI

struct MoviesListView: View {
    //MARK: Storing property
    
    //MARK: Computed property
    var body: some View {
        NavigationView{
            List{
                MovieItemView(movieTitle: "Suzume", movieRating: 4, movieGenre: "Fantasy")
                MovieItemView(movieTitle: "Hello world", movieRating: 4, movieGenre: "Love")
                MovieItemView(movieTitle: "Suzume", movieRating: 4, movieGenre: "Fantasy")
            }
        }
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
