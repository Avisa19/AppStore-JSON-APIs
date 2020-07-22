//
//  ASImageView.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/21/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class ASImageView: UIImageView {
    
    init(frame: CGRect = .zero, contentMode: UIView.ContentMode = .scaleAspectFit, backColor: UIColor = .systemRed, width: CGFloat = 64, cornerRadius: CGFloat = 12) {
        super.init(frame: frame)
        checkIfFrameZero()
        self.contentMode = contentMode
        self.backgroundColor = backColor
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: width).isActive = true
        self.layer.cornerRadius = cornerRadius
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct ASImageView_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}
