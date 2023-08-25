//
//  CustomView.swift
//  NetflixCodeBase
//
//  Created by 황인호 on 2023/08/25.
//

import UIKit

class SettingImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView("")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(_ name: String) {
        image = UIImage(named: name)
    }
}

