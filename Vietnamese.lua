local VNTranslate = {}

local function isVietnam()
    local LocalizationService = game:GetService("LocalizationService")
    local success, result = pcall(function()
        return LocalizationService.RobloxLocaleId
    end)
    
    if success then
        if result:find("vi") or result:find("VN") or result:find("vi-vn") then
            return true
        end
    end
    
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local success2, countryCode = pcall(function()
        return LocalizationService:GetCountryRegionForPlayerAsync(player)
    end)
    
    if success2 and countryCode == "VN" then
        return true
    end
    
    return false
end

VNTranslate.Dict = {
    ["Bacon Hub"] = "Bacon Hub",
    ["Bloxfruits"] = "Bloxfruits",
    ["Discord"] = "Discord",
    ["Shop"] = "Cửa Hàng",
    ["Status And Server"] = "Trạng Thái & Máy Chủ",
    ["Local Player"] = "Người Chơi",
    ["Farm"] = "Cài Đặt",
    ["Farming"] = "Cày Cuốc",
    ["Stack Farm"] = "Farm Liên Tiếp",
    ["Farming Other"] = "Farm Khác",
    ["Fruit and Raid"] = "Trái & Raid",
    ["Sea Event"] = "Sự Kiện Biển",
    ["Upgrade Race"] = "Nâng Cấp Chủng Tộc",
    ["Get\nand Upgrade Items"] = "Lấy Và\nNâng Cấp Vật Phẩm",
    ["Volcano Event"] = "Sự Kiện Núi Lửa",
    ["ESP"] = "ESP",
    ["PVP"] = "PVP",
    ["Redeem Code"] = "Nhập Mã Quà",
    ["Teleport Old World"] = "Dịch Chuyển Thế Giới Cũ",
    ["Teleport New World"] = "Dịch Chuyển Thế Giới Mới",
    ["Teleport Third Sea"] = "Dịch Chuyển Biển 3",
    ["Stop Tween"] = "Dừng Bay",
    ["Open Devil Fruit Shop"] = "Mở Shop Trái",
    ["Open Title"] = "Mở Danh Hiệu",
    ["Open Awakening"] = "Mở Thức Tỉnh",
    ["Boost FPS"] = "Tăng FPS",
    ["Remove Fog [ Blind Bones ]"] = "Xóa Sương Mù",
    ["Select Weapon"] = "Chọn Vũ Khí",
    ["Auto Turn On Buso"] = "Tự Động Bật Buso",
    ["Auto Haki Observation"] = "Tự Động Haki Quan Sát",
    ["Auto Turn On Race V4"] = "Tự Động Bật Race V4",
    ["Auto Turn On Race V3"] = "Tự Động Bật Race V3",
    ["Anti AFK"] = "Chống AFK",
    ["Remove Hit Effect"] = "Xóa Hiệu Ứng Đánh",
    ["Auto Spin Position"] = "Tự Động Xoay Vị Trí",
    ["Teleport Y if low Health"] = "Bay Lên Khi Máu Thấp",
    ["% Health player"] = "% Máu",
    ["Distance Teleport Y"] = "Khoảng Cách Bay",
    ["Auto Set Spawn Point"] = "Tự Động Đặt Điểm Hồi Sinh",
    ["Auto Request Temple of Time"] = "Tự Động Yêu Cầu Đền Thời Gian",
    ["Time Hop Server"] = "Thời Gian Đổi Server",
    ["Bring Mob"] = "Kéo Quái",
    ["Bring Mob Speed"] = "Tốc Độ Kéo Quái",
    ["Auto Anti - Admin Join Server"] = "Tự Động Chống Admin Vào Server",
    ["Select Method Farm"] = "Chọn Cách Farm",
    ["Level Farm"] = "Farm Cấp",
    ["Farm Bones"] = "Farm Xương",
    ["Farm Katakuri"] = "Farm Katakuri",
    ["Farm Tyrant of the Skies"] = "Farm Bạo Chủ Trời",
    ["Aura Farm"] = "Farm Aura",
    ["Start Farm"] = "Bắt Đầu Farm",
    ["Get Quest Farm [Katakuri Or Bone]"] = "Nhận Quest [Katakuri/Xương]",
    ["Auto Farm Candy"] = "Tự Động Farm Kẹo",
    ["Auto Random Christmas"] = "Tự Động Random Giáng Sinh",
    ["Auto Open Gift Box"] = "Tự Động Mở Hộp Quà",
    ["Auto Store Gift Box"] = "Tự Động Cất Hộp Quà",
    ["Farming Material"] = "Farm Nguyên Liệu",
    ["Select Material"] = "Chọn Nguyên Liệu",
    ["Farm Material"] = "Farm Nguyên Liệu",
    ["Mastery Farm"] = "Farm Thành Thạo",
    ["Select Method Mastery"] = "Chọn Cách Thành Thạo",
    ["Health %"] = "% Máu",
    ["Auto Farm Mastery Fruit"] = "Farm Thành Thạo Trái",
    ["Auto Farm Mastery Gun"] = "Farm Thành Thạo Súng",
    ["Auto Farm Mastery All Sword"] = "Farm Thành Thạo Tất Cả Kiếm",
    ["Select Melee"] = "Chọn Cận Chiến",
    ["Auto Get Melee"] = "Tự Động Lấy Cận Chiến",
    ["Teleport To Fruit"] = "Bay Đến Trái",
    ["Teleport To Fruit [ Hop Server ]"] = "Bay Đến Trái [Đổi Server]",
    ["Auto New World"] = "Tự Động Thế Giới Mới",
    ["Auto Third World"] = "Tự Động Thế Giới 3",
    ["Auto Bartilo"] = "Tự Động Bartilo",
    ["Auto Training Dummy"] = "Tự Động Đánh Hình Nhân",
    ["Auto Factory"] = "Tự Động Factory",
    ["Auto Pirate Raid"] = "Tự Động Pirate Raid",
    ["Auto Elite Hunter"] = "Tự Động Thợ Săn Ưu Tú",
    ["Hop Server Elite Hunter"] = "Đổi Server Thợ Săn Ưu Tú",
    ["Auto Open Haki Pad"] = "Tự Động Mở Haki Pad",
    ["Auto Attack Rip Indra"] = "Tự Động Đánh Rip Indra",
    ["Auto Soul Reaper"] = "Tự Động Soul Reaper",
    ["Auto Dough King"] = "Tự Động Vua Bột",
    ["Auto Attack Dough King"] = "Tự Động Đánh Vua Bột",
    ["Auto Phoenix Raid"] = "Tự Động Phoenix Raid",
    ["Auto Dark Blade V3"] = "Tự Động Dark Blade V3",
    ["Auto Darkbeard"] = "Tự Động Darkbeard",
    ["Auto Fishing"] = "Tự Động Câu Cá",
    ["Select Rod"] = "Chọn Cần Câu",
    ["Select Bait"] = "Chọn Mồi",
    ["Auto Claim Dojo Belt"] = "Tự Động Nhận Đai Dojo",
    ["Auto Claim Upgrade Dragon Talon"] = "Tự Động Nhận Nâng Cấp Móng Rồng",
    ["Auto Collect Berry"] = "Tự Động Nhặt Berry",
    ["Hop Find Berry"] = "Đổi Server Tìm Berry",
    ["Auto Chest"] = "Tự Động Mở Rương",
    ["Auto Chest Hop"] = "Tự Động Rương [Đổi Server]",
    ["Auto Buy Chip And Attack Law"] = "Tự Động Mua Chip Và Đánh Law",
    ["Auto UP Observation V2"] = "Tự Động Lên Haki Quan Sát V2",
    ["Farm Observation"] = "Farm Haki Quan Sát",
    ["Farm Observation [ Hop Server ]"] = "Farm Haki [Đổi Server]",
    ["Auto Kill Mob"] = "Tự Động Giết Quái",
    ["Kill Mob"] = "Giết Quái",
    ["Select Mob"] = "Chọn Quái",
    ["Auto Kill Boss"] = "Tự Động Giết Boss",
    ["Select Boss"] = "Chọn Boss",
    ["Auto Kill All Boss"] = "Tự Động Giết Tất Cả Boss",
    ["Auto Kill All Boss [ Hop Server ]"] = "Giết Boss [Đổi Server]",
    ["Random Devil Fruit"] = "Random Trái Ác Quỷ",
    ["Auto Drop Fruit"] = "Tự Động Vứt Trái",
    ["Auto Store Fruit"] = "Tự Động Cất Trái",
    ["Blox Fruit Sniper Shop"] = "Sniper Trái Ác Quỷ",
    ["Buy Blox Fruit Sniper Shop"] = "Mua Trái Sniper",
    ["Raids"] = "Raids",
    ["Select Raid"] = "Chọn Raid",
    ["Get Fruit In Inventory Low Beli"] = "Lấy Trái Rẻ Trong Kho",
    ["Buy Chip"] = "Mua Chip",
    ["Auto Start Raid"] = "Tự Động Bắt Đầu Raid",
    ["Auto Farm Raid"] = "Tự Động Farm Raid",
    ["Auto Awaken Fruit"] = "Tự Động Thức Tỉnh Trái",
    ["Auto Teleport To Lab"] = "Tự Động Bay Đến Lab",
    ["Dungeon"] = "Hầm Ngục",
    ["Teleport Dungeon Hub"] = "Bay Đến Trung Tâm Hầm Ngục",
    ["Auto Dungeon"] = "Tự Động Hầm Ngục",
    ["Select Dungeon Pad"] = "Chọn Bệ Hầm Ngục",
    ["Teleport to Selected Pad"] = "Bay Đến Bệ Đã Chọn",
    ["Remove Lighting Effect"] = "Xóa Hiệu Ứng Ánh Sáng",
    ["Ship Speed Modifier"] = "Chỉnh Tốc Độ Thuyền",
    ["Ship Speed"] = "Tốc Độ Thuyền",
    ["Auto Press W"] = "Tự Động Nhấn W",
    ["No Clip Ship"] = "Xuyên Thuyền",
    ["Select Method Time"] = "Chọn Thời Gian",
    ["Auto Turn On Time"] = "Tự Động Bật Thời Gian",
    ["Select Method NPC"] = "Chọn NPC",
    ["Teleport To NPC"] = "Bay Đến NPC",
    ["Auto Drive Boats"] = "Tự Động Lái Thuyền",
    ["Auto Kill Terror Shark"] = "Tự Động Giết Terror Shark",
    ["Auto Kill Shark"] = "Tự Động Giết Cá Mập",
    ["Auto Kill Piranha"] = "Tự Động Giết Piranha",
    ["Auto Kill Fish Crew Member"] = "Tự Động Giết Fish Crew",
    ["Kitsune Event"] = "Sự Kiện Kitsune",
    ["Teleport To Kitsune Island"] = "Bay Đến Đảo Kitsune",
    ["Auto Start Kitsune Island"] = "Tự Động Bắt Đầu Kitsune",
    ["Auto Collect Azure Wisp"] = "Tự Động Nhặt Azure",
    ["Set Azure Ember"] = "Đặt Azure Ember",
    ["Auto Trade Azure Ember"] = "Tự Động Đổi Azure",
    ["Trade Azure Wisp"] = "Đổi Azure",
    ["Frozen Dimension Event"] = "Sự Kiện Chiều Băng",
    ["Craft Leviathan Crown"] = "Chế Vương Miện Leviathan",
    ["Craft Leviathan Shield"] = "Chế Khiên Leviathan",
    ["Craft Leviathan Boat"] = "Chế Thuyền Leviathan",
    ["Buy Spy"] = "Mua Spy",
    ["Teleport To Frozen Dimension"] = "Bay Đến Chiều Băng",
    ["Auto Attack Leviathan [ Beta ]"] = "Tự Động Đánh Leviathan [Beta]",
    ["Teleport To Trial Draco"] = "Bay Đến Thử Thách Rồng",
    ["Auto Trial Draco [ Beta ]"] = "Tự Động Thử Thách Rồng [Beta]",
    ["Auto Train Draco"] = "Tự Động Train Rồng",
    ["Auto Draco V2"] = "Tự Động Rồng V2",
    ["Race Normal"] = "Chủng Tộc Thường",
    ["Select Race Upgrade"] = "Chọn Nâng Cấp Chủng Tộc",
    ["Auto Upgrade Race V2-V3"] = "Tự Động Nâng Cấp V2-V3",
    ["Race V4"] = "Chủng Tộc V4",
    ["No Frog"] = "Không Ếch",
    ["Teleport Ancient Clock"] = "Bay Đến Đồng Hồ Cổ",
    ["Auto Buy Gear"] = "Tự Động Mua Gear",
    ["Auto Finish Train Quest"] = "Tự Động Hoàn Thành Quest Train",
    ["Tiers Gear V4"] = "Cấp Độ Gear V4",
    ["Auto Pull Lever"] = "Tự Động Kéo Cần",
    ["Not Working Well Yet"] = "Chưa Hoạt Động Tốt",
    ["Talk With Stone"] = "Nói Với Đá",
    ["Teleport To Migare Island"] = "Bay Đến Đảo Migare",
    ["Auto Teleport To Highest Point"] = "Tự Động Bay Đến Điểm Cao Nhất",
    ["Teleport To Advanced Fruit Dealer"] = "Bay Đến Người Bán Trái Cao Cấp",
    ["Teleport To Gear"] = "Bay Đến Gear",
    ["Change Transparency Can See Gear"] = "Đổi Độ Trong Suốt Để Thấy Gear",
    ["Look Moon And Use Race Skill"] = "Nhìn Trăng Và Dùng Skill Chủng Tộc",
    ["Teleport To Ancient Tree"] = "Bay Đến Cây Cổ",
    ["Teleport Lever Pull"] = "Bay Đến Cần Kéo",
    ["Teleport Acient One"] = "Bay Đến Người Xưa",
    ["Temple of Time"] = "Đền Thời Gian",
    ["Auto Teleport To Trial Door"] = "Tự Động Bay Đến Cửa Thử Thách",
    ["Auto Trial Race"] = "Tự Động Thử Thách Chủng Tộc",
    ["Auto Kill Player After Trial V4"] = "Tự Động Giết Player Sau Thử Thách V4",
    ["Use Skill When Kill Player"] = "Dùng Skill Khi Giết Player",
    ["Auto Trade Bones"] = "Tự Động Đổi Xương",
    ["Auto Buy Legendary Sword"] = "Tự Động Mua Kiếm Huyền Thoại",
    ["Auto Buy Haki Color"] = "Tự Động Mua Màu Haki",
    ["Auto Teleport Legendary Sword Dealer"] = "Bay Đến Người Bán Kiếm Huyền Thoại",
    ["Auto Teleport Barista Cousin"] = "Bay Đến Barista Cousin",
    ["Auto Get Rainbow Haki"] = "Tự Động Lấy Haki Cầu Vồng",
    ["Auto Quest Get Rainbow Haki"] = "Tự Động Nhận Quest Haki Cầu Vồng",
    ["Auto Skull Guitar"] = "Tự Động Skull Guitar",
    ["Auto CDK"] = "Tự Động CDK",
    ["Auto Yama"] = "Tự Động Yama",
    ["Auto Tushita"] = "Tự Động Tushita",
    ["Auto Holy Torch"] = "Tự Động Holy Torch",
    ["Auto Saber"] = "Tự Động Saber",
    ["Destroy Lava In Prehistoric Island"] = "Phá Dung Nham Ở Đảo Tiền Sử",
    ["Craft Dino Hood"] = "Chế Mũ Khủng Long",
    ["Craft T-Rex Skull"] = "Chế Đầu Lâu T-Rex",
    ["Crafting Volcanic Magnet"] = "Chế Nam Châm Núi Lửa",
    ["Auto Find Prehistoric Island"] = "Tự Động Tìm Đảo Tiền Sử",
    ["Prehistoric Island Has Appeared And Has Stopped Boat Please Turn Off Function"] = "Đảo Tiền Sử Đã Xuất Hiện Và Đã Dừng Thuyền Vui Lòng Tắt Chức Năng",
    ["Teleport Prehistoric Island"] = "Bay Đến Đảo Tiền Sử",
    ["Auto Start Prehistoric island"] = "Tự Động Bắt Đầu Đảo Tiền Sử",
    ["Auto Event Prehistoric Island"] = "Tự Động Sự Kiện Đảo Tiền Sử",
    ["Auto Start Event And Kill Golem Aura,Auto Fix Volcano"] = "Tự Động Bắt Đầu Sự Kiện Và Giết Golem Aura, Tự Động Sửa Núi Lửa",
    ["Auto Reset When Complete Volcano"] = "Tự Động Reset Khi Hoàn Thành Núi Lửa",
    ["Auto Collect Bones"] = "Tự Động Nhặt Xương",
    ["Auto Collect Egg"] = "Tự Động Nhặt Trứng",
    ["ESP Berry"] = "ESP Berry",
    ["ESP Island"] = "ESP Đảo",
    ["ESP Fruit"] = "ESP Trái",
    ["ESP Player"] = "ESP Người Chơi",
    ["Select Player PVP"] = "Chọn Người Chơi PVP",
    ["Select Method Aimbot"] = "Chọn Cách Aimbot",
    ["Teleport Player"] = "Bay Đến Người Chơi",
    ["Auto Aimbot"] = "Tự Động Aimbot",
    ["Auto Aimbot Camera"] = "Tự Động Aimbot Camera",
    ["Speed Run Player"] = "Chạy Nhanh",
    ["Dash no Cd"] = "Dash Không Hồi",
    ["Inf Soru"] = "Soru Vô Hạn",
    ["Inf Geppo"] = "Geppo Vô Hạn",
    ["No Clip"] = "Xuyên Tường",
    ["Walk On Water"] = "Đi Trên Nước",
    ["Status: "] = "Trạng Thái: ",
    ["You Have : "] = "Bạn Có: ",
    ["Bones"] = "Xương",
    ["Kill : "] = "Đã Giết: ",
    ["Moon: "] = "Trăng: ",
    ["Default"] = "Mặc Định",
    ["Enabled"] = "Đã Bật",
    ["Disabled"] = "Đã Tắt",
    ["Select"] = "Chọn",
    ["Auto"] = "Tự Động",
    ["Yes"] = "Có",
    ["No"] = "Không",
    ["Distance"] = "Khoảng Cách",
}

