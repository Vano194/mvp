//
//  ModuleBuilder.swift
//  mvp
//
//  Created by Иван Галиченко on 22.06.2024.
//

import UIKit

protocol Builder {
    static func craeteMainModule() -> UIViewController
}

class ModelBuilder: Builder {
    static func craeteMainModule() -> UIViewController {
        let model = Person(firstName: "david", lastName: "blane")
        let view = MainViewController()
        let presenter = MainPresenter(view: view, person: model)
        view.presenter = presenter
        return view
    }
    
    
}
