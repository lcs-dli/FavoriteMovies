//
//  FavoriteMoviesApp.swift
//  FavoriteMovies
//
//  Created by David Li on 2023-05-28.
//

import SwiftUI

@main
struct FavoriteMoviesApp: App {
    var body: some Scene {
        WindowGroup {
            MoviesListView()
                //Make the database available for all the view through the environment
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}
