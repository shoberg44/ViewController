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
        print("First Load!")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("First VC Appearing") //there is a difference
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("view disaprear")
    }
    @IBAction func newButton(_ sender: UIButton) { //to make manual segue's do stuff
        performSegue(withIdentifier: "BlueSegue", sender: self)
        //var chicken = textOutlet.text
        
    }
    
    //this function is performed automaticly when performing segue is called
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "BlueSegue"{
            let nvc = segue.destination as! ViewControllerBlue //force dsowncasts as ViewControllerBLue nvc stands for next view controller
            nvc.name = textOutlet.text! //alows access within desitnation
        }
    }
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
        print("unwind")
        let svc = svc.source as! ViewControllerRed
        svc.textOutRed.text!
    }
    /*
    click yellow dot -> go to the inspectior pane -> identity inspector -> enter class name
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
     
     
     step 1 - create unwind function
     step 2 - drag yellow button to exit to create a segue
     step 3 - name segue
     step 4 - make view will disappear function
     step 5 - run new segue
     step 6 - create unwind func
     step 7 - combust
    */

}
