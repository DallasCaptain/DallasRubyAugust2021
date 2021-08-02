function balancePoint(arr){
    //create counters for left and right totals
    let left = 0
    let right = 0
    //create iterators for left and right
    let li = 0
    let ri = arr.length - 1
    //loop over the array with both iterators until they cross
    while(li <= ri){
        //console.log(left, li, right, ri)
        //add smallest number and adjust iterater for that side
        if(left + arr[li] < right + arr[ri]){
            left += arr[li]
            li++
        }else{
            right += arr[ri]
            ri--
        }
    }
    //return true if they are balanced false if not
    return left == right
}
array= [7,3,6,2,2]
console.log(balancePoint(array))