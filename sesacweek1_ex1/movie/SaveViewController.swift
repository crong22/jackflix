//
//  SaveViewController.swift
//  sesacweek1_ex1
//
//  Created by 여누 on 5/16/24.
//

import UIKit

class SaveViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var saveLabel: UILabel!
    @IBOutlet var mainTextLabel: UILabel!
    @IBOutlet var movieImage: UIImageView!
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var contentButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = .black
        
        titleLabel.text = "저장한 콘텐츠 목록"
        titleLabel.font = .systemFont(ofSize: 25, weight: .bold)
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        
        saveLabel.text = "'나만의 자동 저장'기능"
        saveLabel.font = .systemFont(ofSize: 26, weight: .bold)
        saveLabel.textColor = .white
        saveLabel.textAlignment = .center
        
        mainTextLabel.text = "취양에 맞는 영화와 시리즈를 자동으로 저장해 드립니다. \n 디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이\n 없어요."
        mainTextLabel.font = .systemFont(ofSize: 12)
        mainTextLabel.textColor = .gray
        mainTextLabel.numberOfLines = 0
        mainTextLabel.textAlignment = .center
        
        movieImage.image = UIImage(named: "dummy")
        
        settingButton.setTitle("설정하기", for: .normal)
        
        contentButton.setTitle("저장 가능한 콘텐츠 살펴보기", for:.normal)
        contentButton.backgroundColor = .white
        
    }
    



}
