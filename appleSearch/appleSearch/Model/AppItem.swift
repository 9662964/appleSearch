//
//  AppItem.swift
//  appleSearch
//
//  Created by iljoo Chae on 6/18/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

struct AppTopLevelDictionary: Codable {
    let results: [AppItem]
}

struct AppItem: Codable {
    let description: String
    let artworkUrl100: URL?
    let trackName: String
}
