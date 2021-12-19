import XCTest


extension DispatchQueue {

    static func background(delay: Double = 0.0, background: (()->Void)? = nil, completion: (() -> Void)? = nil) {
        DispatchQueue.global(qos: .background).async {
            background?()
            if let completion = completion {
                DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: {
                    completion()
                })
            }
        }
    }

}
class XCUITest101UITests: XCTestCase {
        
    override class func tearDown() {
            self.setUp()
        }

    override func setUp() {
        super.setUp()
       
        let app = XCUIApplication()

        app.activate()
        app.terminate()

    }
    
    override func tearDown() {
        super.tearDown()
    }

    
    
    
    func testRecorded() {
        
        let messageApp = XCUIApplication(bundleIdentifier: "com.apple.calculator")
        messageApp.activate()
        
        //To get/list the id, name information of all elements on the page;
        //print(messageApp.buttons.allElementsBoundByAccessibilityElement)
        messageApp.terminate()

        
        
    }
    
    func islem_baslat() {
            //We write the package name of the program we will test.
            let messageApp = XCUIApplication(bundleIdentifier: "com.target.app")
            messageApp.activate() //Activate the target app
            do {
                sleep(2)
            }
            let app2 = messageApp
            //app2.buttons.element(boundBy: 0).tap()
        
            /*
            app2.textFields.element(boundBy: 0).tap()
            app2.textFields.element(boundBy: 0).typeText("Lorem Ipsum!") //We find the element on the page and print text inside the input with the typeText() function.
            do {
                sleep(1) //We can use sleep() in case of late/early loading of pages.
            }
            app2.textFields.element(boundBy:0).typeText("\n") Checking if the element is clickable/ tapable;
            do {
                sleep(1) 
            }
            
            let button = app2.buttons.element(boundBy: 3)
            do {
                sleep(3)
            }
            if (button.isHittable == false) { //Checking if the element is clickable;
                
            }else{
                //Target button click event:
                //app2.buttons["Button Text"].tap() //Click button event
            }*/
        

        
    }
    
}
