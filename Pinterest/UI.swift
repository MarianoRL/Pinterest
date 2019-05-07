//
//  UI.swift
//  Pinterest
//
//  Created by Alumno on 30/04/19.
//  Copyright © 2019 MarianoRL. All rights reserved.
//

import UIKit

extension UIView {
    
    func pinEdgesToSuperView() {
        guard let superView = superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leftAnchor.constraint(equalTo: superView.leftAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        rightAnchor.constraint(equalTo: superView.rightAnchor).isActive = true
    }
    
}