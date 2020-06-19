//
//  MusicItem.swift
//  appleSearch
//
//  Created by iljoo Chae on 6/18/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation
//conform to codable :Codable
struct MusicTopLevelDictionary:Codable  {
    let result: [MusicTrack]
}

struct MusicTrack: Codable {
    let trackName: String
    let artistName: String
    //in case if there is no URL then app will be crashed so we put ?(Optional)
    let artworkUrl100: URL?
}
