//
//  ViewController.swift
//  ImageLoad
//
//  Created by Akash Khan on 10/22/19.
//  Copyright © 2019 Akash Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // let imageUrl = URL(string: "https://images.unsplash.com/photo-1496857239036-1fb137683000?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")!
        let dataUrl = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
        let task = URLSession.shared.dataTask(with: dataUrl)
        {(data,response,error) in
            if error == nil {
               // let loadImage = UIImage(data: data!)
               // self.myImage.image = loadImage
                let returnData = String(data: data!,encoding: .utf8)
                print(returnData ?? "value not found!")
                
            }
            
        }
        task.resume();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




