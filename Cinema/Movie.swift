//
//  Movie.swift
//  Cinema
//
//  Created by User on 08.03.2021.
//

import Foundation
///
struct Movie: Codable {
    let title: String
    let media_type: String
    let release_date: String
    let popularity: String
    let overview: String
    let poster_path: String
}

///
enum TypeMovie: String, Codable {
    case title
    case categories = "media_type"
    case release = "release_date"
    case rating = "popularity"
    case summary = "overview"
    case imageName = "poster_path"
}
