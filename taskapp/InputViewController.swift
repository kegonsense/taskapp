//
//  InputViewController.swift
//  taskapp
//
//  Created by 佐藤憲吾 on 2021/08/23.
//

import UIKit

class InputViewController: UIViewController {
    
    //タイトル、内容、日時についてのアウトレット
    @IBOutlet weak var titelTextField: UITextField!
    @IBOutlet weak var contentsTextView: UITextView!
    @IBOutlet weak var dataPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
