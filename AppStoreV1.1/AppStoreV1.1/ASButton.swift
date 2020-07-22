//
//  ASButton.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/21/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class ASButton: UIButton {
    
    init(frame: CGRect = .zero, title: String = "Default Text", titleColor: UIColor = .systemBlue, font: UIFont = .boldSystemFont(ofSize: 14), width: CGFloat = 80, height: CGFloat = 32, backgroundColor: UIColor = UIColor.init(white: 0.95, alpha: 1), radius: CGFloat = 16) {
        super.init(frame: frame)
        checkIfFrameZero()
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = font
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = radius
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

struct ASButton_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}
