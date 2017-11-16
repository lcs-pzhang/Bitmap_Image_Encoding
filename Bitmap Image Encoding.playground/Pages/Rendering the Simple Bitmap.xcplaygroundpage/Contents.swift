//: [Previous](@previous) / [Next](@next)
//: # Rendering the Simple Bitmap
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Decoding the text
 On this page we will decode the 1's and 0's in the string.
 
 The rules are:
 
 * When a 0 is encountered, we'll make the square black.
 * Otherwise (when a 1 is encountered) we'll make the square white.
 
 Run the playground several times.
*/

// Make a canvas
let canvas = Canvas(width: 402, height: 22)

// Make a grid
// NOTE: The code that builds the grid was tucked away in something called a *function* to keep things tidy. We'll learn about functions later.
drawGrid(on: canvas)

// Get the encoded bitmap string
let encodedBitmap = getEncodedBitmapString()

// Iterate over each character in the encoded bitmap string
var x = 0
for character in encodedBitmap {
    
    // Decide what colour of square to draw
    if character == "0" {
        canvas.fillColor = Color.black
    } else {
        canvas.fillColor = Color.white
    }
    
    // Draw the enlarged "pixel"
    canvas.drawRectangle(bottomLeftX: x, bottomLeftY: 0, width: 20, height: 20)
    
    // Increase x so that the next pixel is drawn to the right of this one
    x += 20
}

/*:
 ### Check the results
 Does the output match what you'd expect, based on the values in the encoded string?
 
 How do you know?
 
 Write your ideas in the code comment below.
 */
// I notice that... the squares match the bitmap string.

// Each string is different each time.

// I know this because... it follows the commands for when a square is drawn white and black
/*:
 Now, **remember to commit and push your work**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
