
var goldBars = 0

let unlockTreasureChest = {
    (inventory: inout Int) -> Void in
        inventory += 100
    }

unlockTreasureChest(&goldBars)
print(goldBars)
unlockTreasureChest(&goldBars)
