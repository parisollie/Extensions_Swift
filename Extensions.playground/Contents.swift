import UIKit

/***
 
 Extension

 So this is kind of similar to how Swift extensions work. Extensions, essentially, allow us to add extra
 functionality to our existing classes, structures, or other data types. And so that means if you build
 a project and it was really, really great, but then your boss comes along and says, "Actually, you know what
 we need to do for the next quarter, we need to add all of these extra capabilities." Instead of diving
 into the original code and ripping bits out and switching things around,
 we can simply just extend the functionality of our existing code. So the way that we would create an
 extension would be something like this.

 extension SomeType{
     //Add new functionality
 }

 We would have the extension keyword, and then we can have the name of an existing type,
 so that could be a class, that could be a struct, that could even be a protocol.
 And then inside the extension, we would get to add some new functionality to that type.


 Now, another thing that we can do with extensions that's really handy is we can actually extend our protocols.
 If we simply define our extension, adding in a protocol, instead of a class or a struct, we can't actually
 define the default behavior for the required methods.


 extension SomeProtocol {
     //Define default behaviour
 }
 
 */
extension UIButton {
    func makeCircular(){
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}

let button = UIButton(frame:CGRect(x:0,y:0,width:50,height: 50))
button.backgroundColor = .red
button.makeCircular()


//extension Double {
//    func round (to places: Int) -> Double {
//        let presicionNumber = pow(10,Double(places))
//        var n = self
//        n = n * presicionNumber
//        n.round()
//        n = n / presicionNumber
//        return n
//    }
//}
//
//var myDouble = 3.14159
//myDouble.round(to: 3)
