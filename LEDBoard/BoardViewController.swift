//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by Doy Kim on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var boardTextLabel: UILabel!
    
    @IBOutlet weak var sendButton: UIButton!
    
    @IBOutlet weak var textColorButton: UIButton!
    
    @IBOutlet var buttonList: [UIButton]!
    
    @IBOutlet weak var textInputView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTextField.delegate = self
        
        boardTextLabel.numberOfLines = 0
        
        designTextField()
        designButton(for: sendButton, buttonTitle: "전송", highlightedTitle: "전송됨", bgColor: .blue)
        designButton(for: textColorButton, buttonTitle: "색변경", highlightedTitle: "색변경", bgColor: .orange)
        
           
    }
    
    func designTextField() {
        userTextField.placeholder = "내용을 작성해주세요."
        userTextField.text = "안녕하세요."
        userTextField.keyboardType = .emailAddress
        userTextField.font = .systemFont(ofSize: 15)
        userTextField.borderStyle = .none
        userTextField.textColor = .blue
        userTextField.borderStyle = .roundedRect
        
    }
    
    func designButton(for buttonName: UIButton, buttonTitle: String, highlightedTitle: String, bgColor: UIColor) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(highlightedTitle, for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.lightGray.cgColor
        buttonName.layer.borderWidth = 2
        buttonName.setTitleColor(.white, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
        buttonName.tintColor = .white
        
//        // 1. 반복문 활용
//        let buttonArray: [UIButton] = [sendButton, textColorButton]
//
//        for button in buttonArray {
//            button.backgroundColor = .blue
//            button.layer.cornerRadius = 2
//        }
//
//        // 2. 아울렛 컬렉션
//        for item in buttonList {
//            item.backgroundColor = .orange
//            item.layer.cornerRadius = 4
//        }
        
    }
    
    
    @IBAction func sendButtonTapped(_ sender: UIButton) {
        //print(userTextField.text?.count)
        view.endEditing(true)
        boardTextLabel.text = userTextField.text
    }
    
    
    @IBAction func textColorButtonTapped(_ sender: UIButton) {
        
        boardTextLabel.textColor = UIColor(
            red: CGFloat(drand48()),
            green: CGFloat(drand48()),
            blue: CGFloat(drand48()),
            alpha: 1.0)
        
        boardTextLabel.backgroundColor = UIColor(
            red: CGFloat(drand48()),
            green: CGFloat(drand48()),
            blue: CGFloat(drand48()),
            alpha: 1.0)
    }
    
    
    @IBAction func tapGestureTapped(_ sender: UITapGestureRecognizer) {
        
        
        textInputView.isHidden = !textInputView.isHidden
        
        view.endEditing(true)
        
    }

    
    @IBAction func didTextFieldEndOnExit(_ sender: Any) {
        print("이벤트 확인")
    }
    
    

}


// extension

extension BoardViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           self.view.endEditing(true)
       }
       
       func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder() // TextField 비활성화
           return true
       }
}
