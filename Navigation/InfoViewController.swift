//
//  InfoViewController.swift
//  Navigation
//
//  Created by Алексей Маяков on 10.05.2021.
//

import UIKit

private let vc = UIAlertController(title:  "Уведомление", message: "Установить обновление", preferredStyle: .alert)


class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    
  
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel) {
            _ in
            print("Пользователь отменил обновления")
        }
        
        let okAction = UIAlertAction(title: "Ок", style: .default) {
            _ in
            print("Обновления установлены на  телефон")
        }
        vc.addAction(cancelAction)
        vc.addAction(okAction)
        
        //present(vc, animated: true, completion: nil)
   }
    @IBAction func Click(_ sender: Any) {
        present(vc, animated: true, completion: nil)
    }

}
