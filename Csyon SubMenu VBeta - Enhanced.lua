natives.load_natives()

menu.set_menu_name("Csyon Menu")

local submenu = menu.get_submenu()

-- Main
local csyon_category = submenu:add_category("Csyon SubMenu")
local csyon_group = csyon_category:add_group("Main")

-- Recovery
local recovery_category = submenu:add_category("Recovery")
local recovery_category = recovery_category:add_group("General")

-- Settings
local settings_category = submenu:add_category("Settings")
local general_group = settings_category:add_group("General")
local credits_group = settings_category:add_group("Credits")

-- Credits
credits_group:add_button("csyon_author","Lead Developer: CSY0N", "Open the lead developer's GitHub profile.",
    function()
        menu.open_url("https://github.com/CSY0N")
    end
)

credits_group:add_button("pyxalon","Foundation: Pyxalon","Open Pyxalon's GitHub profile.",
    function()
        menu.open_url("https://github.com/Pyxalon")
    end
)
