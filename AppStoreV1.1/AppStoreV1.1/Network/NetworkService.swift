//
//  NetworkService.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/22/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class NetworkService {

    static let shared = NetworkService()
    
    func fetchiTunesApps() {
        let urlString = "https://itunes.apple.com/search?term=instagram&entity=software"
        
        guard let url = URL(string: urlString) else { return }
        
        // Fetch data
        let dataTask = URLSession.shared.dataTask(with: url) { (snapshot, response, err) in
            if let err = err {
                print("Error in fetching data:", err)
            }
            
            // success
            guard let snapshot = snapshot else { return }
            do {
            let jsonData = try JSONDecoder().decode(SearchResult.self, from: snapshot)
                jsonData.results.forEach {print($0.trackName, $0.primaryGenreName)}
            } catch let jsonErr {
                print("Error in decoding data to json:", jsonErr)
            }
            
        }
        dataTask.resume()
    }
}
