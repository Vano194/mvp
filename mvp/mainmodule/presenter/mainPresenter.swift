//
//  mainPresenter.swift
//  mvp
//
//  Created by Иван Галиченко on 22.06.2024.
//

import Foundation

protocol MainViewProtocol : class {
    func setGreeting(greeting : String)
}

protocol MainViewPresenterProtocol : class {
    init(view : MainViewProtocol, person : Person)
    func showGreeting()
}

class MainPresenter : MainViewPresenterProtocol {
    let view : MainViewProtocol
    let person : Person
    
    required init(view: any MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
}

