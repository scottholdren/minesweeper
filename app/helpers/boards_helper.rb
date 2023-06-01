module BoardsHelper
    def generate_board(height, width, mine_count)
        board = Array.new()
        if (mine_count >= height * width) then
            for i in 1..(height*width)
                board.push(i)
            end
            return board
        end
        while board.count<mine_count do
            mine = rand(1..(height*width))
            if !board.include?(mine) then
                board.push(mine)
            end
        end
        return board.sort
    end
    def build_board(board)
        mine_map = Array.new()
        mine_data = eval board.mine_data
        idx = 1
        for y in 0..board.height-1
            mine_map[y] = Array.new()
            for x in 0..board.width-1
                if mine_data.include?(idx) then
                   mine_map[y].push(1)
                else
                    mine_map[y].push(0)
                end
                idx = idx + 1
            end
        end
        return mine_map
    end
end
