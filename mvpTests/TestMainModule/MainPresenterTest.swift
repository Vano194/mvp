//
//  MainPresenterTest.swift
//  mvpTests
// делал вроде все как в видосе только меняя названия переменных чтобы вникать а не писать как робот но видимо в них и запутался раз ничего не появляется на симуляторе.Раз ты это открыл то уже не забей и разберись с этим + сделай 2 видос по mvp.В общем удачи будущий я
//  Created by Иван Галиченко on 27.06.2024.
//

import XCTest
@testable import mvp

class MockView: MainViewProtocol {
    var titleTest : String?
    func setGreeting(greeting: String) {
        self.titleTest = greeting
    }
}

final class MainPresenterTest: XCTestCase {
    
    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!
    

    override func setUpWithError() throws {
        view = MockView()
        person = Person(firstName: "Bar", lastName: "Baz")
        presenter = MainPresenter(view: view, person: person)
        
    }

    override func tearDownWithError() throws {
        view = nil
        person = nil
        presenter = nil
    }

    func testModuleIsNotNil() {
        XCTAssertNotNil(view, "view is not nil")
    }

    func testview() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "Bar Baz")
    }
  
    func testPersonMode () {
        XCTAssertEqual(person.firstName, "Bar")
        XCTAssertEqual(person.lastName, "Baz")
    }
}
