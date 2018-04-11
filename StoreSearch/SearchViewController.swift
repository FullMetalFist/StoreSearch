//
//  SearchViewController.swift
//  StoreSearch
//
//  Created by Michael Vilabrera on 4/11/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var searchResults = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.contentInset = UIEdgeInsets(top: 64, left: 0, bottom: 0, right: 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SearchViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchResults = []
        
        for i in 0...4 {
            searchResults.append(String(format: "Fake %d for '%@'", i, searchBar.text!))
        }
        tableView.reloadData()
    }
}

extension SearchViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: UITableViewDataSource methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "SearchResultCell"
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        
        cell.textLabel!.text = searchResults[indexPath.row]
        return cell
    }
    
    // MARK: UITableViewDelegate methods
}
