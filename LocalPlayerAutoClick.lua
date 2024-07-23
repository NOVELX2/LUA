local frame = script.Parent
local toggleButton = frame:WaitForChild("TextButton")

local autoClicking = false
local clickInterval = 0.1  -- ความถี่ในการคลิก (วินาที)

--start
local function startAutoClick()
    while autoClicking do
        local virtualUser = game:GetService("VirtualUser")
        virtualUser:Button1Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        wait(clickInterval)
        virtualUser:Button1Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        wait(clickInterval)
    end
end

-- on/off Auto Click
local function toggleAutoClick()
    autoClicking = not autoClicking
    if autoClicking then
        toggleButton.Text = "Stop Auto Click"
        startAutoClick()
    else
        toggleButton.Text = "Start Auto Click"
    end
end

toggleButton.MouseButton1Click:Connect(toggleAutoClick)

-- default settings
toggleButton.Text = "Start Auto Click"
