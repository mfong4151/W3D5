require 'tree_node'


class KnightPathFinder

    DIRECTIONS=[[2,1],[1,2],[-2,-1],[-1,-2],[-2,1],[-1,2],[2,-1],[1,-2]]

    def self.valid_moves(pos)
        @considered_positions = [pos]

    end

    def initialize(pos)
        @root_node = PolyTreeNode.new(pos) #do we need to look at this?
        
        #build_move_tree
    end

    def self.root_node

    end

    def new_move_positions(pos)
        self.valid_moves(pos)

    end

    def bfs(target_pos)
        queue = [root_node]
        while !queue.empty?
            node = queue.shift
            return node if node.value == target_pos
                DIRECTIONS.each do |y, x|
                    i, j = y + node.value[0], x + node.value[1]
                    #check if i, y is a valid position. 
                        #if yes, make a polytree node. make it a child of a node. add new polytree node to the queue
                        #
                    queue << child
                end
        end
        nil
    end 

end

# Polytree_node
# def initialize(value)
#     @value = value
#     @parent = nil
#     @children = []
# end


#kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
#kpf.find_path([3, 3]) # => [[0, 0], [2, 1], [3, 3]] 

#knight can only move hori 2 vert 1, vert 2 hori 1. 

#[2,1], [1, 2] [-1, -2] ..... 

#[0, 0]
#/ \  \  \ 
#[2, 1] [1, 2]
 #\
# [children of 2,1]



 matrix = Array.new(8){Array.new(8,)}

