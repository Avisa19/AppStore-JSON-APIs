//
//  ASLabel.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/21/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

class ASLabel: UILabel {
    
    init(title: String = "Default text", frame: CGRect = .zero, textAlign: NSTextAlignment = .left, textColor: UIColor = .black) {
        super.init(frame: frame)
        checkIfFrameZero()
        self.text = title
        self.textAlignment = textAlign
        self.textColor = textColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct ASLabel_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}
