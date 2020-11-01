//
//  ViewController.swift
//  Swift5Keyboard
//
//  Created by 山本怜 on 2020/11/01.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passWordLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passWordTextField.delegate = self
       
    }

    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        
        userNameLabel.text = userNameTextField.text
        passWordLabel.text = passWordTextField.text
        
    }
    
    //タッチでキーボードを閉じる
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //リターンキーを押した時にキーボードを閉じる
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //キーボードが閉じる
        textField.resignFirstResponder()
    }
    

}

