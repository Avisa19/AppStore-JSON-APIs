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
        
        tabBar.tintColor = .black
        
        viewControllers = [
            createItemBar(UIViewController(), with: "Today", with: #imageLiteral(resourceName: "today_icon")),
            createItemBar(UIViewController(), with: "Apps", with: #imageLiteral(resourceName: "apps")),
            createItemBar(UIViewController(), with: "Search", with:#imageLiteral(resourceName: "search"))
        ]
    }
    
    // Create items for TabBar
   fileprivate func  createItemBar(_ viewController: UIViewController, with title: String, with image: UIImage) -> UIViewController {
    
        viewController.view.backgroundColor = UIColor.init(white: 0.5, alpha: 0.1)
        let vcNav = UINavigationController(rootViewController: viewController)
        vcNav.tabBarItem.title = title
        viewController.navigationItem.title = title
        vcNav.navigationBar.prefersLargeTitles = true
        vcNav.tabBarItem.image = image
        return vcNav
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