if isVietnam() then
    task.spawn(function()
        repeat task.wait() until _G.Library or getgenv().Library
        local Library = _G.Library or getgenv().Library
        
        if Library and Library.MakeWindow then
            local oldMakeWindow = Library.MakeWindow
            Library.MakeWindow = function(self, config)
                if config.Title and VNTranslate.Dict[config.Title] then
                    config.Title = VNTranslate.Dict[config.Title]
                end
                if config.SubTitle and VNTranslate.Dict[config.SubTitle] then
                    config.SubTitle = VNTranslate.Dict[config.SubTitle]
                end
                return oldMakeWindow(self, config)
            end
        end
    end)
    
    local mt = getrawmetatable(game)
    local oldnamecall = mt.__namecall
    setreadonly(mt, false)
    
    mt.__namecall = newcclosure(function(self, ...)
        local args = {...}
        local method = getnamecallmethod()
        
        if method:lower():find("add") or method:lower():find("make") or method:lower():find("create") then
            for i, v in pairs(args) do
                if type(v) == "table" then
                    if v.Name and VNTranslate.Dict[v.Name] then
                        v.Name = VNTranslate.Dict[v.Name]
                    end
                    if v.Title and VNTranslate.Dict[v.Title] then
                        v.Title = VNTranslate.Dict[v.Title]
                    end
                    if v.Text and VNTranslate.Dict[v.Text] then
                        v.Text = VNTranslate.Dict[v.Text]
                    end
                    if v.Description and VNTranslate.Dict[v.Description] then
                        v.Description = VNTranslate.Dict[v.Description]
                    end
                elseif type(v) == "string" and VNTranslate.Dict[v] then
                    args[i] = VNTranslate.Dict[v]
                end
            end
        end
        
        return oldnamecall(self, unpack(args))
    end)
    
    setreadonly(mt, true)
end
