function init()
    cellSize = 10 
    gridXCount = 70
    gridYCount = 50
end


function love.load()
    init()
    love.graphics.setBackgroundColor(1, 1, 1)
end


function love.draw()
    for y = 1, gridYCount do
        for x = 1, gridXCount do
            local cellDrawSize = cellSize - 1

            if x == selectedX and y == selectedY then
                love.graphics.setColor(0, 1, 1)
            else
                love.graphics.setColor(.86, .86, .86)
            end
            love.graphics.rectangle(
                'fill',
                (x - 1) * cellSize,
                (y - 1) * cellSize,
                cellDrawSize,
                cellDrawSize
            )
        end
    end
end


function love.update(delta)
    selectedX = math.floor(love.mouse.getX() / cellSize) + 1
    selectedY = math.floor(love.mouse.getY() / cellSize) + 1
end