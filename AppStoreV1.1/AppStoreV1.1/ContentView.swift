//
//  ContentView.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/21/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class BaseTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redVC = UIViewController()
        redVC.view.backgroundColor = UIColor.init(white: 0.5, alpha: 0.1)
        let redNav = UINavigationController(rootViewController: redVC)
        redNav.tabBarItem.title = "Apps"
        redVC.navigationItem.title = "Apps"
        redNav.navigationBar.prefersLargeTitles = true
        redNav.tabBarItem.image = #imageLiteral(resourceName: "apps")
        
        let blueVC = UIViewController()
        blueVC.view.backgroundColor = UIColor.init(white: 0.5, alpha: 0.1)
        let blueNav = UINavigationController(rootViewController: blueVC)
        blueNav.tabBarItem.title = "Search"
        blueVC.navigationItem.title = "Search"
        blueNav.navigationBar.prefersLargeTitles = true
        blueNav.tabBarItem.image = #imageLiteral(resourceName: "search")
        
        tabBar.tintColor = .black
        
        viewControllers = [
            redNav,
            blueNav
        ]
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}

struct Container: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        UINavigationController(rootViewController: BaseTabBarController())
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
    typealias UIViewControllerType = UIViewController
    
    
}
