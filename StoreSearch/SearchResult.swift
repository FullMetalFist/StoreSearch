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

class SearchResult: Codable {
    var artistName = ""
    var trackName = ""
    
    var name: String {
        return trackName
    }
}
