//
//  SignViewController.swift
//  sesacweek1_ex1
//
//  Created by 여누 on 5/16/24.
//

import UIKit

class SignViewController: UIViewController {

    @IBOutlet var emailField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var nicknameField: UITextField!
    @IBOutlet var gpsField: UITextField!
    @IBOutlet var recommandField: UITextField!
    @IBOutlet var signButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //이메일 주소 또는 전화번호
        emailField.backgroundColor = .gray
        emailField.text = "이메일 주소 또는 전화번호"
        emailField.keyboardType = .default
        emailField.clearsOnBeginEditing = true
        
        //비밀번호
        passwordField.backgroundColor = .gray
        passwordField.text = "비밀번호"
        passwordField.keyboardType = .default
        passwordField.clearsOnBeginEditing = true
        //닉네임
        nicknameField.backgroundColor = .gray
        nicknameField.text = "닉네임"
        nicknameField.keyboardType = .default
        nicknameField.clearsOnBeginEditing = true
        
        //위치
        gpsField.backgroundColor = .gray
        gpsField.text = "위치"
        gpsField.keyboardType = .default
        gpsField.clearsOnBeginEditing = true
        
        //추천코드입력
        recommandField.backgroundColor = .gray
        recommandField.text = "추천코드입력"
        recommandField.keyboardType = .default
        recommandField.clearsOnBeginEditing = true
    }
    
    @IBAction func signTapped(_ sender: Any) {
        signButton.endEditing(true)
    }
   
    @IBAction func passTapped(_ sender: Any) {
        passwordField.isSecureTextEntry = true
        
    }
    

}
