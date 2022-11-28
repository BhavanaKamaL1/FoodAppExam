//
//  ViewController.swift
//  FoodAppExam
//
//  Created by DDUKK on 16/11/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var count = 0
    var food = Detail()
  
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let nibs = UINib(nibName: "TableViewCell1", bundle: nil)
        tableView.register(nibs, forCellReuseIdentifier: "cell1")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return food.detail.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell1
        
        cell.title.text = food.detail[indexPath.row].cellTitle
        cell.price.text = food.detail[indexPath.row].cellPrice
        cell.imgView.image = UIImage(named: food.detail[indexPath.row].cellImg)
        return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "view1") as! ViewController1
        
        vc.titl2 = food.detail[indexPath.row].cellTitle
        vc.priz2 = food.detail[indexPath.row].cellPrice
        vc.img2 = food.detail[indexPath.row].cellImg
        present(vc, animated: true)
        
    }
      
}

