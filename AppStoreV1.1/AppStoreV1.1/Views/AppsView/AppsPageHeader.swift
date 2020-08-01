//
//  HeaderView.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 8/1/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class AppsPageHeader: UICollectionReusableView {
    
    fileprivate let appsHeaderHorizontalController: UIViewController = {
        let vc = UIViewController()
        vc.view.backgroundColor = .systemRed
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        return vc
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(appsHeaderHorizontalController.view)
        appsHeaderHorizontalController.view.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        appsHeaderHorizontalController.view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        appsHeaderHorizontalController.view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        appsHeaderHorizontalController.view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



struct AppsPageHeader_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}
