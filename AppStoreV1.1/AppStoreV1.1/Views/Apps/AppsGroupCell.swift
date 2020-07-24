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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(sectionLabel)
        sectionLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        sectionLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        sectionLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
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
