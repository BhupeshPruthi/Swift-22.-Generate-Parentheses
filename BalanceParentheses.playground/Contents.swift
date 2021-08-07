import UIKit

func generateParenthesis(_ n: Int) -> [String] {
    var output = [String]()
    solve(open: n, close: n, inputStr: "", list: &output)
    return output
}

func solve(open: Int, close: Int, inputStr: String, list: inout [String])  {
    if (open == 0 && close == 0 ) {
        list.append(inputStr)
    }
    
    if (open > 0 ) {
        solve(open: open - 1, close: close, inputStr: inputStr + "(", list: &list)
        
    }
    
    if (open < close ) {
        solve(open: open, close: close - 1, inputStr: inputStr + ")", list: &list)
    }
}

print(generateParenthesis(3))
