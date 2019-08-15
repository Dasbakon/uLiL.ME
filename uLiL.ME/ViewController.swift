//
//  ViewController.swift
//  uLiL.ME
//
//  Created by student on 08/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

var novoperfil:Perfil?

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterButton(_ sender: UIButton) {
        if nameTextField.text?.isEmpty == true {
            
            let alertController = UIAlertController(title: "ERRO", message: "Nome está em branco", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
        } else if ageTextField.text?.isEmpty == true {
            
            let alertController = UIAlertController(title: "ERRO", message: "Idade está em branco", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
        } else {
            let interestsViewController = self.storyboard?.instantiateViewController(withIdentifier: "CollectionViewControllerID") as! CollectionViewController

            novoperfil = Perfil.init(name: nameTextField.text!, age: Int(ageTextField.text!)!)
            
            interestsViewController.name = novoperfil?.name
            interestsViewController.age = novoperfil?.age
        }
    }
}

