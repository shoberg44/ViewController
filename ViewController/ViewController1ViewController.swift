//
//  ViewController1ViewController.swift
//  ViewController
//
//  Created by STEVEN HOBERG on 9/27/22.
//

import UIKit

class ViewController1ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func newButton(_ sender: UIButton) {
        performSegue(withIdentifier: "BlueSegue", sender: self)
        //var chicken = textOutlet.text
        
    }
    //this function is performed automaticly when performing segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "BlueSegue"{
            let nvc = segue.destination as! ViewControllerBlue //force dsowncasts as ViewControllerBLue nvc stands for next view controller
            nvc.name = textOutlet.text! //alows access within desitnation
        }
    }
    /*
    click yellow dot -> go to the inspectior pane -> identity inspector -> enter class name
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
