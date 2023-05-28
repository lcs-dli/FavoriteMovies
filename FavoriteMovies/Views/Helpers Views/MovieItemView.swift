//
//  MovieItemView.swift
//  FavoriteMovies
//
//  Created by David Li on 2023-05-28.
//

import SwiftUI

struct MovieItemView: View {
    //MARK: Storing property
    let movieTitle: String
    let movieRating: Int
    let movieGenre: String
    //MARK: Computed property
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                Text(movieTitle)
                    .bold()
                    .font(.title3)
                Text(movieGenre)
                    .font(.subheadline)
            }
            Spacer()
            
            Text("\(movieRating)/5")
                .font(.title)
        }
    }
}

struct MovieItemView_Previews: PreviewProvider {
    static var previews: some View {
        MovieItemView(movieTitle: "Suzume", movieRating: 4, movieGenre: "Fantasy")
    }
}
