//
//  SearchResultCell.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/21/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class SearchResultCell: UICollectionViewCell {
    
    fileprivate let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemTeal
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Apps Name"
        return label
    }()
    
    fileprivate let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct SearchResultCell_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}
