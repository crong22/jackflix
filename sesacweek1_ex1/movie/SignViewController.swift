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
        view.endEditing(true)
        //이메일 주소 또는 전화번호
        joinText(emailField, contents: "이메일 주소 또는 전화번호")
        
        //비밀번호
        joinText(passwordField, contents: "비밀번호")
        
        //닉네임
        joinText(nicknameField, contents: "닉네임")
        
        //위치
        joinText(gpsField, contents: "위치")
        
        //추천코드입력
        joinText(recommandField, contents: "추천코드입력")
    }
    func joinText(_ fieldName : UITextField, contents : String){
        fieldName.backgroundColor = .gray
        fieldName.text = contents
        fieldName.keyboardType = .default
        fieldName.clearsOnBeginEditing = true
        view.endEditing(true)
    }
    @IBAction func backViewClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    @IBAction func textClicked(_ sender: UITextField) {
        view.endEditing(true)
    }
    
    @IBAction func signUpClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
    @IBAction func passwordTapped(_ sender: UITextField) {
        passwordField.isSecureTextEntry = true
    }
    
}
