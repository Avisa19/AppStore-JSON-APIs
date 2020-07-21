//
//  Extensions.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/21/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI

extension UIView {
    func checkIfFrameZero() {
        if self.frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
    }
}
