local frame = script.Parent
local toggleButton = frame:WaitForChild("TextButton")

local autoHatching = false
local hatchInterval = 1  -- ความถี่ในการเปิดไข่ (วินาที)

-- ฟังก์ชันสำหรับเริ่มการเปิดไข่อัตโนมัติ
local function startAutoHatch()
    while autoHatching do
        -- ใส่ฟังก์ชันที่ใช้ในการคลิกเปิดไข่
        -- ตัวอย่างเช่น
        local eggButton = game.Workspace:FindFirstChild("EggButton")
        if eggButton then
            fireclickdetector(eggButton.ClickDetector)
        end
        wait(hatchInterval)
    end
end

-- ฟังก์ชันสำหรับเปิด/ปิด Auto Hatch
local function toggleAutoHatch()
    autoHatching = not autoHatching
    if autoHatching then
        toggleButton.Text = "Stop Auto Hatch"
        startAutoHatch()
    else
        toggleButton.Text = "Start Auto Hatch"
    end
end

toggleButton.MouseButton1Click:Connect(toggleAutoHatch)

-- ตั้งค่าเริ่มต้น
toggleButton.Text = "Start Auto Hatch"
