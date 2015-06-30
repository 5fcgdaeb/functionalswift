func doubleTheElementsOfMyIntegerArray(inputArray: [Int]) -> [Int] {

    var resultArray: [Int] = []
    
    for integer in inputArray {
    
        resultArray.append(integer * 2)
    }
    
    return resultArray
}

func applyAFunctionToElementsOfMyIntegerArrayAndReturnAnIntegerArray(inputArray: [Int], fonksiyon: Int -> Int) -> [Int] {
    
    var resultArray: [Int] = []
    
    for integer in inputArray {
        
        resultArray.append(fonksiyon(integer))
    }
    
    return resultArray
}

func applyAFunctionToElementsOfMyIntegerArrayAndReturnAnArray<G>(inputArray: [Int], fonksiyon: Int -> G) -> [G] {
    
    var resultArray: [G] = []
    
    for gValue in inputArray {
        
        resultArray.append(fonksiyon(gValue))
    }
    
    return resultArray
    
}

func applyAFunctionToElementsOfMyArrayAndReturnAnArray<G,B>(inputArray: [B], fonksiyon: B -> G) -> [G] {
    
    var resultArray: [G] = []
    
    for gValue in inputArray {
        
        resultArray.append(fonksiyon(gValue))
    }
    
    return resultArray
    
}

var myArray : [Int] = [3,4,5]

var doubledArray = doubleTheElementsOfMyIntegerArray(myArray)
doubledArray

var funcedArray = applyAFunctionToElementsOfMyIntegerArrayAndReturnAnIntegerArray(myArray) { x in x + 5 }
funcedArray

var funcedArray2 = applyAFunctionToElementsOfMyIntegerArrayAndReturnAnArray(myArray) { x in return x > 4 }
funcedArray2

var myArray2 : [String] = ["ABC", "DE", "EFGHFH"]

var funcedArray3 = applyAFunctionToElementsOfMyArrayAndReturnAnArray(myArray2) { x in return x.characters.count }
funcedArray3



