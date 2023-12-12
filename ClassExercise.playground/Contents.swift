import UIKit

// Classes are slow in comparison with struct!
// Classes are stored in the Heap (memory)
// Reference types point to an object in memory and update the object in memory


// All of the data nedeed for some screen
class ScreenViewModel {
    
    let title: String
    private(set) var showButton: Bool
    
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // this runs as the object is being removed from memory
        // Structs do NOT have deinit! bc they are value types (copy and paste new object)
    }
    
    
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
}

// Notice that we are using a "let", becase:
// the object itself is not changing
// the data inside the object is changing
let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: false)
//viewModel.showButton = false
let value = viewModel.showButton

viewModel.hideButton()
viewModel.updateShowButton(newValue: false)
