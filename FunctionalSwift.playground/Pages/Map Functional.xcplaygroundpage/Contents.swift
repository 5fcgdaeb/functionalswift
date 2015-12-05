var myArray : [Int] = [3,4,5]

// 1) //////////////////////////////////////////////////////////

func doubleTheElementsOfMyIntegerArray(inputArray: [Int]) -> [Int] {

    var resultArray: [Int] = []
    
    for integer in inputArray {
    
        resultArray.append(integer * 2)
    }
    
    return resultArray
}

var doubledArray = doubleTheElementsOfMyIntegerArray(myArray)
doubledArray

// 2) ////////////////////////////////////////////////////////

func applyAFunctionToElementsOfMyIntegerArrayAndReturnAnIntegerArray(inputArray: [Int], theFunction: Int -> Int) -> [Int] {
    
    var resultArray: [Int] = []
    
    for integer in inputArray {
        
        resultArray.append(theFunction(integer))
    }
    
    return resultArray
}

var funcedArray = applyAFunctionToElementsOfMyIntegerArrayAndReturnAnIntegerArray(myArray) { x in x + 5 }
funcedArray

// 3) ////////////////////////////////////////////////////////

func applyAFunctionToElementsOfMyIntegerArrayAndReturnAnArray<G>(inputArray: [Int], theFunction: Int -> G) -> [G] {
    
    var resultArray: [G] = []
    
    for gValue in inputArray {
        
        resultArray.append(theFunction(gValue))
    }
    
    return resultArray
    
}

var funcedArray2 = applyAFunctionToElementsOfMyIntegerArrayAndReturnAnArray(myArray) { x in return x > 4 }
funcedArray2

// 4) ////////////////////////////////////////////////////////

func applyAFunctionToElementsOfMyArrayAndReturnAnArray<G,B>(inputArray: [B], theFunction: B -> G) -> [G] {
    
    var resultArray: [G] = []
    
    for gValue in inputArray {
        
        resultArray.append(theFunction(gValue))
    }
    
    return resultArray
    
}

var myArray2 : [String] = ["ABC", "DE", "EFGHFH"]

var funcedArray3 = applyAFunctionToElementsOfMyArrayAndReturnAnArray(myArray2) { x in return x.characters.count }
funcedArray3


// 5) Actual Map Implementaiona 
var funcedArray4 = myArray2.map { x in return x.characters.count }
funcedArray4



