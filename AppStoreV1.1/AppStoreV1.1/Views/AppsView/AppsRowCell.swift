//
//  AppsRowCell.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/24/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class AppsRowCell: UICollectionViewCell {
    
    fileprivate let iconImageView = ASImageView(width: 38, cornerRadius: 6)
    fileprivate let nameLabel = ASLabel()
    fileprivate let companyLabel = ASLabel()
    fileprivate let getButton = ASButton(title: "GET", font: UIFont.boldSystemFont(ofSize: 12), width: 60, height: 22, radius: 6)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .white
        contentView.addSubview(iconImageView)
        iconImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        iconImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        let stackView = ASStackView(views: nameLabel, companyLabel)
        contentView.addSubview(stackView)
        stackView.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 8).isActive = true
        stackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        contentView.addSubview(getButton)
        getButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        getButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
       //
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct AppsRowCell_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}
