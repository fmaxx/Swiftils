import UIKit
import XCTest
import Swiftils

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Math_roundTo() {
        // This is an example of a functional test case.
        XCTAssertTrue(Math.roundTo(0.1, decimalPlaces: 0) == 0.0)
        XCTAssertTrue(Math.roundTo(-1.5, decimalPlaces: 0) == -2.0)
        XCTAssertTrue(Math.roundTo(1.4, decimalPlaces: 0) == 1.0)
        XCTAssertTrue(Math.roundTo(1.5, decimalPlaces: 0) == 2.0)
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
