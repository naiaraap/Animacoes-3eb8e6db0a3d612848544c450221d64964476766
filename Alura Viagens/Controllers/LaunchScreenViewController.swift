//
//  LaunchScreenViewController.swift
//  Alura Viagens
//
//  Created by Naiara de Almeida Pantuza on 30/08/23.
//  Copyright © 2023 Alura. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {
  
  // MARK: - IBOutlets
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var titleLabelTopConstraint: NSLayoutConstraint!
  
    // MARK: - Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
      self.initAnimation()
    }
  }
    
  func initAnimation() {
    titleLabelTopConstraint.constant = 300
    UIView.animate(withDuration: 1.0, animations: {
      self.view.layoutIfNeeded()
    }) { (success) in
      self.goToHome()
    }
  }
  
  func goToHome() {
    let tabBar = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabBar") as! UITabBarController
    let navigation = UINavigationController(rootViewController: tabBar)
    navigation.setNavigationBarHidden(true, animated: false)
    navigation.modalPresentationStyle = .fullScreen
    present(navigation, animated: true, completion: nil)
  }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
