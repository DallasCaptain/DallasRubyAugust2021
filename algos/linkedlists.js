class SLNode{
    constructor(val){
        this.val = val
        this.next = null
        this.child = null
    }
}
class SList{
    constructor(){
        this.head = null
    }

    add(newnode){
        
        if(!this.head){
            this.head = newnode
            return this
        }
        let runner = this.head
        while(runner.next){
            runner = runner.next
        }
        runner.next = newnode

    }

    reverse(){
        let prev = null
        let runner = this.head
        let next = runner.next
        while(runner.next){
            runner.next = prev
            prev = runner
            runner = next
            next = runner.next
        }
        this.head = runner
        runner.next = prev
        return this
    }

    flatten(){
        let runner = this.head
        let stack = []
        while(runner){
            if(runner.child){
                stack.push(runner.next)
                runner.next = runner.child
            }else if(!runner.next && stack.length) {
                let next = stack.pop()
                runner.next = next
            }
            runner = runner.next
        }
    }

    print(){
        let runner = this.head
        while(runner.next){
            console.log(runner.val)
            runner = runner.next
        }
        console.log(runner.val)
    }

}



// mylist = new SList()
// a = new SLNode(1)
// mylist.add(a)
// b = new SLNode(2)
// mylist.add(b)
// c = new SLNode(3)
// mylist.add(c)
// d = new SLNode(4)
// b.child = d
// e = new SLNode(5)
// f = new SLNode(6)
// g = new SLNode(7)
// d.next = e
// e.next = f
// f.next = g
// mylist.flatten()
// mylist.print()



function breakloop(node){
    let counter = hasLoop(node)
    let runner = node
    while(true){
        let fastrunner = runner.next
        for(let i=0; i<counter;i++){
            if(fastrunner.next == runner){
                fastrunner.next = null
                return true
            }
            fastrunner = fastrunner.next
        }
        runner = runner.next
    }
}



class DList{
    constructor(){
        this.head = null
        this.tail = null
    }


    push(val){
        let newnode = new DNode(val)
        if(!this.tail){
            this.head = newnode
            this.tail = newnode
        }else{
            this.tail.next = newnode
            newnode.prev = this.tail
            this.tail = newnode

        }
    }
}
class DNode{
    constructor(val){
        this.val = val
        this.next = null
        this.prev = null
    }
}

let mylist = new DList()
mylist.push(9)
mylist.push(19)
console.log(mylist)