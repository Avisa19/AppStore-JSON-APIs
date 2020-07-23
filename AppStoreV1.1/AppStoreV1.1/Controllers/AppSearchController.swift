//
//  AppSearchController.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/21/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class AppSearchController: UICollectionViewController {
    
    fileprivate let CELL_ID = "CellId"
    fileprivate var appResult = [Result]()
    fileprivate let searchBarController = UISearchController(searchResultsController: nil)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupSearchBar()
    }
    
    fileprivate func setupSearchBar() {
        definesPresentationContext = true
        navigationItem.searchController = self.searchBarController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchBarController.obscuresBackgroundDuringPresentation = false
        searchBarController.searchBar.delegate = self
    }
    
    fileprivate func setupViews() {
        collectionView.backgroundColor = UIColor.init(white: 0.5, alpha: 0.1)
        collectionView.register(SearchResultCell.self, forCellWithReuseIdentifier: CELL_ID)
    }
    
  /*  fileprivate func fetchiTunesApp() {
        // Fetch Data from URL
        NetworkService.shared.fetchiTunesApps(searchTerm: "Twitter") { (results, err) in
            if let err = err {
                print("Error fetch data:", err)
            }
            guard let appResults = results else { return }
            self.appResult = appResults
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
    */
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appResult.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CELL_ID, for: indexPath) as! SearchResultCell
        cell.appResult = appResult[indexPath.item]
        return cell
    }
    
    init() {
        let layout = UICollectionViewFlowLayout()
        super.init(collectionViewLayout: layout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AppSearchController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: collectionView.frame.width, height: 350)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return .zero
    }
}

extension AppSearchController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        NetworkService.shared.fetchiTunesApps(searchTerm: searchText) { (results, err) in
            if let err = err {
                print("Error fetch data:", err)
            }
            guard let appResults = results else { return }
            self.appResult = appResults
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
}

struct AppSearchController_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}

