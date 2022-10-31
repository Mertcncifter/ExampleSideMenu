//
//  HomeController.swift
//  ExampleSideMenu
//
//  Created by mert can çifter on 31.10.2022.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: Properties
    
    var delegate: HomeControllerDelegate?
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    
    // MARK: Selectors
    
    @objc func handleMenuToggle(){
        delegate?.handleMenuToggle()
    }
    

    // MARK: Helpers
    
    func configureNavigationBar(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}



