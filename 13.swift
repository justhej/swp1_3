// 1.3.1 Looping all the sides
//////////////////////////// Noob:

var gems = 0

while gems < 4 {
    moveForward()
    if isOnGem {
        collectGem()
        gems += 1
    }
    
    if isBlocked {
        turnRight()
    } 
}


////////////////////////////
// Loop Dogg:

for step in 1...13 {
    moveForward()
    if isOnGem{
        collectGem()
    }
    if isBlocked{
        turnRight()
            }
}

////////////////////////////
// Just for fun:

for step in 1...13{
    moveForward()
    if [1, 5, 9, 13].contains(step){
        collectGem()
    }
    if [4, 8, 12].contains(step){
        turnRight()
    }
}

////////////////////////////
// 1.3.2 To the edge and back
// first try:

var swis = 0 

while swis < 4 {
    moveForward()
    if isBlocked {
        turnRight()
    }
    if isOnClosedSwitch{
        toggleSwitch()
        swis += 1
    }
}

////////////////////////////
// better

for i in 1...16{
    moveForward()
    if isBlocked{
        turnLeft()
        turnLeft()
        toggleSwitch()
    }
    if i == 4 || i == 8 || i == 12 {
        turnRight()
    }
}

////////////////////////////
// modular

func moveTwice(){
    moveForward()
    moveForward()
}

func turnAround(){
    turnLeft()
    turnLeft()
}

func solveOne(){
    moveTwice()
    toggleSwitch()
    turnAround()
    moveTwice()
}

solveOne()
solveOne()
turnLeft()
solveOne()
solveOne()

////////////////////////////
// Extra-modular:

func solveTwo(){
    for step in 1...8{
        moveForward()
        if isOnClosedSwitch{
            toggleSwitch()
            turnLeft()
            turnLeft()
        }
    }
}

solveTwo()
turnLeft()
solveTwo()



////////////////////////////
// 1.3.3 Loop jumper 
// starter: 

var gems = 0

while gems < 5{
    solveRow()
}


func solveRow(){
    moveForward()
    turnLeft()    
    moveForward()
    moveForward()
    collectGem()
    gems += 1
    turnRight()
}

////////////////////////////
// Loop Dogg


func solve(){
    moveForward()
    turnLeft()
    moveForward()
    moveForward()
    collectGem()
    turnRight()
}

for i in 1...5{
    solve()
}

////////////////////////////
// Directionally controlled

var gems = 0
while gems < 5 {
    if isBlocked && isBlockedRight {
        turnLeft()
    }
    if isOnGem{
        collectGem()
        gems += 1
    }
    if isBlockedLeft && isBlocked {
        turnRight()
    }
    if isBlocked && !isBlockedLeft{
        turnLeft()
    }
    moveForward()
}

///////////////////////////////
// 1.3.4 Branch out
// Loop Dogg:

func moveDist(dist: Int) {
    for step in 1...dist{
        moveForward()
    }
}

func solveRow(){
    moveDist(dist: 2)
    turnRight()
    moveForward()
    moveDist(dist: 6)
    turnLeft()
    turnLeft()
    toggleSwitch()
    moveDist(dist: 7)
    turnRight()
    }
    
    
    

for k in 1...3{
    solveRow()
}

///////////////////////////////////
// See you in a while

var steps = 0; var swis = 0
while swis < 3 {
    moveForward()
    steps += 1
    if [2, 18, 34].contains(steps){
        turnRight()
    }
    if isOnClosedSwitch{
        toggleSwitch()
        swis += 1
        turnLeft()
        turnLeft()
    }
    if isBlocked{
        turnRight()
    }
}

///////////////////////////////////

// 1.3.5 Gem farm
// Noob-like

func turnAround(){
    turnLeft(); turnLeft()
}

func pattern(){
    turnLeft()
    moveForward()
    toggleSwitch()
    moveForward()
    toggleSwitch()
    turnAround()
    while !isBlocked{
        moveForward()
        if isOnGem{
            collectGem()
        }
    }
    turnAround()
    moveForward()
    moveForward()
    turnRight()
    moveForward()
}

pattern()
pattern()
pattern()

///////////////////////////////////
// pro-like 

func turnAround() { 
    turnLeft(); turnLeft() 
}

func solveLeft() { 
    turnLeft()
    while true { 
        moveForward() 
        if isOnClosedSwitch { 
            toggleSwitch() 
        } 
        if isBlocked { turnAround(); break } } }

func solveRight() { 
    while !isBlocked { 
        moveForward() 
        if isOnGem { 
            collectGem() 
        } 
    } 
    if isBlocked { 
         turnAround(); moveForward(); 
      	 moveForward(); turnRight(); moveForward() } }

for _ in 1...3 { solveLeft(); solveRight() }

//////////////////////////
// 1.3.6 Four stash sweep
// First try

func turnAround(){
    turnLeft(); turnLeft()
}


func pattern(){
    var steps = 0
    while steps < 7{
        moveForward()
        steps += 1
        if isOnGem{
            collectGem()
        }
        if steps == 3{
            turnRight()
        }
        if steps == 4 || steps == 2 {
            turnAround()
        }
    }
}

for _ in 1...4{
    pattern()
}

/////////////////////////
// hej-level

func patternB() {
    for k in 1...7 {
        moveForward()
        collectGem()
        if k == 2 || k == 4 {
            turnLeft(); turnLeft()
        } else if k == 3 {
            turnRight()
        }
    }
}

for _ in 1...4 {
    patternB()
}







