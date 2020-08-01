//
//  AppsGroupCell.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/24/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class AppsGroupCell: UICollectionViewCell {
    
    fileprivate let sectionLabel = ASLabel(title: "App Section", textColor: .systemGray, size: 24, weight: .bold)
    fileprivate let horizontalController = HorizontalAppsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    fileprivate func setupViews() {
        backgroundColor = .white
        addSubview(sectionLabel)
        
        horizontalController.view.backgroundColor = UIColor.init(white: 0.5, alpha: 0.1)
        addSubview(horizontalController.view)
        horizontalController.view.translatesAutoresizingMaskIntoConstraints = false
        
        sectionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 18).isActive = true
        sectionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        sectionLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        horizontalController.view.topAnchor.constraint(equalTo: sectionLabel.bottomAnchor).isActive = true
        horizontalController.view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        horizontalController.view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        horizontalController.view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct AppsGroupCell_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}
