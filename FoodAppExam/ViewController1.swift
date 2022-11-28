//
//  ViewController1.swift
//  FoodAppExam
//
//  Created by DDUKK on 16/11/22.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    
    public var img2 = ""
    public var titl2 = ""
    public var priz2 = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelTitle.text = titl2
        labelPrice.text = priz2
        Image.image = UIImage(named: img2)
        
    }
    
    @IBAction func placeOrder(_ sender: Any) {
        let vc1 = storyboard?.instantiateViewController(withIdentifier: "view2") as! ViewController2
        present(vc1, animated: true)
        
        
    }
    
    

}
