//
//  ViewController.swift
//  NetflixCodeBase
//
//  Created by 황인호 on 2023/08/25.
//

import UIKit

class ViewController: UIViewController {

    // 이미지뷰 기기의 2/3 사이즈 미리보기 뷰 1/3 사이즈
    // 상단뷰에 N버튼, (TV프로그램, 영화, 내가찜한컨텐츠) -> 커스텀뷰
    // 중간뷰 (내가찜한컨텐츠 재생 정보) -> 커스텀뷰 + 버튼(이미지 아래에 레이블)
    // 하단뷰 미리보기 이미지 3개 둥글게, borderwidth
    
    let movieImageView: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(named: "어벤져스엔드게임")
        
        return view
    }()
    let backgroundView: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(named: "background")
        
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        [movieImageView, backgroundView].forEach { view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        
        
        
        setAutolayout()
    }
    

    
    
    func setAutolayout() {
        NSLayoutConstraint.activate([
            movieImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            movieImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            movieImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            movieImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.8),
            
            backgroundView.leadingAnchor.constraint(equalTo: movieImageView.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: movieImageView.trailingAnchor),
            backgroundView.topAnchor.constraint(equalTo: movieImageView.topAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        
        
    }
    
}

