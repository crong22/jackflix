//
//  FindViewController.swift
//  sesacweek1_ex1
//
//  Created by 여누 on 5/16/24.
//

import UIKit




class FindViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    @IBOutlet var titleLable: UILabel!
    
    @IBOutlet var findButton: UIButton!
    @IBOutlet var findTitleField: UITextField!
    
    @IBOutlet var blueButton: UIButton!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenButton: UIButton!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var pinkButton: UIButton!
    @IBOutlet var pinkLabel: UILabel!
    
    @IBOutlet var messageLabel: UILabel!
    
    @IBOutlet var testButtton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = .black
        
        titleLable.text = "NEW & HOT 검색"
        titleLable.font = .monospacedSystemFont(ofSize: 20, weight: .bold)
        titleLable.textColor = .white
        titleLable.textAlignment = .center
      
        findButton.setImage(UIImage(named: "magnifyingglass"), for: .normal)
        findButton.backgroundColor = .gray
        
        findTitleField.backgroundColor = .gray
        findTitleField.text = "게임,시리즈,영화를 검색하세요..."
        findTitleField.keyboardType = .default
        findTitleField.clearsOnBeginEditing = true
        
        //IOS15이상에서 작성하는 크도와, 미만 코드가 다름
        //Default의 경우가 IOS15이상의 코드와 어울림 낮을 경우 Plain으로 적용하여 사용
        //Image Rendering Mode : template vs original
        
        //공개예정
        blueButton.setImage(UIImage(named: "blue.left"), for: .normal)

        //blueButton.semanticContentAttribute = .forceRightToLeft
        blueButton.setTitle("         ", for: .normal )
        //blueButton.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        //위의 코드는 Default의 버튼에 적용이 가능
        //blueButton.setTitleColor(.white, for: .normal)
        blueButton.backgroundColor = .black
        blueButton.layer.cornerRadius = 15
        
        blueLabel.text = "공개 예정"
        blueLabel.font = .systemFont(ofSize: 10)
        blueLabel.textAlignment = .center
        blueLabel.textColor = .white
        //
        
        //모두의 인기 콘텐츠
        greenButton.setImage(UIImage(named: "turquoise"), for: .normal)
        greenButton.setTitle("                        ", for: .normal )
        greenButton.backgroundColor = .black
        greenButton.layer.cornerRadius = 15
        
        greenLabel.text = "모두의 인기 콘텐츠"
        greenLabel.font = .systemFont(ofSize: 10)
        greenLabel.textAlignment = .center
        greenLabel.textColor = .white
      
        //TOP10 시리즈
        pinkButton.setImage(UIImage(named: "pink"), for: .normal)
        pinkButton.setTitle("                        ", for: .normal )
        pinkButton.backgroundColor = .black
        pinkButton.layer.cornerRadius = 15
        
        pinkLabel.text = "TOP10 시리즈"
        pinkLabel.font = .systemFont(ofSize: 10)
        pinkLabel.textAlignment = .center
        pinkLabel.textColor = .white
      
        

    }
    
    @IBAction func blueTapped(_ sender: Any) {
        greenButton.backgroundColor = .black
        greenLabel.textColor = .white
        pinkButton.backgroundColor = .black
        pinkLabel.textColor = .white
        
        blueButton.backgroundColor = .white
        blueLabel.textColor = .black
        
        messageLabel.text = "1번 클릭"
        messageLabel.font = .systemFont(ofSize: 20, weight: .bold)
        messageLabel.textColor = .white
        messageLabel.textAlignment = .center
    }
    

    @IBAction func greenTapped(_ sender: Any) {
        blueButton.backgroundColor = .black
        blueLabel.textColor = .white
        pinkButton.backgroundColor = .black
        pinkLabel.textColor = .white
        
        greenButton.backgroundColor = .white
        greenLabel.textColor = .black
        
        messageLabel.text = "2번 클릭"
        messageLabel.font = .systemFont(ofSize: 20, weight: .bold)
        messageLabel.textColor = .white
        messageLabel.textAlignment = .center
    }
    
    
    @IBAction func pinkTapped(_ sender: Any) {
        blueButton.backgroundColor = .black
        blueLabel.textColor = .white
        greenButton.backgroundColor = .black
        greenLabel.textColor = .white
        
        pinkButton.backgroundColor = .white
        pinkLabel.textColor = .black
        
        messageLabel.text = "3번 클릭"
        messageLabel.font = .systemFont(ofSize: 20, weight: .bold)
        messageLabel.textColor = .white
        messageLabel.textAlignment = .center
    }
}
