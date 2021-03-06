//
//  Movie.swift
//  TMDB-Challenge
//
//  Created by Jorge Mendoza on 1/24/19.
//  Copyright © 2019 Jorge Mendoza. All rights reserved.
//

import Foundation

struct Movie: Codable {
    
    let adult, video: Bool?
    
    let backdropPath, homepage, imdbID, originalLanguage, originalTitle, overview, releaseDate, status, tagline, title, posterPath: String?
    
    let belongsToCollection: BelongsToCollection?
    
    let id, revenue, runtime, budget, voteCount: Int?
    
    let genres: [Genre]?
    
    let popularity, voteAverage: Double?
    
    let productionCompanies: [ProductionCompany]?
    
    let productionCountries: [ProductionCountry]?
    
    let spokenLanguages: [SpokenLanguage]?
    
    
    enum CodingKeys: String, CodingKey {
        
        case budget, genres, homepage, id, adult, overview, popularity, revenue, runtime, status, tagline, title, video
        
        case backdropPath = "backdrop_path"
        
        case belongsToCollection = "belongs_to_collection"
        
        case imdbID = "imdb_id"
        
        case originalLanguage = "original_language"
        
        case originalTitle = "original_title"
        
        case posterPath = "poster_path"
        
        case productionCompanies = "production_companies"
        
        case productionCountries = "production_countries"
        
        case releaseDate = "release_date"
        
        case spokenLanguages = "spoken_languages"
        
        case voteAverage = "vote_average"
        
        case voteCount = "vote_count"
        
    }
}

struct Genre: Codable {
    let id: Int
    
    let name: String
}

struct ProductionCompany: Codable {
    let id: Int
    
    let logoPath: String?
    
    let name, originCountry: String
    
    enum CodingKeys: String, CodingKey {
        case id, name
        
        case logoPath = "logo_path"
        
        case originCountry = "origin_country"
    }
}

struct ProductionCountry: Codable {
    
    let name: String
    
    enum CodingKeys: String, CodingKey {
        
        case name
    }
}

struct SpokenLanguage: Codable {
    let name: String
    
    enum CodingKeys: String, CodingKey {
        
        case name
    }
}

struct BelongsToCollection: Codable {
    
    let id:Int?
    
    let name: String?
    
    let posterPath: String?
    
    let backdropPath: String?
    
    enum CodingKeys: String, CodingKey {
        
        case id, name
        
        case posterPath = "poster_path"
        
        case backdropPath = "backdrop_path"
    }
}
