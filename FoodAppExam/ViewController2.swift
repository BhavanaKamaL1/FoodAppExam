//
//  ViewController2.swift
//  FoodAppExam
//
//  Created by DDUKK on 16/11/22.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var price3: UILabel!
    @IBOutlet weak var foodName: UILabel!
    
    public var address1 = ""
    public var prz = ""
    public var fd = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submit(_ sender: Any) {
        
    }
    
    @IBAction func cancel(_ sender: Any) {

        let uiAlert = UIAlertController(title: "Alert", message: "Are you sure? You want to cancel this order.?", preferredStyle: UIAlertController.Style.alert )
        uiAlert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.cancel, handler: nil))
        uiAlert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: nil))
        self.present(uiAlert, animated: true)
        
    }
}
