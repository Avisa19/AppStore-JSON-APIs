//
//  SearchResultCell.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/21/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class SearchResultCell: UICollectionViewCell {
    
    fileprivate let iconImageView = ASImageView()
    
    fileprivate let nameLabel = ASLabel(title: "Apps Name")
    
    fileprivate let categoryLabel = ASLabel(title: "Photos & Videos")
    
    fileprivate let ratingLabel = ASLabel(title: "9.26M")
    
    fileprivate let getButton = ASButton(title: "GET")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
    }
    
    fileprivate func setupViews() {
        
        let lablesStackView = ASStackView(views: nameLabel, categoryLabel, ratingLabel)
        lablesStackView.axis = .vertical
        
        let stackView = UIStackView(arrangedSubviews: [
            iconImageView,
            lablesStackView,
            getButton
        ])
        
        stackView.spacing = 12
        stackView.alignment = .center
        
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
      
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
