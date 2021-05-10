//
//  FeedViewController.swift
//  Navigation
//
//  Created by Алексей Маяков on 09.05.2021.
//


import UIKit

struct Post {
   let postTittle:String
}

var value = Post(postTittle: "Новый пост 5")


class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
   }
    //Пердача данных из одного Viucontroller  в другой
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "settings2" else {
            return
        }
        guard let vc = segue.destination as? PostViewController else {
            return
        }
        vc.navigationItem.title = Navigation.value.postTittle
    }
}




