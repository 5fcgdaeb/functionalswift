var myArray : [Int] = [3,4,5]

//////////////////////////////////////////////////////////

func doubleTheElementsOfMyIntegerArray(inputArray: [Int]) -> [Int] {
    
    var resultArray: [Int] = []
    
    for integer in inputArray {
        
        resultArray.append(integer * 2)
    }
    
    return resultArray
}

//////////////////////////////////////////////////////////

protocol IntElementMutator {
    func mutateIntElement(inputElement: Int) -> Int
}

func applyAFunctionToElementsOfMyIntegerArrayAndReturnAnIntegerArray(inputArray: [Int], mutator: IntElementMutator) -> [Int] {
    
    var resultArray: [Int] = []
    
    for integer in inputArray {
        
        resultArray.append(mutator.mutateIntElement(integer))
    }
    
    return resultArray
}

struct AddFiveMutator : IntElementMutator {
    func mutateIntElement(inputElement: Int) -> Int {
        return inputElement + 5
    }
}

let fiveMutator = AddFiveMutator()
var mutatedArray = applyAFunctionToElementsOfMyIntegerArrayAndReturnAnIntegerArray(myArray, mutator: fiveMutator)
mutatedArray

//////////////////////////////////////////////////////////

protocol ElementMutator {
    func mutateIntElement<T>(inputElement: Int) -> T
}

func applyAFunctionToElementsOfMyIntegerArrayAndReturnAnArray<T>(inputArray: [Int], mutator: ElementMutator) -> [T] {
    
    var resultArray: [T] = []
    
    for integer in inputArray {
        
        resultArray.append(mutator.mutateIntElement(integer))
    }
    
    return resultArray
}

//struct GreaterThanFourMutator : ElementMutator {
//    func mutateIntElement<String>(inputElement: Int) -> String {
//        return "Abc" ?? ""
//    }
//}

//let fiveMutator = AddFiveMutator()
//var mutatedArray = applyAFunctionToElementsOfMyIntegerArrayAndReturnAnIntegerArray(myArray, mutator: fiveMutator)
//mutatedArray

//////////////////////////////////////////////////////////


//func applyAFunctionToElementsOfMyIntegerArrayAndReturnAnArray<G>(inputArray: [Int], fonksiyon: Int -> G) -> [G] {
//    
//    var resultArray: [G] = []
//    
//    for gValue in inputArray {
//        
//        resultArray.append(fonksiyon(gValue))
//    }
//    
//    return resultArray
//    
//}
//
//func applyAFunctionToElementsOfMyArrayAndReturnAnArray<G,B>(inputArray: [B], fonksiyon: B -> G) -> [G] {
//    
//    var resultArray: [G] = []
//    
//    for gValue in inputArray {
//        
//        resultArray.append(fonksiyon(gValue))
//    }
//    
//    return resultArray
//    
//}
//
//var myArray : [Int] = [3,4,5]
//
//var doubledArray = doubleTheElementsOfMyIntegerArray(myArray)
//doubledArray
//
//var funcedArray = applyAFunctionToElementsOfMyIntegerArrayAndReturnAnIntegerArray(myArray) { x in x + 5 }
//funcedArray
//
//var funcedArray2 = applyAFunctionToElementsOfMyIntegerArrayAndReturnAnArray(myArray) { x in return x > 4 }
//funcedArray2
//
//var myArray2 : [String] = ["ABC", "DE", "EFGHFH"]
//
//var funcedArray3 = applyAFunctionToElementsOfMyArrayAndReturnAnArray(myArray2) { x in return x.characters.count }
//funcedArray3
