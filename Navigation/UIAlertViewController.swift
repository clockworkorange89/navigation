//
//  UIAlertViewController.swift
//  Navigation
//
//  Created by Алексей Маяков on 10.05.2021.
//

import UIKit

class UIAlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let vc = UIAlertController(title:  "Уведомление", message: "Установить обновление", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel) {
            _ in
        }
        
        let okAction = UIAlertAction(title: "Ок", style: .default) {
            _ in
            print("Обновления установлены на  телефон")
        }
        vc.addAction(cancelAction)
        vc.addAction(okAction)
        
        present(vc, animated: true, completion: nil)
   }
}
