//
//  Movie.swift
//  FavoriteMovies
//
//  Created by David Li on 2023-05-28.
//

import Foundation
import Blackbird

struct Movie: BlackbirdModel{
    @BlackbirdColumn var id: Int
    @BlackbirdColumn var name: String
    @BlackbirdColumn var genre: String
    @BlackbirdColumn var rating: Int
}
