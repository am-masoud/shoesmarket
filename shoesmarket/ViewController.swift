//
//  ViewController.swift
//  shoesmarket
//
//  Created by amir masoud mohtaji on 6/26/17.
//  Copyright © 2017 amir masoud mohtaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollview: UIScrollView!
    var x = 0, y = 0
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn22: UIButton!
    @IBOutlet weak var btn33: UIButton!
    @IBOutlet weak var btn44: UIButton!
    @IBAction func btn1(_ sender: AnyObject) {
        var x = 0
    }
    @IBAction func btn2(_ sender: AnyObject) {
        var x = 1
        var y = 0
    }
    @IBAction func btn3(_ sender: AnyObject) {
        var x = 2
        var y = 1
    }
    @IBAction func btn4(_ sender: AnyObject) {
        var x = 3
        var y = 2
    }
    func append(numberofimage : Int) {
        let image : UIImage? = UIImage(named: "shoes\(x).png")
        let imageview = UIImageView(image: image)
        images.append(imageview)
        
    }
    var images = [UIImageView]()
    var newx : CGFloat = 0.0
    var contentwidth : CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
            var image : UIImage?
        var i = 0
        var z = x
        if x == 0 {
            for z in 0 ... 3 {
                image = UIImage(named: "shoes\(x+1).png")
                let imageview = UIImageView(image: image)
                images.append(imageview)
                scrollview.addSubview(imageview)
                let scrollwidth = scrollview.frame.size.width
                let scrollheight = scrollview.frame.size.height
                newx = scrollwidth/2 + scrollwidth * CGFloat(x)
                imageview.frame = CGRect(x: newx - 150, y: scrollheight/2 - 150, width: 300, height: 300)
                contentwidth += newx
                
            }
        }else{
            for z in x ... 4{
                image = UIImage(named: "shoes\(z+1).png")
                let imageview = UIImageView(image: image)
                images.append(imageview)
                scrollview.addSubview(imageview)
                let scrollwidth = scrollview.frame.size.width
                let scrollheight = scrollview.frame.size.height
                newx = scrollwidth/2 + scrollwidth * CGFloat(z)
                imageview.frame = CGRect(x: newx - 150, y: scrollheight/2 - 150, width: 300, height: 300)
                contentwidth += newx
                for i in 0 ... y{
                 image = UIImage(named: "shoes\(i+1).png")
                 let imageview2 = UIImageView(image: image)
                    images.append(imageview2)
                    scrollview.addSubview(imageview2)
                    imageview2.frame = CGRect(x: newx - 15, y: scrollheight/2, width: 300, height: 300)
                    contentwidth += newx
                }
            }
        }
        
            contentwidth -= scrollview.frame.size.width * 4.0
            scrollview.contentSize = CGSize(width: contentwidth, height:scrollview.frame.size.height)
            
        }
    }

    


