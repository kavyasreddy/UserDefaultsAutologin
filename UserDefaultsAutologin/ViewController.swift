//
//  ViewController.swift
//  UserDefaultsAutologin
//
//  Created by Thonduru Kavya on 1945-08-30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var UsernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let logindetails = UserDefaults.standard.value(forKey: "username")
        if logindetails != nil {
            UsernameTextField.text = UserDefaults.standard.value(forKey: "username") as? String
            PasswordTextField.text = UserDefaults.standard.value(forKey: "Password") as? String
        }
    }

    @IBAction func LoginClicked(_ sender: Any) {
        let alert = UIAlertController(title: "Saving", message: "Do you want to save the Login Details", preferredStyle: .alert)
        let yesbutton = UIAlertAction(title: "yes", style: .default) { (action) in
            UserDefaults.standard.set(self.UsernameTextField.text!, forKey: "username")
            UserDefaults.standard.set(self.PasswordTextField.text!, forKey: "Password")
            self.performSegue(withIdentifier: "segue", sender: self)
        }
        let nobutton = UIAlertAction(title: "no", style: .default) { (action) in
            print("You Have Not Saved Login Details")
            self.performSegue(withIdentifier: "segue", sender: self)
        }
        alert.addAction(yesbutton)
        alert.addAction(nobutton)
        present(alert, animated: true, completion: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let desVC = segue.destination as! SaveUserDefalutsViewController
            if let username = UsernameTextField.text {
                desVC.userpass = "Hello, \(username)"
            }
        }
    }
}

