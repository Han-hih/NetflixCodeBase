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
    // MARK: - 상단뷰 버튼
    let topView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        return view
    }()
    
    let mainButton = {
        let button = UIButton()
        button.setTitle("N", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        
       return button
    }()
    
    let tvButton = {
        let button = TopViewLabel()
        button.setTitle("TV프로그램", for: .normal)
        
        return button
    }()
    
    let movieButton = {
        let button = TopViewLabel()
        button.setTitle("영화", for: .normal)
        
        return button
    }()
    
    let myButton = {
        let button = TopViewLabel()
        button.setTitle("내가 찜한 컨텐츠", for: .normal)
        
        return button
    }()
    
    // MARK: - 중간뷰 버튼
//    let myContentButton = {
//        let button = MiddleView()
//        button.configuration?.title = "내가 찜한 컨텐츠"
//        button.configuration?.image = UIImage(named: "checkmark.circle")
//
//        return button
//    }()
    
    // MARK: - 하단뷰 레이블, 이미지
    let bottomView = {
        let view = UIView()
        view.backgroundColor = .clear
        
       return view
    }()
    
    let previewLabel = {
        let label = UILabel()
        label.text = "미리보기"
        label.textColor = .white
        label.font = .systemFont(ofSize: 25)
        
        return label
    }()

    let firstImage = {
        let view = SettingImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.image = UIImage(named: "겨울왕국")
        return view
    }()
    
    let secondImage = {
        let view = SettingImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.image = UIImage(named: "7번방의선물")
        return view
    }()
    
    let thirdImage = {
        let view = SettingImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.image = UIImage(named: "택시운전사")
       
        return view
    }()
    
    // MARK: - ViewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        [movieImageView, backgroundView, topView, mainButton, tvButton, movieButton, myButton, bottomView, firstImage, secondImage, thirdImage, previewLabel].forEach { view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        
        
        
        setAutolayout()
    }
    

    // MARK: - 오토레이아웃
    func setAutolayout() {
        NSLayoutConstraint.activate([
            // 영화 백그라운드 이미지 뷰
            movieImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            movieImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            movieImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            movieImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.8),
           
            // 영화 이미지 위에 올라가는 투명 뷰
            backgroundView.leadingAnchor.constraint(equalTo: movieImageView.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: movieImageView.trailingAnchor),
            backgroundView.topAnchor.constraint(equalTo: movieImageView.topAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor),
            
            // 상단뷰
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            // 상단뷰에 들어가는 'N' 버튼
            mainButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 5),
            mainButton.topAnchor.constraint(equalTo: topView.topAnchor, constant: 5),
            
            // 상단뷰에 들어가는 TV프로그램 버튼
            tvButton.leadingAnchor.constraint(equalTo: mainButton.trailingAnchor, constant: 40),
            tvButton.topAnchor.constraint(equalTo: topView.topAnchor, constant: 20),
            // 상단뷰에 들어가는 영화 버튼
            movieButton.leadingAnchor.constraint(equalTo: tvButton.trailingAnchor, constant: 40),
            movieButton.topAnchor.constraint(equalTo: tvButton.topAnchor),
            // 내가 찜한 컨텐츠 버튼
            myButton.topAnchor.constraint(equalTo: tvButton.topAnchor),
            myButton.leadingAnchor.constraint(equalTo: movieButton.trailingAnchor, constant: 40),
            
            //중간뷰
            
            //중간뷰 내가 찜한 컨텐츠 버튼
//            myContentButton.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 200)
            
            //하단뷰
            bottomView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            
            //하단뷰 미리보기 레이블
            previewLabel.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 5),
            previewLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 0),
            
            //하단뷰 첫번째 이미지
            firstImage.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: 0),
            firstImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3),
            firstImage.heightAnchor.constraint(equalTo: firstImage.widthAnchor, multiplier: 1),
            firstImage.trailingAnchor.constraint(equalTo: secondImage.leadingAnchor, constant: -7),
            
            //하단뷰 두번째 이미지
            secondImage.bottomAnchor.constraint(equalTo: firstImage.bottomAnchor),
            secondImage.widthAnchor.constraint(equalTo: firstImage.widthAnchor),
            secondImage.heightAnchor.constraint(equalTo: firstImage.heightAnchor),
            secondImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
            //하단뷰 세번째 이미지
            thirdImage.bottomAnchor.constraint(equalTo: firstImage.bottomAnchor),
            thirdImage.widthAnchor.constraint(equalTo: firstImage.widthAnchor),
            thirdImage.heightAnchor.constraint(equalTo: firstImage.heightAnchor),
            thirdImage.leadingAnchor.constraint(equalTo: secondImage.trailingAnchor, constant: 7)
            
        ])
        
        
        
    }
    
}

