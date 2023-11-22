//
//  SaveUserDefalutsViewController.swift
//  UserDefaultsAutologin
//
//  Created by Thonduru Kavya on 1945-08-30.
//

import UIKit

class SaveUserDefalutsViewController: UIViewController {
    @IBOutlet weak var myLabelText: UILabel!
    var userpass:String=" "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabelText.text=userpass

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
