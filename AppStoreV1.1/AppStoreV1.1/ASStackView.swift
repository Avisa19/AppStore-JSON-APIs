//
//  ASStackView.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/21/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class ASStackView: UIStackView {
    
    init(frame: CGRect = .zero, views: UIView..., axis: NSLayoutConstraint.Axis = .vertical, space: CGFloat = 0) {
        super.init(frame: frame)
        checkIfFrameZero()
        self.axis = axis
        self.spacing = space
        views.forEach({addArrangedSubview($0)})
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct ASStackView_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}
