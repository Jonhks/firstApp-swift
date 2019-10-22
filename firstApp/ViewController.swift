//
//  ViewController.swift
//  firstApp
//
//  Created by Jonh Parra on 22/10/19.
//  Copyright © 2019 Jonh Parra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var texto: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Cargada!")
        // Do any additional setup after loading the view.
    }

    @IBAction func boton(_ sender: UIButton) {
        self.texto.resignFirstResponder()
        let alerta = UIAlertController(title: "Bienvenido", message: texto.text, preferredStyle: .alert)
        let accion = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alerta.addAction(accion)
        present(alerta, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

