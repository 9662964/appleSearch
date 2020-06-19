//
//  AppleStoreItemController.swift
//  appleSearch
//
//  Created by iljoo Chae on 6/18/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

struct StringConstrants {
   fileprivate static let baseURLString = "https://itunes.apple.com"
    fileprivate static let searchComponent = "search"
    fileprivate static let searchQueryName = "term"
}

class AppleStoreItemController {

    //1
    static func fetchMusicItem(searchTeam: String, completion: @escaping (Result<MusicTrack, AppleStoreError>) -> Void) {
        guard let baseURL = URL(string: StringConstrants.baseURLString) else {return completion(.failure(.invalidURL))}
        
        let searchURL = baseURL.appendingPathComponent(StringConstrants.searchComponent)
        
        var components = URLComponents(url: searchURL, resolvingAgainstBaseURL: true)
        let searchTermQueryItem = URLQueryItem(name: StringConstrants.searchQueryName, value: searchTerm)
        let entiryQuery = URLQueryItem(name: StringConstrants.entityQueryName, value: StringConstrants.appEntityQueryValue)
        
        components?.queryItems = [SearchQuery, entityQuery]
        
        guard let finalURL = components?.url else {return completion(.failure(.invalidURL))}
        print(finalURL)
        
        URLSession.shared.dataTask(with: finalURL)
    }
    
    
}
