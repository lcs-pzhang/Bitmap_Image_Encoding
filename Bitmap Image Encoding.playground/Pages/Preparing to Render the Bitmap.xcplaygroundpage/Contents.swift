//: [Previous](@previous) / [Next](@next)
//: # Preparing to Render the Bitmap
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Draw a grid
 Before we decode and render the bitmap, let's draw a grid.
 
 This will make it easier to see the "pixels" when they are rendered later on from the encoded bitmap string.
 */
// Make a canvas
let canvas = Canvas(width: 402, height: 22)

// Shift the origin up a bit and to the right a bit so the borders of each square show up nicely
// HINT: If you're not sure why this next line of code is here, try commenting it out with two // characters. How does the output change?
canvas.translate(byX: 1, byY: 1)

// Make a grid
// Each enlarged pixel on the grid will be 20x20 actual pixels in size
canvas.fillColor = Color.white
canvas.borderColor = Color.black
for x in stride(from: 0, to: 400, by: 20) {
    canvas.drawRectangle(bottomLeftX: x, bottomLeftY: 0, width: 20, height: 20)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

