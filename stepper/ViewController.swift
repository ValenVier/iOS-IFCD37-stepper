//
//  ViewController.swift
//  stepper
//
//  Created by Javier Rodríguez Valentín on 23/09/2021.
//
//página: https://developer.apple.com/documentation/uikit/uialertcontroller/

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var step: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        step.minimumValue = 1
        step.maximumValue = 10
        step.stepValue = 1
        
    }
    
    
    @IBAction func stepAction(_ sender: Any) {
        print("El step vale \(step.value)")
        
        if step.value == step.maximumValue{
            alerta(msg: "Valor máximo")
        }
        if step.value == step.minimumValue{
            alerta(msg: "Valor mínimo")
        }
        
    }
    
    func alerta(msg:String){
        let alert = UIAlertController(title: "\(msg)", message: "Stepper = \(step.value)", preferredStyle: .alert) //alert
        alert.addAction(UIAlertAction(title: NSLocalizedString("Aceptar", comment: "Default  action"), style: .default, handler: { _ in //botón de aceptar
            NSLog("The \"OK\" alert occured.") //sacar comentario en consola
        }))
        //Sacar el alert
        self.present(alert, animated: true, completion: alertCompletado)//en completion podemos dejarlo con nil por defecto o poner una función sin paréntesis por ejemplo: (...completion: alerta) -> siendo alerta otra función diferente. El completion se ejecuta cuando se ejecuta el alert
    }
    
    func alertCompletado(){
        print("Alert Completado")
    }
}
