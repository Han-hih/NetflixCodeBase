//
//  TopViewLabel.swift
//  NetflixCodeBase
//
//  Created by 황인호 on 2023/08/25.
//

import UIKit

class TopViewLabel: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpButton() {
        setTitleColor(.white, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 20)
    }
}
