//: [Previous](@previous)

func filterOutIntegersLessThan5InMyIntegerArrayAndReturnIntegerArray(inputArray: [Int]) -> [Int] {

    var resultArray: [Int] = []
    
    for item in inputArray {
        if(item > 5) { resultArray.append(item) }
    }
    
    return resultArray
}

var myArray : [Int] = [4,5,6,9]

var filteredArray = filterOutIntegersLessThan5InMyIntegerArrayAndReturnIntegerArray(myArray)
filteredArray

//func filterOutByFunctionInMyArrayAndReturnArray<G,B>(inputArray: [G], function: G -> B) -> [B] {
//
//    var resultArray: [B] = []
//    
//    for item in inputArray {
//        if(item > 5) { resultArray.append(item) }
//    }
//    
//    return resultArray
//}


//: [Next](@next)
