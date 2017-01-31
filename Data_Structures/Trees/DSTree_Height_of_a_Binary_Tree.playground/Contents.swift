// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }
        
        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }
        
        return root
        
    }
    
    func getHeight(root: Node?) -> Int {
        guard let node = root  else {
            return -1
        }
        
        let leftHeight = 1 + getHeight(root: node.left)
        let rigthHeight = 1 + getHeight(root: node.right)
        
        return (leftHeight >= rigthHeight) ? leftHeight : rigthHeight
    }
    
} // End of Tree class

var root: Node?
let tree = Tree()

let t1 = [10]
let t2 = [10,1]
let t3 = [3, 5, 2, 1, 4, 6, 7]
let t4 = [7, 5, 2, 1, 4, 6, 3]

let testsArray = [t1, t2, t3, t4]

for var t in testsArray {
    
    for var i in 0..<t.count {
        root = tree.insert(root: root, data: t[i])
    }
    print(tree.getHeight(root: root))
    
}


