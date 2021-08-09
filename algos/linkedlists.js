class SLNode{
    constructor(val){
        this.val = val
        this.next = null
    }
}
class SList{
    constructor(){
        this.head = null
    }

    add(val){
        let newnode = new SLNode(val)
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

    print(){
        let runner = this.head
        while(runner.next){
            console.log(runner)
            runner = runner.next
        }
        console.log(runner)
    }

}



mylist = new SList()
mylist.add(1)
mylist.add(2)
mylist.add(3)
mylist.add(4)
mylist.reverse()
mylist.print()