//
//  GreeterTests.swift
//  GreeterTests
//
//  Created by yoranLee on 2022/6/22.
//

import XCTest
@testable import Greeter

class GreeterTests: XCTestCase {
    
    var myGreeter: MyGreeter!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        myGreeter = MyGreeter()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testInstanceIsCreated() {
        XCTAssert( (myGreeter != nil), "MyGreeter Instance isn't created")
    }
    
    func testGreetingMsgIsExpected() {

        myGreeter.checkGreetValueExpected(aHour: 6)
        XCTAssertEqual(myGreeter.greeter, "Good morning", "greeter message is wrong")

        myGreeter.checkGreetValueExpected(aHour: 12)
        XCTAssertEqual(myGreeter.greeter, "Good afternoon", "greeter message is wrong")

        myGreeter.checkGreetValueExpected(aHour: 18)
        XCTAssertEqual(myGreeter.greeter, "Good evening", "greeter message is wrong")

        myGreeter.checkGreetValueExpected(aHour: 0)
        XCTAssertEqual(myGreeter.greeter, "Good evening", "greeter message is wrong")
        
        myGreeter.checkGreetValueExpected(aHour: 100)
        XCTAssertEqual(myGreeter.greeter, "data error", "Score computed from guess is wrong")

    }

}
