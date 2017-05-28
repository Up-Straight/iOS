//
//  GymViewController.swift
//  UpStraight
//
//  Created by Stefan Iarca on 27/05/2017.
//  Copyright © 2017 Stefan Iarca. All rights reserved.
//

import UIKit

class GymViewController: UIViewController {

    @IBOutlet weak var threeCircle: UIView!
    @IBOutlet weak var oneCircle: UIView!
    @IBOutlet weak var twoCircle: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCircles(circle: twoCircle)
        setupCircles(circle: oneCircle)
        setupCircles(circle: threeCircle)
        // Do any additional setup after loading the view.
    }
    
    private func setupCircles(circle:UIView){
        circle.layer.cornerRadius = twoCircle.bounds.size.height / 2
        circle.layer.borderColor = UIColor(colorLiteralRed: 57.0/255.0, green: 222.0/255.0, blue: 135.0/255.0, alpha: 1.0).cgColor
        circle.layer.borderWidth = 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
