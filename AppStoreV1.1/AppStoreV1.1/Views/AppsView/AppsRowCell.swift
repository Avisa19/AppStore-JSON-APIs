//
//  AppsRowCell.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/24/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class AppsRowCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemIndigo
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
