import Foundation

/*:
# Authoring Structures
 
 Refer to this [list of formulas for various geometric figures](https://www.eqao.com/en/assessments/grade-9-math/assessment-docs/g9-formula-sheet-academic.pdf) (from the Grade 9 EQAO Mathematics assessment).
 
 Select two 2D shapes, and author a structure that:
 
 * describes the shape
 * reports on the area
 * reports on the perimeter

 Select two 3D shapes, and author a structure that:

 * describes the shape
 * reports on the surface area
 * reports on the volue

 Finally:

 * at least three of your formulas must involve a power
 * at least two of your formulas must involve a fraction
 * at least three of your formulas must use 𝝿
 
 Be sure to:

 * make good choices for structure names and property names
 * test your structures by creating instances, and trying the properties out to be sure they provide correct results
 
 Remember to *commit* and *push* your work regularly – at a minimum after defining each structure.
 
 */
// Begin your work here...

//===================================2D Parallelogram====================================
struct Parallelogram {
    
    // MARK: Properties
    var length: Double
    var height: Double
    
    // Computed property to return the raw area
    var area: Double {
        return length * height
    }
    
    var perimeter: Double{
        return 2*(length + height)
    }
    
    // Computed property to return a description of the area
    var areaDescription: String {
        return "The area of the parallelogram is " + String(format: "%.1f", area) + " square units."
    }
    
    var perimeterDescription: String{
        return "The perimeter of the parallelogram is " + String(format: "%.1f", perimeter) + " units."
    }
    
}

// Create a rectangle instance
var someParallelogram = Parallelogram(length: 10, height: 4)

//describe the shape
print("The shape is a parallelogram")

// Report on the area?
print(someParallelogram.areaDescription)

//report on the perimeter
print(someParallelogram.perimeterDescription)


//===================================2D Triangle====================================
struct Triangle {
    
    // MARK: Properties
    var side1: Double
    var side2: Double
    var side3: Double
    var heightRelatedToSide1: Double
    
    // Computed property to return the raw area
    var area: Double {
        return side1 * heightRelatedToSide1 * 0.5
    }
    
    var perimeter: Double{
        return side1 + side2 + side3
    }
    
    // Computed property to return a description of the area
    var areaDescription: String {
        return "The area of the triangle is " + String(format: "%.1f", area) + " square units."
    }
    
    var perimeterDescription: String{
        return "The perimeter of the triangle is " + String(format: "%.1f", perimeter) + " units."
    }
    
}

// Create a rectangle instance
var someTriangle = Triangle(side1:3, side2: 4, side3:5, heightRelatedToSide1: 5)

//describe the shape
print("=======================================================")
print("The shape is a triangle")

// Report on the area?
print(someTriangle.areaDescription)

//report on the perimeter
print(someTriangle.perimeterDescription)

//===================================3D Cylinder====================================
struct Cylinder {
    
    // MARK: Properties
    var radius: Double
    var height: Double
    
    // Computed property to return the raw area
    var surfaceArea: Double {
        return 2 * Double.pi * pow(radius, 2) + 2 * Double.pi * radius * height
    }
    
    var volume: Double{
        return Double.pi * pow(radius, 2) * height
    }
    
    // Computed property to return a description of the area
    var surfaceAreaDescription: String {
        return "The surfaceArea of the cylinder is " + String(format: "%.1f", surfaceArea) + " square units."
    }
    
    var volumeDescription: String{
        return "The volume of the cylinder is " + String(format: "%.1f", volume) + " units cubed."
    }
    
}

// Create a rectangle instance
var someCylinder = Cylinder(radius:5, height:10)

//describe the shape
print("=======================================================")
print("The shape is a Cylindere")

// Report on the area?
print(someCylinder.surfaceAreaDescription)

//report on the perimeter
print(someCylinder.volumeDescription)
/*:
 [Previous: Area Example - Rectangle](@previous) | Page 4
 */
