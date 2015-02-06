import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    return cheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

let favoriteCheese = "My favorite cheese is cheddar." 

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array

let five = [5]
let newArray = numberArray + [5]

// WORK HERE

let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary

var newDict = numberDictionary
newDict[5] = "five"
newDict

// WORK HERE

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE


for numberRange in 1...10 {
    println(numberRange)
}



// I'm not sure how to print out the range



// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE

for closedRange in 1..<10 {
    println(closedRange)
}



let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var drinksArray = [String]()
    
    for character in characters {
        drinksArray.append(character["favorite drink"]!)
    }
    
    return drinksArray
}
   



    /*
    
    Functions
    
    */
    
    // Make a function that inputs an array of strings and outputs the strings separated by a semicolon
    
    let strings = ["milk", "eggs", "bread", "challah"]
    
    // WORK HERE - make your function and pass `strings` in
    var newString = strings
    
    func groceries(Array: String){
        for string in newString{
            if string == "," {
                newString.append(";")
            }
            
        }
        //println \(strings)
       println("\(newString)")
    }




    let expectedOutput = "milk;eggs;bread;challah"
    
    /*
    
    Closures
    
    */
    
    let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]
    
    // Use a closure to sort this array alphabetically
    
    // WORK HERE

func orderCereal(s1: String, s2: String) -> Bool{
    return s1 < s2
}

sorted(cerealArray,orderCereal)

    let cerealSorted = sorted(cerealArray)



