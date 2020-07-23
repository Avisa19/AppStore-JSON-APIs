//
//  SearchResult.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/22/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    let averageUserRating: Float?
    let artworkUrl100: String // app icon
    let screenshotUrls: [String]
}
