class BTNode{
    constructor(val){
        this.val = val
        this.left = null
        this.right = null
    }
}

class BST{
    constructor(){
        this.root = null
    }

    add(val){
        if(!this.root){
            this.root = new BTNode(val)
            return this
        }
        let runner = this.root
        while(true){
            if(val === runner.val){
                return this
            }
            if(val > runner.val){
                if(runner.right){
                    runner = runner.right
                }else{
                    runner.right = new BTNode(val)
                    return this
                }
            }else{
                if(runner.left){
                    runner = runner.left
                }else{
                    runner.left = new BTNode(val)
                    return this
                }
            }
        }
    }

    min(){
        if(!this.root){
            return null
        }
        let runner = this.root
        while(runner.left){
            runner = runner.left
        }
        return (runner.val)
    }

    contains(target){
        if(!this.root){
            return null
        }
        let runner = this.root
        while(true){
            if(runner.val === target){
                return true
            }
            if(runner.val < target){
                if(!runner.right){
                    return false
                }
                runner = runner.right
            }else{
                if(!runner.left){
                    return false
                }
                runner = runner.left
            }
        }
    }

    remove(target,node = this.root){
        let runner = this.root
        let prev = null
        //find target
        while(runner && runner.val != target){
            prev = runner
            if(target < runner.val){
                runner = runner.left 
            }else{
                runner = runner.right
            }
        }
        //target not present
        if(!runner){
            return false
        }
        console.log('found it',runner)
        //found target
        while(runner.left || runner.right){
            //swap right
            if(runner.right){
                //prepare to swap
                let lc = runner.left
                let rrc = runner.right.right
                let rlc = runner.right.left
                //swapping
                //previous to child
                if(!prev){
                    this.root = runner.right
                    prev = this.root
                }else{
                    if(runner == prev.left){
                        prev.left = runner.right
                    }else{
                        prev.right = runner.right
                    }

                }
                prev = runner.right
                //right childs children
                runner.right.left = lc
                runner.right.right = runner
                //runners children
                runner.right = rrc
                runner.left = rlc
                //


            }else if(runner.left){
                //prepare to swap
                let lrc = runner.left.right
                let llc = runner.left.left
                //swapping
                //previous to child
                if(runner == prev.left){
                    prev.left = runner.left
                }else{
                    prev.right = runner.left
                }
                prev = runner.left
                //left childs left child, left child keeps left childs right child
                runner.left.left = runner
                //runners left child, runner right child stays null
                runner.left = llc
                //
            }
            
            console.log('looped',runner)
        }
        //runner has no children, so remove it
        if(prev.left == runner){
            prev.left = null
        }
        if(prev.right == runner){
            prev.right = null
        }
        return true
    }

}

let tree = new BST()
tree.add(50)
tree.add(25)
tree.add(75)
tree.add(85)
tree.add(65)
tree.add(60)
// console.log(tree)
tree.remove(50)
console.log(tree)