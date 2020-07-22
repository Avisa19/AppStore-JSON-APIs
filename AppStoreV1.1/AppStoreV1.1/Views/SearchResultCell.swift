//
//  SearchResultCell.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/21/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class SearchResultCell: UICollectionViewCell {
    
    fileprivate let imageView = ASImageView()
    
    fileprivate let nameLabel = ASLabel(title: "Apps Name")
    
    fileprivate let categoryLabel = ASLabel(title: "Photos & Videos")
    
    fileprivate let ratingLabel = ASLabel(title: "9.26M")
    
    fileprivate let getButton = ASButton(title: "GET")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGreen
        setupViews()
    }
    
    fileprivate func setupViews() {
        
        let verticalStack = ASStackView(views: nameLabel, categoryLabel,
            ratingLabel
            , space: 4)
        
        let horizontalStack = ASStackView(views: imageView, verticalStack, getButton, axis: .horizontal, space: 12)
        
        addSubview(horizontalStack)
        
        horizontalStack.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        horizontalStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        horizontalStack.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
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
