//
//  ViewController.swift
//  LesAlertes
//
//  Created by bilal on 23/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func addBouton(_ title: String,_ style: UIAlertAction.Style?,_ color: UIColor) -> UIAlertAction {
        let bouton = UIAlertAction(title: title, style: style != nil ? style! : .default) { action in
            
            UIView.animate(withDuration: 1) {
                self.view.backgroundColor = color
            }
        }
        return bouton
    }
    
    
    @IBAction func btnItem(_ sender: UIBarButtonItem) {
        let alerteWithTextfield = UIAlertController(title: "Entrez du text!",
                                                    message: nil,
                                                    preferredStyle: .alert)
        alerteWithTextfield.addTextField { text in
            text.placeholder = "Écrivez ici"
        }
        
        alerteWithTextfield.addAction(UIAlertAction(title: "Annuler", style: .destructive, handler: nil))
        alerteWithTextfield.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            if let text = alerteWithTextfield.textFields?.first?.text {
                self.lblText.text = text
            }
        }))
        present(alerteWithTextfield, animated: true, completion: nil)
    }
    
    
    
    @IBAction func btnAlert(_ sender: Any) {
        let controller = UIAlertController(title: "Alerte!",
                                           message: "Felicitation l'alerte s'affiche.",
                                           preferredStyle: .alert)
        
        let firstBtn = UIAlertAction(title: "Jaune", style: .default) { act in
            UIView.animate(withDuration: 1) {
                self.view.backgroundColor = .systemYellow
            }
        }
        
        let secondBtn = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        let thirdBtn = UIAlertAction(title: "destruction style", style: .destructive, handler: nil)
        
        controller.addAction(firstBtn)
        controller.addAction(secondBtn)
        controller.addAction(thirdBtn)

        present(controller, animated: true, completion: nil)
    }
    
    
    
    @IBAction func btnActionSheet(_ sender: Any) {
        let actionSheet = UIAlertController(title: "modifie la couleur du background",
                                            message: "choisissez la couleur",
                                            preferredStyle: .actionSheet)
        
        let annuler = UIAlertAction(title: "Annuler",
                                    style: .cancel,
                                    handler: nil)
        
        actionSheet.addAction(addBouton("Gris", nil, .lightGray))
        actionSheet.addAction(addBouton("Vert", nil, .systemGreen))
        actionSheet.addAction(addBouton("Jaune", nil, .systemYellow))
        actionSheet.addAction(addBouton("Rouge", nil, .systemRed))
        if view.backgroundColor != .systemBackground {
            actionSheet.addAction(addBouton("Reglage par défaut", .destructive, .systemBackground))
        }
        
        let device = UIDevice.current.userInterfaceIdiom
        if device == .pad {
            if let popover = actionSheet.popoverPresentationController {
                popover.sourceView = self.view
                
                popover.sourceRect = CGRect(x: self.view.center.x,
                                            y:  self.view.center.y, width: 0, height: 0)
            }
        }
        
        actionSheet.addAction(annuler)
        present(actionSheet, animated: true, completion: nil)
    }
}

