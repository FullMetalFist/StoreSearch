//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Michael Vilabrera on 4/11/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

import Foundation

class ResultArray: Codable {
    var resultCount = 0
    var results = [SearchResult]()
}

class SearchResult: Codable, CustomStringConvertible {
    var artistName = ""
    var trackName = ""
    
    var name: String {
        return trackName
    }
    
    var description: String {
        return "Name: \(name), Artist Name: \(artistName)"
    }
}
