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
        
        let verticalStack = UIStackView(arrangedSubviews: [
            nameLabel,
            categoryLabel,
            ratingLabel
        ])
        verticalStack.axis = .vertical
        verticalStack.spacing = 4
        
        let stackView = UIStackView(arrangedSubviews: [
            imageView, verticalStack, getButton
        ])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        
        stackView.spacing = 12
        
        
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
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
