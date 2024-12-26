--────────────────────────────────────────────────────────────────────────────────────────
--─██████████████─██████████████─████████──████████─██████████████─██████──────────██████─
--─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░██──██░░░░██─██░░░░░░░░░░██─██░░██████████──██░░██─
--─██░░██████████─██░░██████████─████░░██──██░░████─██░░██████░░██─██░░░░░░░░░░██──██░░██─
--─██░░██─────────██░░██───────────██░░░░██░░░░██───██░░██──██░░██─██░░██████░░██──██░░██─
--─██░░██─────────██░░██████████───████░░░░░░████───██░░██──██░░██─██░░██──██░░██──██░░██─
--─██░░██─────────██░░░░░░░░░░██─────████░░████─────██░░██──██░░██─██░░██──██░░██──██░░██─
--─██░░██─────────██████████░░██───────██░░██───────██░░██──██░░██─██░░██──██░░██──██░░██─
--─██░░██─────────────────██░░██───────██░░██───────██░░██──██░░██─██░░██──██░░██████░░██─
--─██░░██████████─██████████░░██───────██░░██───────██░░██████░░██─██░░██──██░░░░░░░░░░██─
--─██░░░░░░░░░░██─██░░░░░░░░░░██───────██░░██───────██░░░░░░░░░░██─██░░██──██████████░░██─
--─██████████████─██████████████───────██████───────██████████████─██████──────────██████─
--────────────────────────────────────────────────────────────────────────────────────────

--[[SET NO CLIP CONTROLS BELOW
USE LINK BELOW TO FIND THE KEYCODE VALUES YOU NEED
https://ikeycode.vercel.app/ ]]
--Required Stats----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local function MPX()
	local PI = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PI == 0 then
		return "MP0_"
	else
		return "MP1_"
	end
end

local function SPX()
	local PI = ENTITY.GET_ENTITY_MODEL(PLAYER.PLAYER_PED_ID())
	if PI == joaat("Player_Zero") then
		return "SP0_"
	elseif PI == joaat("Player_One") then
		return "SP1_"
	elseif PI == joaat("Player_Two") then
		return "SP2_"
	else
		return "SP0_"
	end
end

is_player_male = (ENTITY.GET_ENTITY_MODEL(PLAYER.PLAYER_PED_ID()) == joaat("mp_m_freemode_01"))

--Required Scripts--

FMC = "fm_mission_controller"
FMC2020 = "fm_mission_controller_2020"
HIP = "heist_island_planning"

--Globals & Locals & Variables--

FMg = 262145 -- free mode global ("CASH_MULTIPLIER") //correct
ACg1 = 1928958 + 1 + 1 -- global apartment player 1 cut global
ACg2 = 1928958 + 1 + 2 -- global apartment player 2 cut global
ACg3 = 1928958 + 1 + 3 -- global apartment player 3 cut global
ACg4 = 1928958 + 1 + 4 -- global apartment player 4 cut global
ACg5 = 1930201 + 3008 + 1 -- local apartment player 1 cut global

AUAJg1 = FMg + 9101 -- apartment unlock all jobs global 1 ("ROOT_ID_HASH_THE_FLECCA_JOB")
AUAJg2 = FMg + 9106 -- apartment unlock all jobs global 2 ("ROOT_ID_HASH_THE_PRISON_BREAK")
AUAJg3 = FMg + 9113 -- apartment unlock all jobs global 3 ("ROOT_ID_HASH_THE_HUMANE_LABS_RAID")
AUAJg4 = FMg + 9119 -- apartment unlock all jobs global 4 ("ROOT_ID_HASH_SERIES_A_FUNDING")
AUAJg5 = FMg + 9125 -- apartment unlock all jobs global 5 ("ROOT_ID_HASH_THE_PACIFIC_STANDARD_JOB")
AIFl3 = 19746 -- apartment instant finish local 1
AIFl4 = 28365 + 1 -- apartment instant finish local 2
AIFl5 = 31621 + 69 -- apartment instant finish local 3

DCRBl = 185 -- diamond casino reload board local
DCCg1 = 1964849 + 1497 + 736 + 92 + 1 -- diamond casino player 1 cut global
DCCg2 = 1964849 + 1497 + 736 + 92 + 2 -- diamond casino player 2 cut global
DCCg3 = 1964849 + 1497 + 736 + 92 + 3 -- diamond casino player 3 cut global
DCCg4 = 1964849 + 1497 + 736 + 92 + 4 -- diamond casino player 4 cut global
DCCl = FMg + 28313 -- Casino_Cut_Lester_offset
DCCh = FMg + 28349 - 1 --Casino_Cut_Hacker_offset
DCCd = FMg + 28344 - 1 --Casino_Cut_Driver_offset
DCCgun = FMg + 28339 - 1 --Casino_Cut_Gunman_offset
DCFHl = 53019 -- diamond casino fingerprint hack local
DCKHl = 54085 -- diamond casino keypad hack local
DCDVDl1 = 10109 + 7 -- diamond casino drill vault door local 1
DCDVDl2 = 10109 + 37 -- diamond casino drill vault door local 2

GCg = 2685249 + 6615 -- global cut global (value2 = value2 * (num / 100f);)
CPRSl = 1546 -- cayo perico reload screen local //correct
CPCg1 = 1971648 + 831 + 56 + 1 -- cayo perico player 1 cut global
CPCg2 = 1971648 + 831 + 56 + 2 -- cayo perico player 2 cut global
CPCg3 = 1971648 + 831 + 56 + 3 -- cayo perico player 3 cut global
CPCg4 = 1971648 + 831 + 56 + 4 -- cayo perico player 4 cut global
CPBg = FMg + 29211 -- cayo perico bag global (1859395035)
CPFHl = 24880 -- cayo perico fingerprint hack local
CPPCCl = 30939 + 3 -- cayo perico plasma cutter cut local ("DLC_H4_anims_glass_cutter_Sounds")
CPSTCl = 29700 -- cayo perico drainage pipe cut local

DDSHl = 1271 + 135 -- doomsday doomsday scenario hack local
DCg1 = 1960755 + 812 + 50 + 1 -- doomsday player 1 cut global
DCg2 = 1960755 + 812 + 50 + 2 -- doomsday player 2 cut global
DCg3 = 1960755 + 812 + 50 + 3 -- doomsday player 3 cut global
DCg4 = 1960755 + 812 + 50 + 4 -- doomsday player 4 cut global

SNOW = 262145 + 4413
halloweatherAddress = 262145 + 32158

--BV = Ballastic Value----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

BV = 262145 + 20024

--CCBL = Casino Chips Buy Limit-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CCBL0 = 262145 + 26535
CCBL1 = 262145 + 26536

--BAS=Bag Size------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

BAS1 = 262145 + 29211

--PSV=Panther Statue-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

PSV = 262145 + 29463

--PDIAMOND=Pink Diamond---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

PDIAMOND = 262145 + 29461

--BB=Bearer Bonds---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

BB = 262145 + 29460

--RN=Ruby Necklace--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

RN = 262145 + 29459

--TEQUILA=Tequila---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TEQUILA = 262145 + 29458

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local popsnd, sndRef
local flame_size
local driftMode          = false
local DriftTires         = false
local is_car             = false
local is_quad            = false
local is_boat            = false
local is_bike            = false
local validModel         = false
local speedBoost         = false
local sfx                = false
local ptfx               = false
local nosvfx             = false
local hornLight          = false
local nosPurge           = false
local rgbLights          = false
local has_xenon          = false
local purge_started      = false
local nos_started        = false
local twostep_started    = false
local is_typing          = false
local loud_radio         = false
local louderPops         = false
local open_sounds_window = false
local started_lct        = false
local launch_active      = false
local started_popSound   = false
local started_popSound2  = false
local holdF              = false
local timerA             = 0
local timerB             = 0
-- local defaultFcamber     = 0
-- local defaultRcamber     = 0
-- local fCamber            = 0
-- local rCamber            = 0
local lastVeh            = 0
local defaultXenon       = 0
local DriftIntensity     = 0
local vehSound_index     = 0
local lightSpeed         = 1
local tdBtn              = 21
local search_term        = ""
local nosptfx_t          = {}
local purgePtfx_t        = {}
local lctPtfx_t          = {}
local popSounds_t        = {}
local popsPtfx_t         = {}
local gta_vehicles       = {"Airbus", "Airtug", "akula", "akuma", "aleutian", "alkonost", "alpha", "alphaz1", "AMBULANCE", "annihilator", "annihilator2", "apc", "ardent", "armytanker", "armytrailer", "armytrailer2", "asbo", "asea", "asea2", "asterope", "asterope2", "astron", "autarch", "avarus", "avenger", "avenger2", "avenger3", "avenger4", "avisa", "bagger", "baletrailer", "Baller", "baller2", "baller3", "baller4", "baller5", "baller6", "baller7", "baller8", "banshee", "banshee2", "BARRACKS", "BARRACKS2", "BARRACKS3", "barrage", "bati", "bati2", "Benson", "benson2", "besra", "bestiagts", "bf400", "BfInjection", "Biff", "bifta", "bison", "Bison2", "Bison3", "BjXL", "blade", "blazer", "blazer2", "blazer3", "blazer4", "blazer5", "BLIMP", "BLIMP2", "blimp3", "blista", "blista2", "blista3", "BMX", "boattrailer", "boattrailer2", "boattrailer3", "bobcatXL", "Bodhi2", "bombushka", "boor", "boxville", "boxville2", "boxville3", "boxville4", "boxville5", "boxville6", "brawler", "brickade", "brickade2", "brigham", "brioso", "brioso2", "brioso3", "broadway", "bruiser", "bruiser2", "bruiser3", "brutus", "brutus2", "brutus3", "btype", "btype2", "btype3", "buccaneer", "buccaneer2", "buffalo", "buffalo2", "buffalo3", "buffalo4", "buffalo5", "bulldozer", "bullet", "Burrito", "burrito2", "burrito3", "Burrito4", "burrito5", "BUS", "buzzard", "Buzzard2", "cablecar", "caddy", "Caddy2", "caddy3", "calico", "CAMPER", "caracara", "caracara2", "carbonizzare", "carbonrs", "Cargobob", "cargobob2", "Cargobob3", "Cargobob4", "cargoplane", "cargoplane2", "casco", "cavalcade", "cavalcade2", "cavalcade3", "cerberus", "cerberus2", "cerberus3", "champion", "cheburek", "cheetah", "cheetah2", "chernobog", "chimera", "chino", "chino2", "cinquemila", "cliffhanger", "clique", "clique2", "club", "coach", "cog55", "cog552", "cogcabrio", "cognoscenti", "cognoscenti2", "comet2", "comet3", "comet4", "comet5", "comet6", "comet7", "conada", "conada2", "contender", "coquette", "coquette2", "coquette3", "coquette4", "corsita", "coureur", "cruiser", "CRUSADER", "cuban800", "cutter", "cyclone", "cypher", "daemon", "daemon2", "deathbike", "deathbike2", "deathbike3", "defiler", "deity", "deluxo", "deveste", "deviant", "diablous", "diablous2", "dilettante", "dilettante2", "Dinghy", "dinghy2", "dinghy3", "dinghy4", "dinghy5", "dloader", "docktrailer", "docktug", "dodo", "Dominator", "dominator2", "dominator3", "dominator4", "dominator5", "dominator6", "dominator7", "dominator8", "dominator9", "dorado", "double", "drafter", "draugur", "drifteuros", "driftfr36", "driftfuto", "driftjester", "driftremus", "drifttampa", "driftyosemite", "driftzr350", "dubsta", "dubsta2", "dubsta3", "dukes", "dukes2", "dukes3", "dump", "dune", "dune2", "dune3", "dune4", "dune5", "duster", "Dynasty", "elegy", "elegy2", "ellie", "emerus", "emperor", "Emperor2", "emperor3", "enduro", "entity2", "entity3", "entityxf", "esskey", "eudora", "Euros", "everon", "everon2", "exemplar", "f620", "faction", "faction2", "faction3", "fagaloa", "faggio", "faggio2", "faggio3", "FBI", "FBI2", "fcr", "fcr2", "felon", "felon2", "feltzer2", "feltzer3", "firetruk", "fixter", "flashgt", "FLATBED", "fmj", "FORKLIFT", "formula", "formula2", "fq2", "fr36", "freecrawler", "freight", "freight2", "freightcar", "freightcar2", "freightcont1", "freightcont2", "freightgrain", "Frogger", "frogger2", "fugitive", "furia", "furoregt", "fusilade", "futo", "futo2", "gargoyle", "Gauntlet", "gauntlet2", "gauntlet3", "gauntlet4", "gauntlet5", "gauntlet6", "gb200", "gburrito", "gburrito2", "glendale", "glendale2", "gp1", "graintrailer", "GRANGER", "granger2", "greenwood", "gresley", "growler", "gt500", "guardian", "habanero", "hakuchou", "hakuchou2", "halftrack", "handler", "Hauler", "Hauler2", "havok", "hellion", "hermes", "hexer", "hotknife", "hotring", "howard", "hunter", "huntley", "hustler", "hydra", "imorgon", "impaler", "impaler2", "impaler3", "impaler4", "impaler5", "impaler6", "imperator", "imperator2", "imperator3", "inductor", "inductor2", "infernus", "infernus2", "ingot", "innovation", "insurgent", "insurgent2", "insurgent3", "intruder", "issi2", "issi3", "issi4", "issi5", "issi6", "issi7", "issi8", "italigtb", "italigtb2", "italigto", "italirsx", "iwagen", "jackal", "jb700", "jb7002", "jester", "jester2", "jester3", "jester4", "jet", "jetmax", "journey", "journey2", "jubilee", "jugular", "kalahari", "kamacho", "kanjo", "kanjosj", "khamelion", "khanjali", "komoda", "kosatka", "krieger", "kuruma", "kuruma2", "l35", "landstalker", "landstalker2", "Lazer", "le7b", "lectro", "lguard", "limo2", "lm87", "locust", "longfin", "lurcher", "luxor", "luxor2", "lynx", "mamba", "mammatus", "manana", "manana2", "manchez", "manchez2", "manchez3", "marquis", "marshall", "massacro", "massacro2", "maverick", "menacer", "MESA", "mesa2", "MESA3", "metrotrain", "michelli", "microlight", "Miljet", "minitank", "minivan", "minivan2", "Mixer", "Mixer2", "mogul", "molotok", "monroe", "monster", "monster3", "monster4", "monster5", "monstrociti", "moonbeam", "moonbeam2", "Mower", "Mule", "Mule2", "Mule3", "mule4", "mule5", "nebula", "nemesis", "neo", "neon", "nero", "nero2", "nightblade", "nightshade", "nightshark", "nimbus", "ninef", "ninef2", "nokota", "Novak", "omnis", "omnisegt", "openwheel1", "openwheel2", "oppressor", "oppressor2", "oracle", "oracle2", "osiris", "outlaw", "Packer", "panthere", "panto", "paradise", "paragon", "paragon2", "pariah", "patriot", "patriot2", "patriot3", "patrolboat", "pbus", "pbus2", "pcj", "penetrator", "penumbra", "penumbra2", "peyote", "peyote2", "peyote3", "pfister811", "Phantom", "phantom2", "phantom3", "Phantom4", "Phoenix", "picador", "pigalle", "polgauntlet", "police", "police2", "police3", "police4", "police5", "policeb", "policeold1", "policeold2", "policet", "polmav", "pony", "pony2", "postlude", "Pounder", "pounder2", "powersurge", "prairie", "pRanger", "Predator", "premier", "previon", "primo", "primo2", "proptrailer", "prototipo", "pyro", "r300", "radi", "raiden", "raiju", "raketrailer", "rallytruck", "RancherXL", "rancherxl2", "RapidGT", "RapidGT2", "rapidgt3", "raptor", "ratbike", "ratel", "ratloader", "ratloader2", "rcbandito", "reaper", "Rebel", "rebel2", "rebla", "reever", "regina", "remus", "Rentalbus", "retinue", "retinue2", "revolter", "rhapsody", "rhinehart", "RHINO", "riata", "RIOT", "riot2", "Ripley", "rocoto", "rogue", "romero", "rrocket", "rt3000", "Rubble", "ruffian", "ruiner", "ruiner2", "ruiner3", "ruiner4", "rumpo", "rumpo2", "rumpo3", "ruston", "s80", "sabregt", "sabregt2", "Sadler", "sadler2", "Sanchez", "sanchez2", "sanctus", "sandking", "sandking2", "savage", "savestra", "sc1", "scarab", "scarab2", "scarab3", "schafter2", "schafter3", "schafter4", "schafter5", "schafter6", "schlagen", "schwarzer", "scorcher", "scramjet", "scrap", "seabreeze", "seashark", "seashark2", "seashark3", "seasparrow", "seasparrow2", "seasparrow3", "Seminole", "seminole2", "sentinel", "sentinel2", "sentinel3", "sentinel4", "serrano", "SEVEN70", "Shamal", "sheava", "SHERIFF", "sheriff2", "shinobi", "shotaro", "skylift", "slamtruck", "slamvan", "slamvan2", "slamvan3", "slamvan4", "slamvan5", "slamvan6", "sm722", "sovereign", "SPECTER", "SPECTER2", "speeder", "speeder2", "speedo", "speedo2", "speedo4", "speedo5", "squaddie", "squalo", "stafford", "stalion", "stalion2", "stanier", "starling", "stinger", "stingergt", "stingertt", "stockade", "stockade3", "stratum", "streamer216", "streiter", "stretch", "strikeforce", "stromberg", "Stryder", "Stunt", "submersible", "submersible2", "Sugoi", "sultan", "sultan2", "sultan3", "sultanrs", "Suntrap", "superd", "supervolito", "supervolito2", "Surano", "SURFER", "Surfer2", "surfer3", "surge", "swift", "swift2", "swinger", "t20", "Taco", "tahoma", "tailgater", "tailgater2", "taipan", "tampa", "tampa2", "tampa3", "tanker", "tanker2", "tankercar", "taxi", "technical", "technical2", "technical3", "tempesta", "tenf", "tenf2", "terbyte", "terminus", "tezeract", "thrax", "thrust", "thruster", "tigon", "TipTruck", "TipTruck2", "titan", "toreador", "torero", "torero2", "tornado", "tornado2", "tornado3", "tornado4", "tornado5", "tornado6", "toro", "toro2", "toros", "TOURBUS", "TOWTRUCK", "Towtruck2", "towtruck3", "towtruck4", "tr2", "tr3", "tr4", "TRACTOR", "tractor2", "tractor3", "trailerlarge", "trailerlogs", "trailers", "trailers2", "trailers3", "trailers4", "trailers5", "trailersmall", "trailersmall2", "Trash", "trash2", "trflat", "tribike", "tribike2", "tribike3", "trophytruck", "trophytruck2", "tropic", "tropic2", "tropos", "tug", "tula", "tulip", "tulip2", "turismo2", "turismo3", "turismor", "tvtrailer", "tvtrailer2", "tyrant", "tyrus", "utillitruck", "utillitruck2", "Utillitruck3", "vacca", "Vader", "vagner", "vagrant", "valkyrie", "valkyrie2", "vamos", "vectre", "velum", "velum2", "verlierer2", "verus", "vestra", "vetir", "veto", "veto2", "vigero", "vigero2", "vigero3", "vigilante", "vindicator", "virgo", "virgo2", "virgo3", "virtue", "viseris", "visione", "vivanite", "volatol", "volatus", "voltic", "voltic2", "voodoo", "voodoo2", "vortex", "vstr", "warrener", "warrener2", "washington", "wastelander", "weevil", "weevil2", "windsor", "windsor2", "winky", "wolfsbane", "xa21", "xls", "xls2", "yosemite", "yosemite2", "yosemite3", "youga", "youga2", "youga3", "youga4", "z190", "zeno", "zentorno", "zhaba", "zion", "zion2", "zion3", "zombiea", "zombieb", "zorrusso", "zr350", "zr380", "zr3802", "zr3803", "Ztype",}
local vehOffsets         = {
                    fc   = 0x001C,
                    ft   = 0x0014,
                    rc   = 0x0020,
                    rt   = 0x0018,
                    cg   = 0x0882,
                    ng   = 0x0880,
                    tg   = 0x0886,
                    vm   = 0x000C,
                    dfm  = 0x0014,
                    accm = 0x004C,
                    cofm = 0x0020,
                    bf   = 0x006C,
                }

local function csyontokyodrift()
    DriftTires       = false
    driftMode        = false
    speedBoost       = false
    sfx              = false
    ptfx             = false
    purge_started    = false
    nos_started      = false
    hornLight        = false
    autobrklight     = false
    launchCtrl       = false
    popsNbangs       = false
    nosPurge         = false
    has_xenon        = false
    rgbLights        = false
    loud_radio       = false
    DriftIntensity   = 0
    defaultXenon     = 0
    lightSpeed       = 1
    if nosptfx_t[1] ~= nil then
        for _, n in ipairs(nosptfx_t) do
            if GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(n) then
                GRAPHICS.STOP_PARTICLE_FX_LOOPED(n)
                GRAPHICS.REMOVE_PARTICLE_FX(n)
            end
        end
    end
    if purgePtfx_t[1] ~= nil then
        for _, p in ipairs(purgePtfx_t) do
            if GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(p) then
                GRAPHICS.STOP_PARTICLE_FX_LOOPED(p)
                GRAPHICS.REMOVE_PARTICLE_FX(p)
            end
        end
    end
    nosptfx_t   = {}
    purgePtfx_t = {}
end

local function filterVehNames()
    filteredNames = {}
    for _, veh in ipairs(gta_vehicles) do
        if VEHICLE.IS_THIS_MODEL_A_CAR(joaat(veh)) or VEHICLE.IS_THIS_MODEL_A_BIKE(joaat(veh)) or VEHICLE.IS_THIS_MODEL_A_QUADBIKE(joaat(veh)) then
            valid_veh = veh
            if string.find(string.lower(valid_veh), string.lower(search_term)) then
                table.insert(filteredNames, valid_veh)
            end
        end
    end
end

local function displayVehNames()
    filterVehNames()
    local vehNames = {}
    for _, veh in ipairs(filteredNames) do
        local vehName = vehicles.get_vehicle_display_name(joaat(veh))
        table.insert(vehNames, vehName)
    end
    vehSound_index, used = ImGui.ListBox("##Vehicle Names", vehSound_index, vehNames, #filteredNames)
end

local function helpmarker(colorFlag, text, color)
    if not disableTooltips then
        ImGui.SameLine()
        ImGui.TextDisabled("(?)")
        if ImGui.IsItemHovered() then
            ImGui.SetNextWindowBgAlpha(0.85)
            ImGui.BeginTooltip()
            if colorFlag == true then
                coloredText(text, color)
            else
                ImGui.PushTextWrapPos(ImGui.GetFontSize() * 20)
                ImGui.TextWrapped(text)
                ImGui.PopTextWrapPos()
            end
            ImGui.EndTooltip()
        end
    end
end

local function widgetToolTip(colorFlag, text, color)
    if not disableTooltips then
        if ImGui.IsItemHovered() then
            ImGui.SetNextWindowBgAlpha(0.85)
            ImGui.BeginTooltip()
            if colorFlag == true then
                coloredText(text, color)
            else
                ImGui.PushTextWrapPos(ImGui.GetFontSize() * 20)
                ImGui.TextWrapped(text)
                ImGui.PopTextWrapPos()
            end
            ImGui.EndTooltip()
        end
    end
end

local function resetLastVehState()
    -- placeholder func
end

local function onVehEnter()
    lastVeh         = PLAYER.GET_PLAYERS_LAST_VEHICLE()
    current_vehicle = PED.GET_VEHICLE_PED_IS_USING(self.get_ped())
    lastVehPtr      = memory.handle_to_ptr(lastVeh)
    currentVehPtr   = memory.handle_to_ptr(current_vehicle)
    if current_vehicle ~= lastVeh then
        resetLastVehState()
    end
    return lastVeh, lastVehPtr, current_vehicle, currentVehPtr
end

local function isDriving()
    local retBool
    if PED.IS_PED_SITTING_IN_ANY_VEHICLE(self.get_ped()) then
        if VEHICLE.GET_PED_IN_VEHICLE_SEAT(current_vehicle, -1, true) == self.get_ped() then
            retBool = true
        else
            retBool = false
        end
    else
        retBool = false
    end
    return retBool
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function is_script_active(script_name)
	return SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(script_name)) ~= 0
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

patch1 = scr_patch:new("appinternet", "TVPB", "59 ? ? 72 2E 02 01", 0, {0x2B, 0x00, 0x00})
patch2 = scr_patch:new("appinternet", "HTVB", "56 ? ? 70 2E 04 01 38 01", 0, {0x55})
patch3 = scr_patch:new("appinternet", "ABTV", "5D ? ? ? 06 56 ? ? 38 00 25 ? 50", 5, {0x55})

event.register_handler(menu_event.ScriptsReloaded, function()
    patch1:disable_patch()
    patch2:disable_patch()
    patch3:disable_patch()
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

gui.show_message("Csyon SubMenu", "Csyon Script loaded successfully!")

CSYON = gui.get_tab("**CSYON SubMenu 1.70**					  	**Created By CSYON**")

CSYON:add_text("		Game Build Version 3411		")
CSYON:add_text("					v9				")

CSYON:add_text("Your level                " .. stats.get_int(MPX() .. "CHAR_RANK_FM"))

CSYON:add_text("Your RP Value      " .. stats.get_int(MPX() .. "CHAR_XP_FM"))

CSYON:add_text("Current Crew Level   " .. stats.get_int("MPPLY_CURRENT_CREW_RANK"))

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Self = CSYON:add_tab("Self Options")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Misc = CSYON:add_tab("Miscouverys")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Vehicle = CSYON:add_tab("Vehicle Options")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Vehicle:add_imgui(function()
manufacturer = VEHICLE.GET_MAKE_NAME_FROM_VEHICLE_MODEL(ENTITY.GET_ENTITY_MODEL(current_vehicle))
mfr_name = (manufacturer:lower():gsub("^%l", string.upper))
vehicle_name = vehicles.get_vehicle_display_name(ENTITY.GET_ENTITY_MODEL(current_vehicle))
    if PED.IS_PED_IN_ANY_VEHICLE(self.get_ped(), true) then
        if validModel then
            ImGui.Text("Vehicle: "..mfr_name.." "..vehicle_name)
            ImGui.Spacing()
            driftMode, _ = ImGui.Checkbox("Activate Drift Mode", driftMode, true)
            helpmarker(false, "This will make your car lose grip. Hold [Left Shift] to drift")
            if driftMode then
                DriftTires = false
                ImGui.Spacing()
                ImGui.Text("Intensity:")
                ImGui.PushItemWidth(250)
                DriftIntensity, _ = ImGui.SliderInt("##Intensity", DriftIntensity, 0, 3)
                widgetToolTip(false, "0: No Grip (very stiff).\n1: Balanced (Recommended).\n2: Weak Drift.\n3: Weakest Drift.")
                ImGui.PopItemWidth()
            end
            DriftTires, _ = ImGui.Checkbox("Equip Drift Tires", DriftTires, true)
            helpmarker(false, "This will equip your car with drift tires whenver you press [Left Shift]. Your tires will be reset when you release the button.")
            if DriftTires then
                driftMode = false
            end
            -- ImGui.Separator();ImGui.Text("¤ Stancer ¤");ImGui.Spacing()
            -- ImGui.Indent()
            -- ImGui.PushItemWidth(180)
            -- ImGui.Text("Front Camber: ");ImGui.SameLine();fCamber, fCamberUsed = ImGui.SliderFloat("##frontcamber", fCamber, -0.50, 0.50)
            -- ImGui.Text("Rear Camber:  ");ImGui.SameLine();rCamber, rCamberUsed = ImGui.SliderFloat("##rearcamber", rCamber, -0.50, 0.50)
            -- ImGui.PopItemWidth()
            -- ImGui.Unindent()
            -- if fCamberUsed then
            --     _, _,_, currentVehPtr = onVehEnter()
            --     currentVehPtr:add(vehOffsets.fc):set_float(fCamber)
            -- end
            -- if rCamberUsed then
            --     _, _,_, currentVehPtr = onVehEnter()
            --     currentVehPtr:add(vehOffsets.rc):set_float(rCamber)
            -- end
            ImGui.Spacing();ImGui.Text("TIP: You can not use both options together.\10Choose one of the two. Experiment and find the\10style that suits you.")
        else
            ImGui.TextWrapped("\10You can only drift cars, trucks and quad bikes.\10\10")
        end

        ImGui.Separator();ImGui.Spacing();launchCtrl, _ = ImGui.Checkbox("Launch Control", launchCtrl, true)
        widgetToolTip(false, "When your vehicle is completely stopped, press and hold [Accelerate] + [Brake] for 3 seconds then let go of the brakes.")

        ImGui.SameLine();ImGui.Dummy(31, 1);ImGui.SameLine();speedBoost, _ = ImGui.Checkbox("NOS", speedBoost, true)
        widgetToolTip(false, "A speed boost that simulates nitrous. Gives you more power and increases your top speed when pressing [Left Shift].")
        if speedBoost then
            -- if not pussyShaver() then
                sfx, ptfx = true, true
                ImGui.SameLine();nosvfx, _ = ImGui.Checkbox("VFX", nosvfx, true)
                widgetToolTip(false, "Activates a visual effect on your screen when using NOS.")
            -- else
                -- gui.show_error("Csyon Tokyo Drift", "This option doesn't work on sex toys... I mean, electric vehicles.")
                -- speedBoost = false
            -- end
        else
            sfx, ptfx, nosvfx = false, false, false
        end

        loud_radio, used = ImGui.Checkbox("Big Subwoofer", loud_radio, true)
        widgetToolTip(false, "Makes your vehicle's radio sound louder from the outside. To notice the difference, activate this option then stand close to your car while the engine is running and the radio is on.")
        if loud_radio then
            script.run_in_fiber(function()
                AUDIO.SET_VEHICLE_RADIO_LOUD(current_vehicle, true)
            end)
        else
            script.run_in_fiber(function()
                AUDIO.SET_VEHICLE_RADIO_LOUD(current_vehicle, false)
            end)
        end

        ImGui.SameLine();ImGui.Dummy(32, 1);ImGui.SameLine();nosPurge, _ = ImGui.Checkbox("NOS Purge", nosPurge, true)
        widgetToolTip(false, "Press [X] on keyboard or [A] on controller to purge your NOS Fast & Furious style.")

        popsNbangs, _ = ImGui.Checkbox("Pops & Bangs", popsNbangs, true)
        widgetToolTip(false, "Enables exhaust pops whenever you let go of [Accelerate] from high RPM.")

        if popsNbangs then
            ImGui.SameLine();ImGui.Dummy(37, 1);ImGui.SameLine();louderPops, _ = ImGui.Checkbox("Louder Pops", louderPops, true)
            widgetToolTip(false, "Makes your pops & bangs sound extremely loud.")
            if not louderPops then
                popsnd, sndRef = "BOOT_POP", "DLC_VW_BODY_DISPOSAL_SOUNDS"
                flame_size = 0.42069
            else
                popsnd, sndRef = "SNIPER_FIRE", "DLC_BIKER_RESUPPLY_MEET_CONTACT_SOUNDS"
                flame_size = 1.5
            end
        end

        hornLight, _ = ImGui.Checkbox("High Beams on Horn", hornLight, true)
        widgetToolTip(false, "Flash high beams when honking.")

        ImGui.SameLine();autobrklight, _ = ImGui.Checkbox("Auto Brake Lights", autobrklight, true)
        widgetToolTip(false, "Automatically turns on the brake lights when your car is stopped.")

        holdF, _ = ImGui.Checkbox("Keep Engine On", holdF, true)
        widgetToolTip(false, "Brings back GTA IV's vehicle exit: Hold [F] to turn off the engine before exiting the vehicle or press normally to exit and keep it running.")

        ImGui.SameLine();ImGui.Dummy(25, 1);ImGui.SameLine();noJacking, _ = ImGui.Checkbox("Can't Touch This!", noJacking, true)
        widgetToolTip(false, "Prevent NPCs and players from carjacking you.")
        if noJacking then
            script.run_in_fiber(function()
                if not PED.GET_PED_CONFIG_FLAG(self.get_ped(), 398) then
                    PED.SET_PED_CONFIG_FLAG(self.get_ped(), 398, true)
                end
                if PED.GET_PED_CONFIG_FLAG(self.get_ped(), 177) then
                    PED.SET_PED_CONFIG_FLAG(self.get_ped(), 177, true)
                end
            end)
        else
            script.run_in_fiber(function()
                PED.SET_PED_CONFIG_FLAG(self.get_ped(), 177, false)
            end)
        end

        rgbLights, rgbToggled = ImGui.Checkbox("RGB Headlights", rgbLights, true)
        if rgbToggled then
            script.run_in_fiber(function()
                if not VEHICLE.IS_TOGGLE_MOD_ON(current_vehicle, 22) then
                    has_xenon = false
                else
                    has_xenon    = true
                    defaultXenon = VEHICLE.GET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle)
                end
            end)
        end
        if rgbLights then
            ImGui.SameLine();
            ImGui.PushItemWidth(120)
            lightSpeed, used = ImGui.SliderInt("RGB Speed", lightSpeed, 1, 3)
            ImGui.PopItemWidth()
        end
        ImGui.Spacing()
        if ImGui.Button("Change Engine Sound") then
            if is_car or is_bike or is_quad then
                open_sounds_window = true
            else
                open_sounds_window = false
                gui.show_error("Tokyo Drift", "This option only works on road vehicles.")
            end
        end
        if open_sounds_window then
            ImGui.SetNextWindowPos(740, 300, ImGuiCond.Appearing)
            ImGui.SetNextWindowSizeConstraints(100, 100, 600, 800)
            ImGui.Begin("Vehicle Sounds",  ImGuiWindowFlags.AlwaysAutoResize | ImGuiWindowFlags.NoTitleBar | ImGuiWindowFlags.NoCollapse)
            if ImGui.Button("Close") then
                open_sounds_window = false
            end
            ImGui.Spacing();ImGui.Spacing()
            ImGui.PushItemWidth(250)
            search_term, used = ImGui.InputTextWithHint("", "Search Vehicle Names", search_term, 32)
            if ImGui.IsItemActive() then
                is_typing = true
            else
                is_typing = false
            end
            ImGui.PushItemWidth(270)
            displayVehNames()
            ImGui.PopItemWidth()
            local selected_name = filteredNames[vehSound_index + 1]
            ImGui.Spacing()
            if ImGui.Button("Use This Sound") then
                script.run_in_fiber(function()
                    AUDIO.FORCE_USE_AUDIO_GAME_OBJECT(current_vehicle, selected_name)
                end)
            end
            ImGui.SameLine()
            if ImGui.Button("Restore Default") then
                script.run_in_fiber(function()
                    AUDIO.FORCE_USE_AUDIO_GAME_OBJECT(current_vehicle, vehicles.get_vehicle_display_name(ENTITY.GET_ENTITY_MODEL(current_vehicle)))
                end)
            end
            ImGui.End()
        end

        ImGui.SameLine();ImGui.Dummy(10, 1);ImGui.SameLine()
        local engineHealth = VEHICLE.GET_VEHICLE_ENGINE_HEALTH(current_vehicle)
        if engineHealth <= 300 then
            engineDestroyed = true
        else
            engineDestroyed = false
        end
        if engineDestroyed then
            engineButton_label = "Fix Engine"
            engine_hp          = 1000
        else
            engineButton_label = "Destroy Engine"
            engine_hp          = -4000
        end
        if ImGui.Button(engineButton_label) then
            script.run_in_fiber(function()
                VEHICLE.SET_VEHICLE_ENGINE_HEALTH(current_vehicle, engine_hp)
            end)
        end
        -- if NETWORK.NETWORK_IS_SESSION_ACTIVE() then
        --     ImGui.SameLine();ImGui.Dummy(40, 1);ImGui.SameLine();nodripfeed, used = ImGui.Checkbox("No Dripfeeding", nodripfeed, true)
        --     if nodripfeed then
        --       globals.set_int(2707347, 1)
        --     end
        -- end
    else
        ImGui.Text("\nPlease get in a vehicle!")
    end
        ImGui.Unindent()
        ImGui.EndPopup()
end)

script.register_looped("game input", function()
    if is_typing then
        PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
    end
    if PED.IS_PED_SITTING_IN_ANY_VEHICLE(self.get_ped()) then
        if validModel then
            if nosPurge then
                PAD.DISABLE_CONTROL_ACTION(0, 73, true)
            end
        end
        if speedBoost and PAD.IS_CONTROL_PRESSED(0, 71) then
            if validModel or is_boat or is_bike then
            -- prevent face planting when using NOS mid-air
                PAD.DISABLE_CONTROL_ACTION(0, 60, true)
                PAD.DISABLE_CONTROL_ACTION(0, 61, true)
                PAD.DISABLE_CONTROL_ACTION(0, 62, true)
            end
        end
        if holdF then
            if isDriving() and not is_typing then
                PAD.DISABLE_CONTROL_ACTION(0, 75, true)
            else
                timerB = 0
            end
        end
    end
end)

script.register_looped("TDFT", function(script)
    script:yield()
    if PED.IS_PED_SITTING_IN_ANY_VEHICLE(self.get_ped()) then
        _, _, current_vehicle, _ = onVehEnter()
        is_car  = VEHICLE.IS_THIS_MODEL_A_CAR(ENTITY.GET_ENTITY_MODEL(current_vehicle))
        is_quad = VEHICLE.IS_THIS_MODEL_A_QUADBIKE(ENTITY.GET_ENTITY_MODEL(current_vehicle))
        is_bike = VEHICLE.IS_THIS_MODEL_A_BIKE(ENTITY.GET_ENTITY_MODEL(current_vehicle))
        is_boat = VEHICLE.IS_THIS_MODEL_A_BOAT(ENTITY.GET_ENTITY_MODEL(current_vehicle)) or VEHICLE.IS_THIS_MODEL_A_JETSKI(ENTITY.GET_ENTITY_MODEL(current_vehicle))
        if is_car or is_quad then
            validModel = true
        else
            validModel = false
        end
        if validModel and DriftTires and PAD.IS_CONTROL_PRESSED(0, tdBtn) then
            VEHICLE.SET_DRIFT_TYRES(current_vehicle, true)
            VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 5.0)
        else
            VEHICLE.SET_DRIFT_TYRES(current_vehicle, false)
            VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 1.0)
        end
        script:yield()
        if validModel and driftMode and PAD.IS_CONTROL_PRESSED(0, tdBtn) and not DriftTires then
            VEHICLE.SET_VEHICLE_REDUCE_GRIP(current_vehicle, true)
            VEHICLE.SET_VEHICLE_REDUCE_GRIP_LEVEL(current_vehicle, DriftIntensity)
            VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 5.0)
        else
            VEHICLE.SET_VEHICLE_REDUCE_GRIP(current_vehicle, false)
            VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 1.0)
        end
        if speedBoost then
            if validModel or is_boat or is_bike then
                if VEHICLE.GET_IS_VEHICLE_ENGINE_RUNNING(current_vehicle) then
                    if PAD.IS_DISABLED_CONTROL_PRESSED(0, tdBtn) and PAD.IS_CONTROL_PRESSED(0, 71) then
                        VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 5.0)
                        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(current_vehicle, 100.0)
                        using_nos = true
                        if sfx then
                            AUDIO.SET_VEHICLE_BOOST_ACTIVE(current_vehicle, true)
                        else
                            AUDIO.SET_VEHICLE_BOOST_ACTIVE(current_vehicle, false)
                        end
                    end
                else
                    if PED.IS_PED_SITTING_IN_ANY_VEHICLE(self.get_ped()) then
                        if PAD.IS_DISABLED_CONTROL_PRESSED(0, tdBtn) and PAD.IS_CONTROL_PRESSED(0, 71) then
                            if VEHICLE.GET_VEHICLE_ENGINE_HEALTH(current_vehicle) < 300 then
                                failSound = AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Engine_fail", current_vehicle, "DLC_PILOT_ENGINE_FAILURE_SOUNDS", true, 0)
                                repeat
                                    script:sleep(50)
                                until
                                    AUDIO.HAS_SOUND_FINISHED(failSound) and PAD.IS_CONTROL_PRESSED(0, tdBtn) == false and PAD.IS_CONTROL_PRESSED(0, 71) == false
                                AUDIO.STOP_SOUND(failSound)
                            end
                        end
                    end
                end
            end
            if using_nos and PAD.IS_DISABLED_CONTROL_RELEASED(0, tdBtn) then
                VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 1.0)
                VEHICLE.MODIFY_VEHICLE_TOP_SPEED(current_vehicle, -1)
                AUDIO.SET_VEHICLE_BOOST_ACTIVE(current_vehicle, false)
                using_nos = false
            end
        end
        if hornLight then
            if not VEHICLE.GET_BOTH_VEHICLE_HEADLIGHTS_DAMAGED(current_vehicle) then
                if PAD.IS_CONTROL_PRESSED(0, 86) then
                    VEHICLE.SET_VEHICLE_LIGHTS(current_vehicle, 2)
                    VEHICLE.SET_VEHICLE_FULLBEAM(current_vehicle, true)
                    repeat
                        script:sleep(50)
                    until
                        PAD.IS_CONTROL_PRESSED(0, 86) == false
                    VEHICLE.SET_VEHICLE_FULLBEAM(current_vehicle, false)
                    VEHICLE.SET_VEHICLE_LIGHTS(current_vehicle, 0)
                end
            else
                if PAD.IS_CONTROL_JUST_RELEASED(0, 86) then
                    gui.show_warning("Tokyo Drift", "Your headlights are broken!")
                end
            end
        end
        if holdF then
            if PAD.IS_DISABLED_CONTROL_PRESSED(0, 75) then
                timerB = timerB + 1
                if timerB >= 15 then
                    PED.SET_PED_CONFIG_FLAG(self.get_ped(), 241, false)
                    TASK.TASK_LEAVE_VEHICLE(self.get_ped(), current_vehicle, 0)
                    timerB = 0
                end
            end
            if timerB >= 1 and timerB <= 10 then
                if PAD.IS_DISABLED_CONTROL_RELEASED(0, 75) then
                    PED.SET_PED_CONFIG_FLAG(self.get_ped(), 241, true)
                    TASK.TASK_LEAVE_VEHICLE(self.get_ped(), current_vehicle, 0)
                    timerB = 0
                end
            end
        else
            if PED.GET_PED_CONFIG_FLAG(self.get_ped(), 241, 1) then
                PED.SET_PED_CONFIG_FLAG(self.get_ped(), 241, false)
            end
        end
    else
        current_vehicle = 0
        if started_lct then
            started_lct = false
        end
        if started_popSound then
            started_popSound = false
        end
        if started_popSound2 then
            started_popSound2 = false
        end
    end
end)

script.register_looped("LCTRL", function(lct)
    if isDriving() then
        if launchCtrl then
            local notif_sound, notif_ref
            if NETWORK.NETWORK_IS_SESSION_ACTIVE() then
                notif_sound, notif_ref = "SELL", "GTAO_EXEC_SECUROSERV_COMPUTER_SOUNDS"
            else
                notif_sound, notif_ref = "MP_5_SECOND_TIMER", "HUD_FRONTEND_DEFAULT_SOUNDSET"
            end
            if validModel or is_bike or is_quad then
                if VEHICLE.IS_VEHICLE_STOPPED(current_vehicle) and VEHICLE.GET_IS_VEHICLE_ENGINE_RUNNING(current_vehicle) and VEHICLE.GET_VEHICLE_ENGINE_HEALTH(current_vehicle) > 300 then
                    if PAD.IS_CONTROL_PRESSED(0, 71) and PAD.IS_CONTROL_PRESSED(0, 72) then
                        started_lct = true
                        ENTITY.FREEZE_ENTITY_POSITION(current_vehicle, true)
                        timerA = timerA + 1
                        if timerA >= 150 then
                            gui.show_success("Csyon's SubMenu", "Launch Control Activated!")
                            AUDIO.PLAY_SOUND_FRONTEND(-1, notif_sound, notif_ref, true)
                            repeat
                                lct:sleep(100)
                            until PAD.IS_CONTROL_RELEASED(0, 72)
                            launch_active = true
                        end
                    elseif started_lct and timerA > 0 and timerA < 150 then
                        if PAD.IS_CONTROL_RELEASED(0, 71) or PAD.IS_CONTROL_RELEASED(0, 72) then
                            timerA = 0
                            ENTITY.FREEZE_ENTITY_POSITION(current_vehicle, false)
                            started_lct = false
                        end
                    end
                end
                if launch_active then
                    if PAD.IS_CONTROL_PRESSED(0, 71) and PAD.IS_CONTROL_RELEASED(0, 72) then
                        PHYSICS.SET_IN_ARENA_MODE(true)
                        VEHICLE.SET_VEHICLE_MAX_LAUNCH_ENGINE_REVS_(current_vehicle, -1)
                        VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 10)
                        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(current_vehicle, 100.0)
                        ENTITY.FREEZE_ENTITY_POSITION(current_vehicle, false)
                        VEHICLE.SET_VEHICLE_FORWARD_SPEED(current_vehicle, 9.3)
                        lct:sleep(4269)
                        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(current_vehicle, -1)
                        VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 1.0)
                        VEHICLE.SET_VEHICLE_MAX_LAUNCH_ENGINE_REVS_(current_vehicle, 1.0)
                        PHYSICS.SET_IN_ARENA_MODE(false)
                        launch_active = false
                        timerA = 0
                    end
                end
            end
        end
    else
        lct:yield()
    end
end)

script.register_looped("Auto Brake Lights", function()
    if autobrklight then
        if isDriving() then
            if VEHICLE.IS_VEHICLE_DRIVEABLE(current_vehicle) and VEHICLE.IS_VEHICLE_STOPPED(current_vehicle) and VEHICLE.GET_IS_VEHICLE_ENGINE_RUNNING(current_vehicle) then
                VEHICLE.SET_VEHICLE_BRAKE_LIGHTS(current_vehicle, true)
            end
        end
    end
end)

script.register_looped("NOS ptfx", function(spbptfx)
    if isDriving() then
        if speedBoost and ptfx then
            if validModel or is_boat or is_bike then
                if PAD.IS_DISABLED_CONTROL_PRESSED(0, tdBtn) and PAD.IS_CONTROL_PRESSED(0, 71) then
                    if VEHICLE.GET_IS_VEHICLE_ENGINE_RUNNING(current_vehicle) then
                        local effect  = "veh_xs_vehicle_mods"
                        local counter = 0
                        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(effect) do
                            STREAMING.REQUEST_NAMED_PTFX_ASSET(effect)
                            spbptfx:yield()
                            if counter > 100 then
                                return
                            else
                                counter = counter + 1
                            end
                        end
                        local exhaustCount = VEHICLE.GET_VEHICLE_MAX_EXHAUST_BONE_COUNT_() - 1
                        for i = 0, exhaustCount do
                            local retBool, boneIndex = VEHICLE.GET_VEHICLE_EXHAUST_BONE_(current_vehicle, i, retBool, boneIndex)
                            if retBool then
                                GRAPHICS.USE_PARTICLE_FX_ASSET(effect)
                                nosPtfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("veh_nitrous", current_vehicle, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, boneIndex, 1.0, false, false, false, 0, 0, 0)
                                table.insert(nosptfx_t, nosPtfx)
                                if nosvfx then
                                    GRAPHICS.ANIMPOSTFX_PLAY("DragRaceNitrous", 0, false)
                                end
                                nos_started = true
                            end
                        end
                        if nos_started then
                            repeat
                                spbptfx:sleep(50)
                            until
                                PAD.IS_DISABLED_CONTROL_RELEASED(0, tdBtn) or PAD.IS_CONTROL_RELEASED(0, 71)
                            if nosvfx then
                                GRAPHICS.ANIMPOSTFX_PLAY("DragRaceNitrousOut", 0, false)
                            end
                            if GRAPHICS.ANIMPOSTFX_IS_RUNNING("DragRaceNitrous") then
                                GRAPHICS.ANIMPOSTFX_STOP("DragRaceNitrous")
                            end
                            if GRAPHICS.ANIMPOSTFX_IS_RUNNING("DragRaceNitrousOut") then
                                GRAPHICS.ANIMPOSTFX_STOP("DragRaceNitrousOut")
                            end
                            for _, nos in ipairs(nosptfx_t) do
                                if GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(nos) then
                                    GRAPHICS.STOP_PARTICLE_FX_LOOPED(nos)
                                    GRAPHICS.REMOVE_PARTICLE_FX(nos)
                                    nos_started = false
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

script.register_looped("2-step", function(twostep)
    if isDriving then
        if launchCtrl then
            if validModel or is_bike or is_quad then
                if VEHICLE.IS_VEHICLE_STOPPED(current_vehicle) and VEHICLE.GET_IS_VEHICLE_ENGINE_RUNNING(current_vehicle) and VEHICLE.GET_VEHICLE_ENGINE_HEALTH(current_vehicle) >= 300 then
                    if PAD.IS_CONTROL_PRESSED(0, 71) and PAD.IS_CONTROL_PRESSED(0, 72) then
                        local asset     = "core"
                        local counter   = 0
                        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(asset) do
                            STREAMING.REQUEST_NAMED_PTFX_ASSET(asset)
                            twostep:yield()
                            if counter > 100 then
                                return
                            else
                                counter = counter + 1
                            end
                        end
                        local exhaustCount = VEHICLE.GET_VEHICLE_MAX_EXHAUST_BONE_COUNT_() - 1
                        for i = 0, exhaustCount do
                            local retBool, boneIndex = VEHICLE.GET_VEHICLE_EXHAUST_BONE_(current_vehicle, i, retBool, boneIndex)
                            if retBool then
                                GRAPHICS.USE_PARTICLE_FX_ASSET(asset)
                                lctPtfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("veh_backfire", current_vehicle, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, boneIndex, 0.69420, false, false, false, 0, 0, 0)
                                table.insert(lctPtfx_t, lctPtfx)
                                twostep_started = true
                            end
                        end
                        if twostep_started then
                            repeat
                                twostep:sleep(50)
                            until PAD.IS_CONTROL_RELEASED(0, 72) or launch_active == false
                            for _, bfire in ipairs(lctPtfx_t) do
                                if GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(bfire) then
                                    GRAPHICS.STOP_PARTICLE_FX_LOOPED(bfire)
                                    GRAPHICS.REMOVE_PARTICLE_FX(bfire)
                                end
                            end
                            twostep_started = false
                        end
                    end
                end
            end
        end
    end
end)

script.register_looped("LCTRL SFX", function(tstp)
    if isDriving() then
        if launchCtrl then
            if lctPtfx_t[1] ~= nil then
                local popSound
                if VEHICLE.IS_VEHICLE_STOPPED(current_vehicle) and PAD.IS_CONTROL_PRESSED(0, 71) and PAD.IS_CONTROL_PRESSED(0, 72) then
                    for _, p in ipairs(lctPtfx_t) do
                        if GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(p) then
                            local randStime = math.random(60, 120)
                            popSound = AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BOOT_POP", current_vehicle, "DLC_VW_BODY_DISPOSAL_SOUNDS", true, 0)
                            AUDIO.SET_AUDIO_SPECIAL_EFFECT_MODE(1)
                            table.insert(popSounds_t, popSound)
                            tstp:sleep(randStime)
                            started_popSound = true
                        end
                    end
                end
                if started_popSound then
                    if PAD.IS_CONTROL_RELEASED(0, 71) or PAD.IS_CONTROL_RELEASED(0, 72) then
                        for _, s in ipairs(popSounds_t) do
                            AUDIO.STOP_SOUND(s)
                        end
                    end
                end
            end
        end

        if popsNbangs then
            if VEHICLE.IS_VEHICLE_STOPPED(current_vehicle) then
                rpmThreshold = 0.45
            else
                rpmThreshold = 0.69
            end
            local currRPM  = VEHICLE.GET_VEHICLE_CURRENT_REV_RATIO_(current_vehicle)
            local currGear = VEHICLE.GET_VEHICLE_CURRENT_DRIVE_GEAR_(current_vehicle)
            if PAD.IS_CONTROL_RELEASED(0, 71) and currRPM < 1.0 and currRPM > rpmThreshold and currGear ~= 0 then
                local popSound2
                local randStime = math.random(60, 200)
                popSound2 = AUDIO.PLAY_SOUND_FROM_ENTITY(-1, popsnd, current_vehicle, sndRef, true, 0)
                table.insert(popSounds_t, popSound2)
                tstp:sleep(randStime)
                started_popSound2 = true
            end
            if started_popSound2 then
                currRPM = VEHICLE.GET_VEHICLE_CURRENT_REV_RATIO_(current_vehicle)
                if PAD.IS_CONTROL_PRESSED(0, 71) or currRPM < rpmThreshold then
                    for _, s in ipairs(popSounds_t) do
                        AUDIO.STOP_SOUND(s)
                    end
                end
            end
        end
    else
        tstp:yield()
    end
end)

script.register_looped("pops&bangs", function(pnb)
    if isDriving() and VEHICLE.GET_IS_VEHICLE_ENGINE_RUNNING(current_vehicle) then
        if is_car or is_bike or is_quad then
            if popsNbangs then
                local counter  = 0
                local asset    = "core"
                local currRPM  = VEHICLE.GET_VEHICLE_CURRENT_REV_RATIO_(current_vehicle)
                local currGear = VEHICLE.GET_VEHICLE_CURRENT_DRIVE_GEAR_(current_vehicle)
                if VEHICLE.IS_VEHICLE_STOPPED(current_vehicle) then
                    rpmThreshold = 0.45
                else
                    rpmThreshold = 0.69
                end
                while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(asset) do
                    STREAMING.REQUEST_NAMED_PTFX_ASSET(asset)
                    pnb:yield()
                    if counter > 100 then
                        return
                    else
                        counter = counter + 1
                    end
                end
                if PAD.IS_CONTROL_RELEASED(0, 71) and currRPM < 1.0 and currRPM > rpmThreshold and currGear ~= 0 then
                    local exhaustCount = VEHICLE.GET_VEHICLE_MAX_EXHAUST_BONE_COUNT_() - 1
                    for i = 0, exhaustCount do
                        local retBool, boneIndex = VEHICLE.GET_VEHICLE_EXHAUST_BONE_(current_vehicle, i, retBool, boneIndex)
                        if retBool then
                            currRPM = VEHICLE.GET_VEHICLE_CURRENT_REV_RATIO_(current_vehicle)
                            if currRPM < 1.0 and currRPM > 0.55 then
                                GRAPHICS.USE_PARTICLE_FX_ASSET(asset)
                                popsPtfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("veh_backfire", current_vehicle, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, boneIndex, flame_size, false, false, false, 0, 0, 0)
                                GRAPHICS.STOP_PARTICLE_FX_LOOPED(popsPtfx)
                                table.insert(popsPtfx_t, popsPtfx)
                                started_popSound2 = true
                            end
                        end
                    end
                end
                if started_popSound2 then
                    currRPM = VEHICLE.GET_VEHICLE_CURRENT_REV_RATIO_(current_vehicle)
                    if PAD.IS_CONTROL_PRESSED(0, 71) or currRPM < rpmThreshold then
                        for _, bfire in ipairs(popsPtfx_t) do
                            if GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(bfire) then
                                GRAPHICS.STOP_PARTICLE_FX_LOOPED(bfire)
                                GRAPHICS.REMOVE_PARTICLE_FX(bfire)
                            end
                        end
                        for _, s in ipairs(popSounds_t) do
                            AUDIO.STOP_SOUND(s)
                        end
                    end
                end
            end
        end
    else
        pnb:yield()
    end
end)

script.register_looped("Purge", function(nosprg)
    if isDriving() then
        if nosPurge and validModel or nosPurge and is_bike then
            if PAD.IS_DISABLED_CONTROL_PRESSED(0, 73) then
                local dict       = "core"
                local purgeBones = {"suspension_lf", "suspension_rf"}
                if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(dict) then
                    STREAMING.REQUEST_NAMED_PTFX_ASSET(dict)
                    coroutine.yield()
                end
                for _, boneName in ipairs(purgeBones) do
                    local purge_exit = ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(current_vehicle, boneName)
                    if boneName == "suspension_lf" then
                        rotZ = -180.0
                        posX = -0.3
                    else
                        rotZ = 0.0
                        posX = 0.3
                    end
                    GRAPHICS.USE_PARTICLE_FX_ASSET(dict)
                    purgePtfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("weap_extinguisher", current_vehicle, posX, -0.33, 0.2, 0.0, -17.5, rotZ, purge_exit, 0.4, false, false, false, 0, 0, 0)
                    table.insert(purgePtfx_t, purgePtfx)
                    purge_started = true
                end
                if purge_started then
                    repeat
                        nosprg:sleep(50)
                    until
                        PAD.IS_DISABLED_CONTROL_RELEASED(0, 73)
                    for _, purge in ipairs(purgePtfx_t) do
                        if GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(purge) then
                            GRAPHICS.STOP_PARTICLE_FX_LOOPED(purge)
                            GRAPHICS.REMOVE_PARTICLE_FX(purge)
                            purge_started = false
                        end
                    end
                end
            end
        end
    else
        nosprg:yield()
    end
end)

script.register_looped("rgbheadlights", function(rgb)
    if rgbLights then
        for i = 0, 14 do
            if rgbLights and not VEHICLE.GET_BOTH_VEHICLE_HEADLIGHTS_DAMAGED(current_vehicle) then
                if not has_xenon then
                    VEHICLE.TOGGLE_VEHICLE_MOD(current_vehicle, 22, true)
                end
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.9)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.8)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.7)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.6)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.5)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle, i)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.4)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.3)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.2)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.1)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle, i)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.2)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.3)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.4)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.5)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle, i)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.6)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.7)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.8)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.9)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 1.0)
                VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle, i)
                rgb:sleep(100 / lightSpeed)
            else
                if has_xenon then
                    VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 1.0)
                    VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle, defaultXenon)
                    break
                else
                    VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 1.0)
                    VEHICLE.TOGGLE_VEHICLE_MOD(current_vehicle, 22, false)
                    break
                end
            end
        end
    else
        rgb:yield()
    end
end)


event.register_handler(menu_event.MenuUnloaded, function()
    csyontokyodrift()
end)
event.register_handler(menu_event.ScriptsReloaded, function()
    csyontokyodrift()
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

AGCT = Self:add_checkbox("Unlock Gender Change")
script.register_looped("UnlockGenderChange", function(script)
	script:yield()
	if AGCT:is_enabled() then
		stats.set_int(MPX() .. "ALLOW_GENDER_CHANGE", 52)
	else
		stats.set_int(MPX() .. "ALLOW_GENDER_CHANGE", 52)
	end
end)

RTPT = Self:add_checkbox("Remove Transaction Error")
script.register_looped("Remove Transaction Error", function(script)
	script:yield()
	if RTPT:is_enabled() then
		globals.set_int(4537456, 0)
		globals.set_int(4537457, 0)
		globals.set_int(4537458, 0)
	else
	end
end)

Self:add_button("Remove Orbital Cannon Cooldown", function()
	stats.set_int(MPX() .. "ORBITAL_CANNON_COOLDOWN", 0)
end)

Self:add_button("Refil Nightclub Popularity", function()
	stats.set_int(MPX() .. "CLUB_POPULARITY", 1000)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Self:add_button("Refill Inventory/Armour", function()
	stats.set_int(MPX() .. "NO_BOUGHT_YUM_SNACKS", 30)
	stats.set_int(MPX() .. "NO_BOUGHT_HEALTH_SNACKS", 15)
	stats.set_int(MPX() .. "NO_BOUGHT_EPIC_SNACKS", 5)
	stats.set_int(MPX() .. "NUMBER_OF_CHAMP_BOUGHT", 5)
	stats.set_int(MPX() .. "NUMBER_OF_ORANGE_BOUGHT", 11)
	stats.set_int(MPX() .. "NUMBER_OF_BOURGE_BOUGHT", 10)
	stats.set_int(MPX() .. "NUMBER_OF_SPRUNK_BOUGHT", 10)
	stats.set_int(MPX() .. "CIGARETTES_BOUGHT", 20)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_1_COUNT", 10)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_2_COUNT", 10)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_3_COUNT", 10)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_4_COUNT", 10)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_5_COUNT", 10)
	stats.set_int(MPX() .. "BREATHING_APPAR_BOUGHT", 20)
end)

Self:add_button("Refill Inv/Armour x1000", function()
	stats.set_int(MPX() .. "NO_BOUGHT_YUM_SNACKS", 1000)
	stats.set_int(MPX() .. "NO_BOUGHT_HEALTH_SNACKS", 1000)
	stats.set_int(MPX() .. "NO_BOUGHT_EPIC_SNACKS", 1000)
	stats.set_int(MPX() .. "NUMBER_OF_CHAMP_BOUGHT", 1000)
	stats.set_int(MPX() .. "NUMBER_OF_ORANGE_BOUGHT", 1000)
	stats.set_int(MPX() .. "NUMBER_OF_BOURGE_BOUGHT", 1000)
	stats.set_int(MPX() .. "NUMBER_OF_SPRUNK_BOUGHT", 1000)
	stats.set_int(MPX() .. "CIGARETTES_BOUGHT", 1000)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_1_COUNT", 1000)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_2_COUNT", 1000)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_3_COUNT", 1000)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_4_COUNT", 1000)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_5_COUNT", 1000)
	stats.set_int(MPX() .. "BREATHING_APPAR_BOUGHT", 1000)
end)

Self:add_separator()

Self:add_text("Bad Sport")

BadSportCombo = 0
Self:add_imgui(function()
	ImGui.PushItemWidth(140)
	BadSportCombo = ImGui.Combo("##BadSport", BadSportCombo, { "Remove", "Add" }, 2)
end)

local function BadSport(State, Overall, Bool)
	script.run_in_fiber(function(script)
		gui.show_message("Bad Sport", "Change Session  to Apply")
		script:sleep(1000)
		stats.set_int("MPPLY_BADSPORT_MESSAGE", State)
		stats.set_int("MPPLY_BADSPORT_MESSAGE", State)
		stats.set_float("MPPLY_OVERALL_BADSPORT", Overall)
		stats.set_bool("MPPLY_CHAR_IS_BADSPORT", Bool)
		globals.set_int(1575035, 11)
		globals.set_int(1574589, 1)
		script:sleep(300)
		globals.set_int(1574589, 0)
	end)
end

Self:add_sameline()

Self:add_button("Execute Bad Sport", function()
	if BadSportCombo == 0 then
		BadSport(0, 0, false) -- Removes Bad Sport
	else
		BadSport(1, 3000, true) -- Add's Bad Sport
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

StoryCharacters = CSYON:add_tab("Story Mode")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local singleplayer_global  = 113969
local crew_unlocked_bitset = singleplayer_global + 1 + 116 --MISC::REGISTER_INT_TO_SAVE(&(Global_113969.f_1.f_116), "Crew_Unlocked_Bitset");
local car_mods_bitset      = singleplayer_global + 2366 + 539 + 2241 --STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_wheelsmoke"); shop_controller.c

CurrentSPMoneyValue = stats.get_int(SPX() .. "TOTAL_CASH")
StoryCharacters:add_imgui(function()
	CurrentSPMoneyValue, used = ImGui.SliderInt("Current Character Cash", CurrentSPMoneyValue, 1, 2147483646)
	if used then
		stats.set_int(SPX() .. "TOTAL_CASH", CurrentSPMoneyValue)
	end
end)

StoryCharacters:add_separator()

StoryCharacters:add_button("Add 1 Mil Cash $", function()
	stats.set_int(SPX() .. "TOTAL_CASH", stats.get_int(SPX() .. "TOTAL_CASH") + 1000000)
end)

StoryCharacters:add_button("Add 10 Mil Cash $", function()
	stats.set_int(SPX() .. "TOTAL_CASH", stats.get_int(SPX() .. "TOTAL_CASH") + 10000000)
end)

StoryCharacters:add_button("Add 100 Mil Cash $", function()
	stats.set_int(SPX() .. "TOTAL_CASH", stats.get_int(SPX() .. "TOTAL_CASH") + 100000000)
end)

StoryCharacters:add_button("Add 1 Bil Cash $", function()
	stats.set_int(SPX() .. "TOTAL_CASH", stats.get_int(SPX() .. "TOTAL_CASH") + 1000000000)
end)

StoryCharacters:add_separator()

StoryCharacters:add_button("Max Current Character Skills", function()
	stats.set_int(SPX() .. "SPECIAL_ABILITY_UNLOCKED", 100)
	stats.set_float(SPX() .. "DIST_RUNNING", 175 * 100)
	stats.set_int(SPX() .. "TIME_UNDERWATER", 30 * 60 * 1000 * 100)
	stats.set_int(SPX() .. "UNARMED_HITS", 20 * 100)
	stats.set_int(SPX() .. "NUMBER_NEAR_MISS", 50 * 100)
	stats.set_int(SPX() .. "PLANE_LANDINGS", 10 * 100)
	stats.set_int(SPX() .. "KILLS_STEALTH", 2 * 100)
	stats.set_int(SPX() .. "HITS_MISSION", 40 * 100)
	stats.set_int(SPX() .. "HITS_PEDS_VEHICLES", 80 * 100)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Recoverys = CSYON:add_tab("Recoverys")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local rp = {
	0,
	800,
	2100,
	3800,
	6100,
	9500,
	12500,
	16000,
	19800,
	24000,
	28500,
	33400,
	38700,
	44200,
	50200,
	56400,
	63000,
	69900,
	77100,
	84700,
	92500,
	100700,
	109200,
	118000,
	127100,
	136500,
	146200,
	156200,
	166500,
	177100,
	188000,
	199200,
	210700,
	222400,
	234500,
	246800,
	259400,
	272300,
	285500,
	299000,
	312700,
	326800,
	341000,
	355600,
	370500,
	385600,
	401000,
	416600,
	432600,
	448800,
	465200,
	482000,
	499000,
	516300,
	533800,
	551600,
	569600,
	588000,
	606500,
	625400,
	644500,
	663800,
	683400,
	703300,
	723400,
	743800,
	764500,
	785400,
	806500,
	827900,
	849600,
	871500,
	893600,
	916000,
	938700,
	961600,
	984700,
	1008100,
	1031800,
	1055700,
	1079800,
	1104200,
	1128800,
	1153700,
	1178800,
	1204200,
	1229800,
	1255600,
	1281700,
	1308100,
	1334600,
	1361400,
	1388500,
	1415800,
	1443300,
	1471100,
	1499100,
	1527300,
	1555800,
	1584350,
	1612950,
	1641600,
	1670300,
	1699050,
	1727850,
	1756700,
	1785600,
	1814550,
	1843550,
	1872600,
	1901700,
	1930850,
	1960050,
	1989300,
	2018600,
	2047950,
	2077350,
	2106800,
	2136300,
	2165850,
	2195450,
	2225100,
	2254800,
	2284550,
	2314350,
	2344200,
	2374100,
	2404050,
	2434050,
	2464100,
	2494200,
	2524350,
	2554550,
	2584800,
	2615100,
	2645450,
	2675850,
	2706300,
	2736800,
	2767350,
	2797950,
	2828600,
	2859300,
	2890050,
	2920850,
	2951700,
	2982600,
	3013550,
	3044550,
	3075600,
	3106700,
	3137850,
	3169050,
	3200300,
	3231600,
	3262950,
	3294350,
	3325800,
	3357300,
	3388850,
	3420450,
	3452100,
	3483800,
	3515550,
	3547350,
	3579200,
	3611100,
	3643050,
	3675050,
	3707100,
	3739200,
	3771350,
	3803550,
	3835800,
	3868100,
	3900450,
	3932850,
	3965300,
	3997800,
	4030350,
	4062950,
	4095600,
	4128300,
	4161050,
	4193850,
	4226700,
	4259600,
	4292550,
	4325550,
	4358600,
	4391700,
	4424850,
	4458050,
	4491300,
	4524600,
	4557950,
	4591350,
	4624800,
	4658300,
	4691850,
	4725450,
	4759100,
	4792800,
	4826550,
	4860350,
	4894200,
	4928100,
	4962050,
	4996050,
	5030100,
	5064200,
	5098350,
	5132550,
	5166800,
	5201100,
	5235450,
	5269850,
	5304300,
	5338800,
	5373350,
	5407950,
	5442600,
	5477300,
	5512050,
	5546850,
	5581700,
	5616600,
	5651550,
	5686550,
	5721600,
	5756700,
	5791850,
	5827050,
	5862300,
	5897600,
	5932950,
	5968350,
	6003800,
	6039300,
	6074850,
	6110450,
	6146100,
	6181800,
	6217550,
	6253350,
	6289200,
	6325100,
	6361050,
	6397050,
	6433100,
	6469200,
	6505350,
	6541550,
	6577800,
	6614100,
	6650450,
	6686850,
	6723300,
	6759800,
	6796350,
	6832950,
	6869600,
	6906300,
	6943050,
	6979850,
	7016700,
	7053600,
	7090550,
	7127550,
	7164600,
	7201700,
	7238850,
	7276050,
	7313300,
	7350600,
	7387950,
	7425350,
	7462800,
	7500300,
	7537850,
	7575450,
	7613100,
	7650800,
	7688550,
	7726350,
	7764200,
	7802100,
	7840050,
	7878050,
	7916100,
	7954200,
	7992350,
	8030550,
	8068800,
	8107100,
	8145450,
	8183850,
	8222300,
	8260800,
	8299350,
	8337950,
	8376600,
	8415300,
	8454050,
	8492850,
	8531700,
	8570600,
	8609550,
	8648550,
	8687600,
	8726700,
	8765850,
	8805050,
	8844300,
	8883600,
	8922950,
	8962350,
	9001800,
	9041300,
	9080850,
	9120450,
	9160100,
	9199800,
	9239550,
	9279350,
	9319200,
	9359100,
	9399050,
	9439050,
	9479100,
	9519200,
	9559350,
	9599550,
	9639800,
	9680100,
	9720450,
	9760850,
	9801300,
	9841800,
	9882350,
	9922950,
	9963600,
	10004300,
	10045050,
	10085850,
	10126700,
	10167600,
	10208550,
	10249550,
	10290600,
	10331700,
	10372850,
	10414050,
	10455300,
	10496600,
	10537950,
	10579350,
	10620800,
	10662300,
	10703850,
	10745450,
	10787100,
	10828800,
	10870550,
	10912350,
	10954200,
	10996100,
	11038050,
	11080050,
	11122100,
	11164200,
	11206350,
	11248550,
	11290800,
	11333100,
	11375450,
	11417850,
	11460300,
	11502800,
	11545350,
	11587950,
	11630600,
	11673300,
	11716050,
	11758850,
	11801700,
	11844600,
	11887550,
	11930550,
	11973600,
	12016700,
	12059850,
	12103050,
	12146300,
	12189600,
	12232950,
	12276350,
	12319800,
	12363300,
	12406850,
	12450450,
	12494100,
	12537800,
	12581550,
	12625350,
	12669200,
	12713100,
	12757050,
	12801050,
	12845100,
	12889200,
	12933350,
	12977550,
	13021800,
	13066100,
	13110450,
	13154850,
	13199300,
	13243800,
	13288350,
	13332950,
	13377600,
	13422300,
	13467050,
	13511850,
	13556700,
	13601600,
	13646550,
	13691550,
	13736600,
	13781700,
	13826850,
	13872050,
	13917300,
	13962600,
	14007950,
	14053350,
	14098800,
	14144300,
	14189850,
	14235450,
	14281100,
	14326800,
	14372550,
	14418350,
	14464200,
	14510100,
	14556050,
	14602050,
	14648100,
	14694200,
	14740350,
	14786550,
	14832800,
	14879100,
	14925450,
	14971850,
	15018300,
	15064800,
	15111350,
	15157950,
	15204600,
	15251300,
	15298050,
	15344850,
	15391700,
	15438600,
	15485550,
	15532550,
	15579600,
	15626700,
	15673850,
	15721050,
	15768300,
	15815600,
	15862950,
	15910350,
	15957800,
	16005300,
	16052850,
	16100450,
	16148100,
	16195800,
	16243550,
	16291350,
	16339200,
	16387100,
	16435050,
	16483050,
	16531100,
	16579200,
	16627350,
	16675550,
	16723800,
	16772100,
	16820450,
	16868850,
	16917300,
	16965800,
	17014350,
	17062950,
	17111600,
	17160300,
	17209050,
	17257850,
	17306700,
	17355600,
	17404550,
	17453550,
	17502600,
	17551700,
	17600850,
	17650050,
	17699300,
	17748600,
	17797950,
	17847350,
	17896800,
	17946300,
	17995850,
	18045450,
	18095100,
	18144800,
	18194550,
	18244350,
	18294200,
	18344100,
	18394050,
	18444050,
	18494100,
	18544200,
	18594350,
	18644550,
	18694800,
	18745100,
	18795450,
	18845850,
	18896300,
	18946800,
	18997350,
	19047950,
	19098600,
	19149300,
	19200050,
	19250850,
	19301700,
	19352600,
	19403550,
	19454550,
	19505600,
	19556700,
	19607850,
	19659050,
	19710300,
	19761600,
	19812950,
	19864350,
	19915800,
	19967300,
	20018850,
	20070450,
	20122100,
	20173800,
	20225550,
	20277350,
	20329200,
	20381100,
	20433050,
	20485050,
	20537100,
	20589200,
	20641350,
	20693550,
	20745800,
	20798100,
	20850450,
	20902850,
	20955300,
	21007800,
	21060350,
	21112950,
	21165600,
	21218300,
	21271050,
	21323850,
	21376700,
	21429600,
	21482550,
	21535550,
	21588600,
	21641700,
	21694850,
	21748050,
	21801300,
	21854600,
	21907950,
	21961350,
	22014800,
	22068300,
	22121850,
	22175450,
	22229100,
	22282800,
	22336550,
	22390350,
	22444200,
	22498100,
	22552050,
	22606050,
	22660100,
	22714200,
	22768350,
	22822550,
	22876800,
	22931100,
	22985450,
	23039850,
	23094300,
	23148800,
	23203350,
	23257950,
	23312600,
	23367300,
	23422050,
	23476850,
	23531700,
	23586600,
	23641550,
	23696550,
	23751600,
	23806700,
	23861850,
	23917050,
	23972300,
	24027600,
	24082950,
	24138350,
	24193800,
	24249300,
	24304850,
	24360450,
	24416100,
	24471800,
	24527550,
	24583350,
	24639200,
	24695100,
	24751050,
	24807050,
	24863100,
	24919200,
	24975350,
	25031550,
	25087800,
	25144100,
	25200450,
	25256850,
	25313300,
	25369800,
	25426350,
	25482950,
	25539600,
	25596300,
	25653050,
	25709850,
	25766700,
	25823600,
	25880550,
	25937550,
	25994600,
	26051700,
	26108850,
	26166050,
	26223300,
	26280600,
	26337950,
	26395350,
	26452800,
	26510300,
	26567850,
	26625450,
	26683100,
	26740800,
	26798550,
	26856350,
	26914200,
	26972100,
	27030050,
	27088050,
	27146100,
	27204200,
	27262350,
	27320550,
	27378800,
	27437100,
	27495450,
	27553850,
	27612300,
	27670800,
	27729350,
	27787950,
	27846600,
	27905300,
	27964050,
	28022850,
	28081700,
	28140600,
	28199550,
	28258550,
	28317600,
	28376700,
	28435850,
	28495050,
	28554300,
	28613600,
	28672950,
	28732350,
	28791800,
	28851300,
	28910850,
	28970450,
	29030100,
	29089800,
	29149550,
	29209350,
	29269200,
	29329100,
	29389050,
	29449050,
	29509100,
	29569200,
	29629350,
	29689550,
	29749800,
	29810100,
	29870450,
	29930850,
	29991300,
	30051800,
	30112350,
	30172950,
	30233600,
	30294300,
	30355050,
	30415850,
	30476700,
	30537600,
	30598550,
	30659550,
	30720600,
	30781700,
	30842850,
	30904050,
	30965300,
	31026600,
	31087950,
	31149350,
	31210800,
	31272300,
	31333850,
	31395450,
	31457100,
	31518800,
	31580550,
	31642350,
	31704200,
	31766100,
	31828050,
	31890050,
	31952100,
	32014200,
	32076350,
	32138550,
	32200800,
	32263100,
	32325450,
	32387850,
	32450300,
	32512800,
	32575350,
	32637950,
	32700600,
	32763300,
	32826050,
	32888850,
	32951700,
	33014600,
	33077550,
	33140550,
	33203600,
	33266700,
	33329850,
	33393050,
	33456300,
	33519600,
	33582950,
	33646350,
	33709800,
	33773300,
	33836850,
	33900450,
	33964100,
	34027800,
	34091550,
	34155350,
	34219200,
	34283100,
	34347050,
	34411050,
	34475100,
	34539200,
	34603350,
	34667550,
	34731800,
	34796100,
	34860450,
	34924850,
	34989300,
	35053800,
	35118350,
	35182950,
	35247600,
	35312300,
	35377050,
	35441850,
	35506700,
	35571600,
	35636550,
	35701550,
	35766600,
	35831700,
	35896850,
	35962050,
	36027300,
	36092600,
	36157950,
	36223350,
	36288800,
	36354300,
	36419850,
	36485450,
	36551100,
	36616800,
	36682550,
	36748350,
	36814200,
	36880100,
	36946050,
	37012050,
	37078100,
	37144200,
	37210350,
	37276550,
	37342800,
	37409100,
	37475450,
	37541850,
	37608300,
	37674800,
	37741350,
	37807950,
	37874600,
	37941300,
	38008050,
	38074850,
	38141700,
	38208600,
	38275550,
	38342550,
	38409600,
	38476700,
	38543850,
	38611050,
	38678300,
	38745600,
	38812950,
	38880350,
	38947800,
	39015300,
	39082850,
	39150450,
	39218100,
	39285800,
	39353550,
	39421350,
	39489200,
	39557100,
	39625050,
	39693050,
	39761100,
	39829200,
	39897350,
	39965550,
	40033800,
	40102100,
	40170450,
	40238850,
	40307300,
	40375800,
	40444350,
	40512950,
	40581600,
	40650300,
	40719050,
	40787850,
	40856700,
	40925600,
	40994550,
	41063550,
	41132600,
	41201700,
	41270850,
	41340050,
	41409300,
	41478600,
	41547950,
	41617350,
	41686800,
	41756300,
	41825850,
	41895450,
	41965100,
	42034800,
	42104550,
	42174350,
	42244200,
	42314100,
	42384050,
	42454050,
	42524100,
	42594200,
	42664350,
	42734550,
	42804800,
	42875100,
	42945450,
	43015850,
	43086300,
	43156800,
	43227350,
	43297950,
	43368600,
	43439300,
	43510050,
	43580850,
	43651700,
	43722600,
	43793550,
	43864550,
	43935600,
	44006700,
	44077850,
	44149050,
	44220300,
	44291600,
	44362950,
	44434350,
	44505800,
	44577300,
	44648850,
	44720450,
	44792100,
	44863800,
	44935550,
	45007350,
	45079200,
	45151100,
	45223050,
	45295050,
	45367100,
	45439200,
	45511350,
	45583550,
	45655800,
	45728100,
	45800450,
	45872850,
	45945300,
	46017800,
	46090350,
	46162950,
	46235600,
	46308300,
	46381050,
	46453850,
	46526700,
	46599600,
	46672550,
	46745550,
	46818600,
	46891700,
	46964850,
	47038050,
	47111300,
	47184600,
	47257950,
	47331350,
	47404800,
	47478300,
	47551850,
	47625450,
	47699100,
	47772800,
	47846550,
	47920350,
	47994200,
	48068100,
	48142050,
	48216050,
	48290100,
	48364200,
	48438350,
	48512550,
	48586800,
	48661100,
	48735450,
	48809850,
	48884300,
	48958800,
	49033350,
	49107950,
	49182600,
	49257300,
	49332050,
	49406850,
	49481700,
	49556600,
	49631550,
	49706550,
	49781600,
	49856700,
	49931850,
	50007050,
	50082300,
	50157600,
	50232950,
	50308350,
	50383800,
	50459300,
	50534850,
	50610450,
	50686100,
	50761800,
	50837550,
	50913350,
	50989200,
	51065100,
	51141050,
	51217050,
	51293100,
	51369200,
	51445350,
	51521550,
	51597800,
	51674100,
	51750450,
	51826850,
	51903300,
	51979800,
	52056350,
	52132950,
	52209600,
	52286300,
	52363050,
	52439850,
	52516700,
	52593600,
	52670550,
	52747550,
	52824600,
	52901700,
	52978850,
	53056050,
	53133300,
	53210600,
	53287950,
	53365350,
	53442800,
	53520300,
	53597850,
	53675450,
	53753100,
	53830800,
	53908550,
	53986350,
	54064200,
	54142100,
	54220050,
	54298050,
	54376100,
	54454200,
	54532350,
	54610550,
	54688800,
	54767100,
	54845450,
	54923850,
	55002300,
	55080800,
	55159350,
	55237950,
	55316600,
	55395300,
	55474050,
	55552850,
	55631700,
	55710600,
	55789550,
	55868550,
	55947600,
	56026700,
	56105850,
	56185050,
	56264300,
	56343600,
	56422950,
	56502350,
	56581800,
	56661300,
	56740850,
	56820450,
	56900100,
	56979800,
	57059550,
	57139350,
	57219200,
	57299100,
	57379050,
	57459050,
	57539100,
	57619200,
	57699350,
	57779550,
	57859800,
	57940100,
	58020450,
	58100850,
	58181300,
	58261800,
	58342350,
	58422950,
	58503600,
	58584300,
	58665050,
	58745850,
	58826700,
	58907600,
	58988550,
	59069550,
	59150600,
	59231700,
	59312850,
	59394050,
	59475300,
	59556600,
	59637950,
	59719350,
	59800800,
	59882300,
	59963850,
	60045450,
	60127100,
	60208800,
	60290550,
	60372350,
	60454200,
	60536100,
	60618050,
	60700050,
	60782100,
	60864200,
	60946350,
	61028550,
	61110800,
	61193100,
	61275450,
	61357850,
	61440300,
	61522800,
	61605350,
	61687950,
	61770600,
	61853300,
	61936050,
	62018850,
	62101700,
	62184600,
	62267550,
	62350550,
	62433600,
	62516700,
	62599850,
	62683050,
	62766300,
	62849600,
	62932950,
	63016350,
	63099800,
	63183300,
	63266850,
	63350450,
	63434100,
	63517800,
	63601550,
	63685350,
	63769200,
	63853100,
	63937050,
	64021050,
	64105100,
	64189200,
	64273350,
	64357550,
	64441800,
	64526100,
	64610450,
	64694850,
	64779300,
	64863800,
	64948350,
	65032950,
	65117600,
	65202300,
	65287050,
	65371850,
	65456700,
	65541600,
	65626550,
	65711550,
	65796600,
	65881700,
	65966850,
	66052050,
	66137300,
	66222600,
	66307950,
	66393350,
	66478800,
	66564300,
	66649850,
	66735450,
	66821100,
	66906800,
	66992550,
	67078350,
	67164200,
	67250100,
	67336050,
	67422050,
	67508100,
	67594200,
	67680350,
	67766550,
	67852800,
	67939100,
	68025450,
	68111850,
	68198300,
	68284800,
	68371350,
	68457950,
	68544600,
	68631300,
	68718050,
	68804850,
	68891700,
	68978600,
	69065550,
	69152550,
	69239600,
	69326700,
	69413850,
	69501050,
	69588300,
	69675600,
	69762950,
	69850350,
	69937800,
	70025300,
	70112850,
	70200450,
	70288100,
	70375800,
	70463550,
	70551350,
	70639200,
	70727100,
	70815050,
	70903050,
	70991100,
	71079200,
	71167350,
	71255550,
	71343800,
	71432100,
	71520450,
	71608850,
	71697300,
	71785800,
	71874350,
	71962950,
	72051600,
	72140300,
	72229050,
	72317850,
	72406700,
	72495600,
	72584550,
	72673550,
	72762600,
	72851700,
	72940850,
	73030050,
	73119300,
	73208600,
	73297950,
	73387350,
	73476800,
	73566300,
	73655850,
	73745450,
	73835100,
	73924800,
	74014550,
	74104350,
	74194200,
	74284100,
	74374050,
	74464050,
	74554100,
	74644200,
	74734350,
	74824550,
	74914800,
	75005100,
	75095450,
	75185850,
	75276300,
	75366800,
	75457350,
	75547950,
	75638600,
	75729300,
	75820050,
	75910850,
	76001700,
	76092600,
	76183550,
	76274550,
	76365600,
	76456700,
	76547850,
	76639050,
	76730300,
	76821600,
	76912950,
	77004350,
	77095800,
	77187300,
	77278850,
	77370450,
	77462100,
	77553800,
	77645550,
	77737350,
	77829200,
	77921100,
	78013050,
	78105050,
	78197100,
	78289200,
	78381350,
	78473550,
	78565800,
	78658100,
	78750450,
	78842850,
	78935300,
	79027800,
	79120350,
	79212950,
	79305600,
	79398300,
	79491050,
	79583850,
	79676700,
	79769600,
	79862550,
	79955550,
	80048600,
	80141700,
	80234850,
	80328050,
	80421300,
	80514600,
	80607950,
	80701350,
	80794800,
	80888300,
	80981850,
	81075450,
	81169100,
	81262800,
	81356550,
	81450350,
	81544200,
	81638100,
	81732050,
	81826050,
	81920100,
	82014200,
	82108350,
	82202550,
	82296800,
	82391100,
	82485450,
	82579850,
	82674300,
	82768800,
	82863350,
	82957950,
	83052600,
	83147300,
	83242050,
	83336850,
	83431700,
	83526600,
	83621550,
	83716550,
	83811600,
	83906700,
	84001850,
	84097050,
	84192300,
	84287600,
	84382950,
	84478350,
	84573800,
	84669300,
	84764850,
	84860450,
	84956100,
	85051800,
	85147550,
	85243350,
	85339200,
	85435100,
	85531050,
	85627050,
	85723100,
	85819200,
	85915350,
	86011550,
	86107800,
	86204100,
	86300450,
	86396850,
	86493300,
	86589800,
	86686350,
	86782950,
	86879600,
	86976300,
	87073050,
	87169850,
	87266700,
	87363600,
	87460550,
	87557550,
	87654600,
	87751700,
	87848850,
	87946050,
	88043300,
	88140600,
	88237950,
	88335350,
	88432800,
	88530300,
	88627850,
	88725450,
	88823100,
	88920800,
	89018550,
	89116350,
	89214200,
	89312100,
	89410050,
	89508050,
	89606100,
	89704200,
	89802350,
	89900550,
	89998800,
	90097100,
	90195450,
	90293850,
	90392300,
	90490800,
	90589350,
	90687950,
	90786600,
	90885300,
	90984050,
	91082850,
	91181700,
	91280600,
	91379550,
	91478550,
	91577600,
	91676700,
	91775850,
	91875050,
	91974300,
	92073600,
	92172950,
	92272350,
	92371800,
	92471300,
	92570850,
	92670450,
	92770100,
	92869800,
	92969550,
	93069350,
	93169200,
	93269100,
	93369050,
	93469050,
	93569100,
	93669200,
	93769350,
	93869550,
	93969800,
	94070100,
	94170450,
	94270850,
	94371300,
	94471800,
	94572350,
	94672950,
	94773600,
	94874300,
	94975050,
	95075850,
	95176700,
	95277600,
	95378550,
	95479550,
	95580600,
	95681700,
	95782850,
	95884050,
	95985300,
	96086600,
	96187950,
	96289350,
	96390800,
	96492300,
	96593850,
	96695450,
	96797100,
	96898800,
	97000550,
	97102350,
	97204200,
	97306100,
	97408050,
	97510050,
	97612100,
	97714200,
	97816350,
	97918550,
	98020800,
	98123100,
	98225450,
	98327850,
	98430300,
	98532800,
	98635350,
	98737950,
	98840600,
	98943300,
	99046050,
	99148850,
	99251700,
	99354600,
	99457550,
	99560550,
	99663600,
	99766700,
	99869850,
	99973050,
	100076300,
	100179600,
	100282950,
	100386350,
	100489800,
	100593300,
	100696850,
	100800450,
	100904100,
	101007800,
	101111550,
	101215350,
	101319200,
	101423100,
	101527050,
	101631050,
	101735100,
	101839200,
	101943350,
	102047550,
	102151800,
	102256100,
	102360450,
	102464850,
	102569300,
	102673800,
	102778350,
	102882950,
	102987600,
	103092300,
	103197050,
	103301850,
	103406700,
	103511600,
	103616550,
	103721550,
	103826600,
	103931700,
	104036850,
	104142050,
	104247300,
	104352600,
	104457950,
	104563350,
	104668800,
	104774300,
	104879850,
	104985450,
	105091100,
	105196800,
	105302550,
	105408350,
	105514200,
	105620100,
	105726050,
	105832050,
	105938100,
	106044200,
	106150350,
	106256550,
	106362800,
	106469100,
	106575450,
	106681850,
	106788300,
	106894800,
	107001350,
	107107950,
	107214600,
	107321300,
	107428050,
	107534850,
	107641700,
	107748600,
	107855550,
	107962550,
	108069600,
	108176700,
	108283850,
	108391050,
	108498300,
	108605600,
	108712950,
	108820350,
	108927800,
	109035300,
	109142850,
	109250450,
	109358100,
	109465800,
	109573550,
	109681350,
	109789200,
	109897100,
	110005050,
	110113050,
	110221100,
	110329200,
	110437350,
	110545550,
	110653800,
	110762100,
	110870450,
	110978850,
	111087300,
	111195800,
	111304350,
	111412950,
	111521600,
	111630300,
	111739050,
	111847850,
	111956700,
	112065600,
	112174550,
	112283550,
	112392600,
	112501700,
	112610850,
	112720050,
	112829300,
	112938600,
	113047950,
	113157350,
	113266800,
	113376300,
	113485850,
	113595450,
	113705100,
	113814800,
	113924550,
	114034350,
	114144200,
	114254100,
	114364050,
	114474050,
	114584100,
	114694200,
	114804350,
	114914550,
	115024800,
	115135100,
	115245450,
	115355850,
	115466300,
	115576800,
	115687350,
	115797950,
	115908600,
	116019300,
	116130050,
	116240850,
	116351700,
	116462600,
	116573550,
	116684550,
	116795600,
	116906700,
	117017850,
	117129050,
	117240300,
	117351600,
	117462950,
	117574350,
	117685800,
	117797300,
	117908850,
	118020450,
	118132100,
	118243800,
	118355550,
	118467350,
	118579200,
	118691100,
	118803050,
	118915050,
	119027100,
	119139200,
	119251350,
	119363550,
	119475800,
	119588100,
	119700450,
	119812850,
	119925300,
	120037800,
	120150350,
	120262950,
	120375600,
	120488300,
	120601050,
	120713850,
	120826700,
	120939600,
	121052550,
	121165550,
	121278600,
	121391700,
	121504850,
	121618050,
	121731300,
	121844600,
	121957950,
	122071350,
	122184800,
	122298300,
	122411850,
	122525450,
	122639100,
	122752800,
	122866550,
	122980350,
	123094200,
	123208100,
	123322050,
	123436050,
	123550100,
	123664200,
	123778350,
	123892550,
	124006800,
	124121100,
	124235450,
	124349850,
	124464300,
	124578800,
	124693350,
	124807950,
	124922600,
	125037300,
	125152050,
	125266850,
	125381700,
	125496600,
	125611550,
	125726550,
	125841600,
	125956700,
	126071850,
	126187050,
	126302300,
	126417600,
	126532950,
	126648350,
	126763800,
	126879300,
	126994850,
	127110450,
	127226100,
	127341800,
	127457550,
	127573350,
	127689200,
	127805100,
	127921050,
	128037050,
	128153100,
	128269200,
	128385350,
	128501550,
	128617800,
	128734100,
	128850450,
	128966850,
	129083300,
	129199800,
	129316350,
	129432950,
	129549600,
	129666300,
	129783050,
	129899850,
	130016700,
	130133600,
	130250550,
	130367550,
	130484600,
	130601700,
	130718850,
	130836050,
	130953300,
	131070600,
	131187950,
	131305350,
	131422800,
	131540300,
	131657850,
	131775450,
	131893100,
	132010800,
	132128550,
	132246350,
	132364200,
	132482100,
	132600050,
	132718050,
	132836100,
	132954200,
	133072350,
	133190550,
	133308800,
	133427100,
	133545450,
	133663850,
	133782300,
	133900800,
	134019350,
	134137950,
	134256600,
	134375300,
	134494050,
	134612850,
	134731700,
	134850600,
	134969550,
	135088550,
	135207600,
	135326700,
	135445850,
	135565050,
	135684300,
	135803600,
	135922950,
	136042350,
	136161800,
	136281300,
	136400850,
	136520450,
	136640100,
	136759800,
	136879550,
	136999350,
	137119200,
	137239100,
	137359050,
	137479050,
	137599100,
	137719200,
	137839350,
	137959550,
	138079800,
	138200100,
	138320450,
	138440850,
	138561300,
	138681800,
	138802350,
	138922950,
	139043600,
	139164300,
	139285050,
	139405850,
	139526700,
	139647600,
	139768550,
	139889550,
	140010600,
	140131700,
	140252850,
	140374050,
	140495300,
	140616600,
	140737950,
	140859350,
	140980800,
	141102300,
	141223850,
	141345450,
	141467100,
	141588800,
	141710550,
	141832350,
	141954200,
	142076100,
	142198050,
	142320050,
	142442100,
	142564200,
	142686350,
	142808550,
	142930800,
	143053100,
	143175450,
	143297850,
	143420300,
	143542800,
	143665350,
	143787950,
	143910600,
	144033300,
	144156050,
	144278850,
	144401700,
	144524600,
	144647550,
	144770550,
	144893600,
	145016700,
	145139850,
	145263050,
	145386300,
	145509600,
	145632950,
	145756350,
	145879800,
	146003300,
	146126850,
	146250450,
	146374100,
	146497800,
	146621550,
	146745350,
	146869200,
	146993100,
	147117050,
	147241050,
	147365100,
	147489200,
	147613350,
	147737550,
	147861800,
	147986100,
	148110450,
	148234850,
	148359300,
	148483800,
	148608350,
	148732950,
	148857600,
	148982300,
	149107050,
	149231850,
	149356700,
	149481600,
	149606550,
	149731550,
	149856600,
	149981700,
	150106850,
	150232050,
	150357300,
	150482600,
	150607950,
	150733350,
	150858800,
	150984300,
	151109850,
	151235450,
	151361100,
	151486800,
	151612550,
	151738350,
	151864200,
	151990100,
	152116050,
	152242050,
	152368100,
	152494200,
	152620350,
	152746550,
	152872800,
	152999100,
	153125450,
	153251850,
	153378300,
	153504800,
	153631350,
	153757950,
	153884600,
	154011300,
	154138050,
	154264850,
	154391700,
	154518600,
	154645550,
	154772550,
	154899600,
	155026700,
	155153850,
	155281050,
	155408300,
	155535600,
	155662950,
	155790350,
	155917800,
	156045300,
	156172850,
	156300450,
	156428100,
	156555800,
	156683550,
	156811350,
	156939200,
	157067100,
	157195050,
	157323050,
	157451100,
	157579200,
	157707350,
	157835550,
	157963800,
	158092100,
	158220450,
	158348850,
	158477300,
	158605800,
	158734350,
	158862950,
	158991600,
	159120300,
	159249050,
	159377850,
	159506700,
	159635600,
	159764550,
	159893550,
	160022600,
	160151700,
	160280850,
	160410050,
	160539300,
	160668600,
	160797950,
	160927350,
	161056800,
	161186300,
	161315850,
	161445450,
	161575100,
	161704800,
	161834550,
	161964350,
	162094200,
	162224100,
	162354050,
	162484050,
	162614100,
	162744200,
	162874350,
	163004550,
	163134800,
	163265100,
	163395450,
	163525850,
	163656300,
	163786800,
	163917350,
	164047950,
	164178600,
	164309300,
	164440050,
	164570850,
	164701700,
	164832600,
	164963550,
	165094550,
	165225600,
	165356700,
	165487850,
	165619050,
	165750300,
	165881600,
	166012950,
	166144350,
	166275800,
	166407300,
	166538850,
	166670450,
	166802100,
	166933800,
	167065550,
	167197350,
	167329200,
	167461100,
	167593050,
	167725050,
	167857100,
	167989200,
	168121350,
	168253550,
	168385800,
	168518100,
	168650450,
	168782850,
	168915300,
	169047800,
	169180350,
	169312950,
	169445600,
	169578300,
	169711050,
	169843850,
	169976700,
	170109600,
	170242550,
	170375550,
	170508600,
	170641700,
	170774850,
	170908050,
	171041300,
	171174600,
	171307950,
	171441350,
	171574800,
	171708300,
	171841850,
	171975450,
	172109100,
	172242800,
	172376550,
	172510350,
	172644200,
	172778100,
	172912050,
	173046050,
	173180100,
	173314200,
	173448350,
	173582550,
	173716800,
	173851100,
	173985450,
	174119850,
	174254300,
	174388800,
	174523350,
	174657950,
	174792600,
	174927300,
	175062050,
	175196850,
	175331700,
	175466600,
	175601550,
	175736550,
	175871600,
	176006700,
	176141850,
	176277050,
	176412300,
	176547600,
	176682950,
	176818350,
	176953800,
	177089300,
	177224850,
	177360450,
	177496100,
	177631800,
	177767550,
	177903350,
	178039200,
	178175100,
	178311050,
	178447050,
	178583100,
	178719200,
	178855350,
	178991550,
	179127800,
	179264100,
	179400450,
	179536850,
	179673300,
	179809800,
	179946350,
	180082950,
	180219600,
	180356300,
	180493050,
	180629850,
	180766700,
	180903600,
	181040550,
	181177550,
	181314600,
	181451700,
	181588850,
	181726050,
	181863300,
	182000600,
	182137950,
	182275350,
	182412800,
	182550300,
	182687850,
	182825450,
	182963100,
	183100800,
	183238550,
	183376350,
	183514200,
	183652100,
	183790050,
	183928050,
	184066100,
	184204200,
	184342350,
	184480550,
	184618800,
	184757100,
	184895450,
	185033850,
	185172300,
	185310800,
	185449350,
	185587950,
	185726600,
	185865300,
	186004050,
	186142850,
	186281700,
	186420600,
	186559550,
	186698550,
	186837600,
	186976700,
	187115850,
	187255050,
	187394300,
	187533600,
	187672950,
	187812350,
	187951800,
	188091300,
	188230850,
	188370450,
	188510100,
	188649800,
	188789550,
	188929350,
	189069200,
	189209100,
	189349050,
	189489050,
	189629100,
	189769200,
	189909350,
	190049550,
	190189800,
	190330100,
	190470450,
	190610850,
	190751300,
	190891800,
	191032350,
	191172950,
	191313600,
	191454300,
	191595050,
	191735850,
	191876700,
	192017600,
	192158550,
	192299550,
	192440600,
	192581700,
	192722850,
	192864050,
	193005300,
	193146600,
	193287950,
	193429350,
	193570800,
	193712300,
	193853850,
	193995450,
	194137100,
	194278800,
	194420550,
	194562350,
	194704200,
	194846100,
	194988050,
	195130050,
	195272100,
	195414200,
	195556350,
	195698550,
	195840800,
	195983100,
	196125450,
	196267850,
	196410300,
	196552800,
	196695350,
	196837950,
	196980600,
	197123300,
	197266050,
	197408850,
	197551700,
	197694600,
	197837550,
	197980550,
	198123600,
	198266700,
	198409850,
	198553050,
	198696300,
	198839600,
	198982950,
	199126350,
	199269800,
	199413300,
	199556850,
	199700450,
	199844100,
	199987800,
	200131550,
	200275350,
	200419200,
	200563100,
	200707050,
	200851050,
	200995100,
	201139200,
	201283350,
	201427550,
	201571800,
	201716100,
	201860450,
	202004850,
	202149300,
	202293800,
	202438350,
	202582950,
	202727600,
	202872300,
	203017050,
	203161850,
	203306700,
	203451600,
	203596550,
	203741550,
	203886600,
	204031700,
	204176850,
	204322050,
	204467300,
	204612600,
	204757950,
	204903350,
	205048800,
	205194300,
	205339850,
	205485450,
	205631100,
	205776800,
	205922550,
	206068350,
	206214200,
	206360100,
	206506050,
	206652050,
	206798100,
	206944200,
	207090350,
	207236550,
	207382800,
	207529100,
	207675450,
	207821850,
	207968300,
	208114800,
	208261350,
	208407950,
	208554600,
	208701300,
	208848050,
	208994850,
	209141700,
	209288600,
	209435550,
	209582550,
	209729600,
	209876700,
	210023850,
	210171050,
	210318300,
	210465600,
	210612950,
	210760350,
	210907800,
	211055300,
	211202850,
	211350450,
	211498100,
	211645800,
	211793550,
	211941350,
	212089200,
	212237100,
	212385050,
	212533050,
	212681100,
	212829200,
	212977350,
	213125550,
	213273800,
	213422100,
	213570450,
	213718850,
	213867300,
	214015800,
	214164350,
	214312950,
	214461600,
	214610300,
	214759050,
	214907850,
	215056700,
	215205600,
	215354550,
	215503550,
	215652600,
	215801700,
	215950850,
	216100050,
	216249300,
	216398600,
	216547950,
	216697350,
	216846800,
	216996300,
	217145850,
	217295450,
	217445100,
	217594800,
	217744550,
	217894350,
	218044200,
	218194100,
	218344050,
	218494050,
	218644100,
	218794200,
	218944350,
	219094550,
	219244800,
	219395100,
	219545450,
	219695850,
	219846300,
	219996800,
	220147350,
	220297950,
	220448600,
	220599300,
	220750050,
	220900850,
	221051700,
	221202600,
	221353550,
	221504550,
	221655600,
	221806700,
	221957850,
	222109050,
	222260300,
	222411600,
	222562950,
	222714350,
	222865800,
	223017300,
	223168850,
	223320450,
	223472100,
	223623800,
	223775550,
	223927350,
	224079200,
	224231100,
	224383050,
	224535050,
	224687100,
	224839200,
	224991350,
	225143550,
	225295800,
	225448100,
	225600450,
	225752850,
	225905300,
	226057800,
	226210350,
	226362950,
	226515600,
	226668300,
	226821050,
	226973850,
	227126700,
	227279600,
	227432550,
	227585550,
	227738600,
	227891700,
	228044850,
	228198050,
	228351300,
	228504600,
	228657950,
	228811350,
	228964800,
	229118300,
	229271850,
	229425450,
	229579100,
	229732800,
	229886550,
	230040350,
	230194200,
	230348100,
	230502050,
	230656050,
	230810100,
	230964200,
	231118350,
	231272550,
	231426800,
	231581100,
	231735450,
	231889850,
	232044300,
	232198800,
	232353350,
	232507950,
	232662600,
	232817300,
	232972050,
	233126850,
	233281700,
	233436600,
	233591550,
	233746550,
	233901600,
	234056700,
	234211850,
	234367050,
	234522300,
	234677600,
	234832950,
	234988350,
	235143800,
	235299300,
	235454850,
	235610450,
	235766100,
	235921800,
	236077550,
	236233350,
	236389200,
	236545100,
	236701050,
	236857050,
	237013100,
	237169200,
	237325350,
	237481550,
	237637800,
	237794100,
	237950450,
	238106850,
	238263300,
	238419800,
	238576350,
	238732950,
	238889600,
	239046300,
	239203050,
	239359850,
	239516700,
	239673600,
	239830550,
	239987550,
	240144600,
	240301700,
	240458850,
	240616050,
	240773300,
	240930600,
	241087950,
	241245350,
	241402800,
	241560300,
	241717850,
	241875450,
	242033100,
	242190800,
	242348550,
	242506350,
	242664200,
	242822100,
	242980050,
	243138050,
	243296100,
	243454200,
	243612350,
	243770550,
	243928800,
	244087100,
	244245450,
	244403850,
	244562300,
	244720800,
	244879350,
	245037950,
	245196600,
	245355300,
	245514050,
	245672850,
	245831700,
	245990600,
	246149550,
	246308550,
	246467600,
	246626700,
	246785850,
	246945050,
	247104300,
	247263600,
	247422950,
	247582350,
	247741800,
	247901300,
	248060850,
	248220450,
	248380100,
	248539800,
	248699550,
	248859350,
	249019200,
	249179100,
	249339050,
	249499050,
	249659100,
	249819200,
	249979350,
	250139550,
	250299800,
	250460100,
	250620450,
	250780850,
	250941300,
	251101800,
	251262350,
	251422950,
	251583600,
	251744300,
	251905050,
	252065850,
	252226700,
	252387600,
	252548550,
	252709550,
	252870600,
	253031700,
	253192850,
	253354050,
	253515300,
	253676600,
	253837950,
	253999350,
	254160800,
	254322300,
	254483850,
	254645450,
	254807100,
	254968800,
	255130550,
	255292350,
	255454200,
	255616100,
	255778050,
	255940050,
	256102100,
	256264200,
	256426350,
	256588550,
	256750800,
	256913100,
	257075450,
	257237850,
	257400300,
	257562800,
	257725350,
	257887950,
	258050600,
	258213300,
	258376050,
	258538850,
	258701700,
	258864600,
	259027550,
	259190550,
	259353600,
	259516700,
	259679850,
	259843050,
	260006300,
	260169600,
	260332950,
	260496350,
	260659800,
	260823300,
	260986850,
	261150450,
	261314100,
	261477800,
	261641550,
	261805350,
	261969200,
	262133100,
	262297050,
	262461050,
	262625100,
	262789200,
	262953350,
	263117550,
	263281800,
	263446100,
	263610450,
	263774850,
	263939300,
	264103800,
	264268350,
	264432950,
	264597600,
	264762300,
	264927050,
	265091850,
	265256700,
	265421600,
	265586550,
	265751550,
	265916600,
	266081700,
	266246850,
	266412050,
	266577300,
	266742600,
	266907950,
	267073350,
	267238800,
	267404300,
	267569850,
	267735450,
	267901100,
	268066800,
	268232550,
	268398350,
	268564200,
	268730100,
	268896050,
	269062050,
	269228100,
	269394200,
	269560350,
	269726550,
	269892800,
	270059100,
	270225450,
	270391850,
	270558300,
	270724800,
	270891350,
	271057950,
	271224600,
	271391300,
	271558050,
	271724850,
	271891700,
	272058600,
	272225550,
	272392550,
	272559600,
	272726700,
	272893850,
	273061050,
	273228300,
	273395600,
	273562950,
	273730350,
	273897800,
	274065300,
	274232850,
	274400450,
	274568100,
	274735800,
	274903550,
	275071350,
	275239200,
	275407100,
	275575050,
	275743050,
	275911100,
	276079200,
	276247350,
	276415550,
	276583800,
	276752100,
	276920450,
	277088850,
	277257300,
	277425800,
	277594350,
	277762950,
	277931600,
	278100300,
	278269050,
	278437850,
	278606700,
	278775600,
	278944550,
	279113550,
	279282600,
	279451700,
	279620850,
	279790050,
	279959300,
	280128600,
	280297950,
	280467350,
	280636800,
	280806300,
	280975850,
	281145450,
	281315100,
	281484800,
	281654550,
	281824350,
	281994200,
	282164100,
	282334050,
	282504050,
	282674100,
	282844200,
	283014350,
	283184550,
	283354800,
	283525100,
	283695450,
	283865850,
	284036300,
	284206800,
	284377350,
	284547950,
	284718600,
	284889300,
	285060050,
	285230850,
	285401700,
	285572600,
	285743550,
	285914550,
	286085600,
	286256700,
	286427850,
	286599050,
	286770300,
	286941600,
	287112950,
	287284350,
	287455800,
	287627300,
	287798850,
	287970450,
	288142100,
	288313800,
	288485550,
	288657350,
	288829200,
	289001100,
	289173050,
	289345050,
	289517100,
	289689200,
	289861350,
	290033550,
	290205800,
	290378100,
	290550450,
	290722850,
	290895300,
	291067800,
	291240350,
	291412950,
	291585600,
	291758300,
	291931050,
	292103850,
	292276700,
	292449600,
	292622550,
	292795550,
	292968600,
	293141700,
	293314850,
	293488050,
	293661300,
	293834600,
	294007950,
	294181350,
	294354800,
	294528300,
	294701850,
	294875450,
	295049100,
	295222800,
	295396550,
	295570350,
	295744200,
	295918100,
	296092050,
	296266050,
	296440100,
	296614200,
	296788350,
	296962550,
	297136800,
	297311100,
	297485450,
	297659850,
	297834300,
	298008800,
	298183350,
	298357950,
	298532600,
	298707300,
	298882050,
	299056850,
	299231700,
	299406600,
	299581550,
	299756550,
	299931600,
	300106700,
	300281850,
	300457050,
	300632300,
	300807600,
	300982950,
	301158350,
	301333800,
	301509300,
	301684850,
	301860450,
	302036100,
	302211800,
	302387550,
	302563350,
	302739200,
	302915100,
	303091050,
	303267050,
	303443100,
	303619200,
	303795350,
	303971550,
	304147800,
	304324100,
	304500450,
	304676850,
	304853300,
	305029800,
	305206350,
	305382950,
	305559600,
	305736300,
	305913050,
	306089850,
	306266700,
	306443600,
	306620550,
	306797550,
	306974600,
	307151700,
	307328850,
	307506050,
	307683300,
	307860600,
	308037950,
	308215350,
	308392800,
	308570300,
	308747850,
	308925450,
	309103100,
	309280800,
	309458550,
	309636350,
	309814200,
	309992100,
	310170050,
	310348050,
	310526100,
	310704200,
	310882350,
	311060550,
	311238800,
	311417100,
	311595450,
	311773850,
	311952300,
	312130800,
	312309350,
	312487950,
	312666600,
	312845300,
	313024050,
	313202850,
	313381700,
	313560600,
	313739550,
	313918550,
	314097600,
	314276700,
	314455850,
	314635050,
	314814300,
	314993600,
	315172950,
	315352350,
	315531800,
	315711300,
	315890850,
	316070450,
	316250100,
	316429800,
	316609550,
	316789350,
	316969200,
	317149100,
	317329050,
	317509050,
	317689100,
	317869200,
	318049350,
	318229550,
	318409800,
	318590100,
	318770450,
	318950850,
	319131300,
	319311800,
	319492350,
	319672950,
	319853600,
	320034300,
	320215050,
	320395850,
	320576700,
	320757600,
	320938550,
	321119550,
	321300600,
	321481700,
	321662850,
	321844050,
	322025300,
	322206600,
	322387950,
	322569350,
	322750800,
	322932300,
	323113850,
	323295450,
	323477100,
	323658800,
	323840550,
	324022350,
	324204200,
	324386100,
	324568050,
	324750050,
	324932100,
	325114200,
	325296350,
	325478550,
	325660800,
	325843100,
	326025450,
	326207850,
	326390300,
	326572800,
	326755350,
	326937950,
	327120600,
	327303300,
	327486050,
	327668850,
	327851700,
	328034600,
	328217550,
	328400550,
	328583600,
	328766700,
	328949850,
	329133050,
	329316300,
	329499600,
	329682950,
	329866350,
	330049800,
	330233300,
	330416850,
	330600450,
	330784100,
	330967800,
	331151550,
	331335350,
	331519200,
	331703100,
	331887050,
	332071050,
	332255100,
	332439200,
	332623350,
	332807550,
	332991800,
	333176100,
	333360450,
	333544850,
	333729300,
	333913800,
	334098350,
	334282950,
	334467600,
	334652300,
	334837050,
	335021850,
	335206700,
	335391600,
	335576550,
	335761550,
	335946600,
	336131700,
	336316850,
	336502050,
	336687300,
	336872600,
	337057950,
	337243350,
	337428800,
	337614300,
	337799850,
	337985450,
	338171100,
	338356800,
	338542550,
	338728350,
	338914200,
	339100100,
	339286050,
	339472050,
	339658100,
	339844200,
	340030350,
	340216550,
	340402800,
	340589100,
	340775450,
	340961850,
	341148300,
	341334800,
	341521350,
	341707950,
	341894600,
	342081300,
	342268050,
	342454850,
	342641700,
	342828600,
	343015550,
	343202550,
	343389600,
	343576700,
	343763850,
	343951050,
	344138300,
	344325600,
	344512950,
	344700350,
	344887800,
	345075300,
	345262850,
	345450450,
	345638100,
	345825800,
	346013550,
	346201350,
	346389200,
	346577100,
	346765050,
	346953050,
	347141100,
	347329200,
	347517350,
	347705550,
	347893800,
	348082100,
	348270450,
	348458850,
	348647300,
	348835800,
	349024350,
	349212950,
	349401600,
	349590300,
	349779050,
	349967850,
	350156700,
	350345600,
	350534550,
	350723550,
	350912600,
	351101700,
	351290850,
	351480050,
	351669300,
	351858600,
	352047950,
	352237350,
	352426800,
	352616300,
	352805850,
	352995450,
	353185100,
	353374800,
	353564550,
	353754350,
	353944200,
	354134100,
	354324050,
	354514050,
	354704100,
	354894200,
	355084350,
	355274550,
	355464800,
	355655100,
	355845450,
	356035850,
	356226300,
	356416800,
	356607350,
	356797950,
	356988600,
	357179300,
	357370050,
	357560850,
	357751700,
	357942600,
	358133550,
	358324550,
	358515600,
	358706700,
	358897850,
	359089050,
	359280300,
	359471600,
	359662950,
	359854350,
	360045800,
	360237300,
	360428850,
	360620450,
	360812100,
	361003800,
	361195550,
	361387350,
	361579200,
	361771100,
	361963050,
	362155050,
	362347100,
	362539200,
	362731350,
	362923550,
	363115800,
	363308100,
	363500450,
	363692850,
	363885300,
	364077800,
	364270350,
	364462950,
	364655600,
	364848300,
	365041050,
	365233850,
	365426700,
	365619600,
	365812550,
	366005550,
	366198600,
	366391700,
	366584850,
	366778050,
	366971300,
	367164600,
	367357950,
	367551350,
	367744800,
	367938300,
	368131850,
	368325450,
	368519100,
	368712800,
	368906550,
	369100350,
	369294200,
	369488100,
	369682050,
	369876050,
	370070100,
	370264200,
	370458350,
	370652550,
	370846800,
	371041100,
	371235450,
	371429850,
	371624300,
	371818800,
	372013350,
	372207950,
	372402600,
	372597300,
	372792050,
	372986850,
	373181700,
	373376600,
	373571550,
	373766550,
	373961600,
	374156700,
	374351850,
	374547050,
	374742300,
	374937600,
	375132950,
	375328350,
	375523800,
	375719300,
	375914850,
	376110450,
	376306100,
	376501800,
	376697550,
	376893350,
	377089200,
	377285100,
	377481050,
	377677050,
	377873100,
	378069200,
	378265350,
	378461550,
	378657800,
	378854100,
	379050450,
	379246850,
	379443300,
	379639800,
	379836350,
	380032950,
	380229600,
	380426300,
	380623050,
	380819850,
	381016700,
	381213600,
	381410550,
	381607550,
	381804600,
	382001700,
	382198850,
	382396050,
	382593300,
	382790600,
	382987950,
	383185350,
	383382800,
	383580300,
	383777850,
	383975450,
	384173100,
	384370800,
	384568550,
	384766350,
	384964200,
	385162100,
	385360050,
	385558050,
	385756100,
	385954200,
	386152350,
	386350550,
	386548800,
	386747100,
	386945450,
	387143850,
	387342300,
	387540800,
	387739350,
	387937950,
	388136600,
	388335300,
	388534050,
	388732850,
	388931700,
	389130600,
	389329550,
	389528550,
	389727600,
	389926700,
	390125850,
	390325050,
	390524300,
	390723600,
	390922950,
	391122350,
	391321800,
	391521300,
	391720850,
	391920450,
	392120100,
	392319800,
	392519550,
	392719350,
	392919200,
	393119100,
	393319050,
	393519050,
	393719100,
	393919200,
	394119350,
	394319550,
	394519800,
	394720100,
	394920450,
	395120850,
	395321300,
	395521800,
	395722350,
	395922950,
	396123600,
	396324300,
	396525050,
	396725850,
	396926700,
	397127600,
	397328550,
	397529550,
	397730600,
	397931700,
	398132850,
	398334050,
	398535300,
	398736600,
	398937950,
	399139350,
	399340800,
	399542300,
	399743850,
	399945450,
	400147100,
	400348800,
	400550550,
	400752350,
	400954200,
	401156100,
	401358050,
	401560050,
	401762100,
	401964200,
	402166350,
	402368550,
	402570800,
	402773100,
	402975450,
	403177850,
	403380300,
	403582800,
	403785350,
	403987950,
	404190600,
	404393300,
	404596050,
	404798850,
	405001700,
	405204600,
	405407550,
	405610550,
	405813600,
	406016700,
	406219850,
	406423050,
	406626300,
	406829600,
	407032950,
	407236350,
	407439800,
	407643300,
	407846850,
	408050450,
	408254100,
	408457800,
	408661550,
	408865350,
	409069200,
	409273100,
	409477050,
	409681050,
	409885100,
	410089200,
	410293350,
	410497550,
	410701800,
	410906100,
	411110450,
	411314850,
	411519300,
	411723800,
	411928350,
	412132950,
	412337600,
	412542300,
	412747050,
	412951850,
	413156700,
	413361600,
	413566550,
	413771550,
	413976600,
	414181700,
	414386850,
	414592050,
	414797300,
	415002600,
	415207950,
	415413350,
	415618800,
	415824300,
	416029850,
	416235450,
	416441100,
	416646800,
	416852550,
	417058350,
	417264200,
	417470100,
	417676050,
	417882050,
	418088100,
	418294200,
	418500350,
	418706550,
	418912800,
	419119100,
	419325450,
	419531850,
	419738300,
	419944800,
	420151350,
	420357950,
	420564600,
	420771300,
	420978050,
	421184850,
	421391700,
	421598600,
	421805550,
	422012550,
	422219600,
	422426700,
	422633850,
	422841050,
	423048300,
	423255600,
	423462950,
	423670350,
	423877800,
	424085300,
	424292850,
	424500450,
	424708100,
	424915800,
	425123550,
	425331350,
	425539200,
	425747100,
	425955050,
	426163050,
	426371100,
	426579200,
	426787350,
	426995550,
	427203800,
	427412100,
	427620450,
	427828850,
	428037300,
	428245800,
	428454350,
	428662950,
	428871600,
	429080300,
	429289050,
	429497850,
	429706700,
	429915600,
	430124550,
	430333550,
	430542600,
	430751700,
	430960850,
	431170050,
	431379300,
	431588600,
	431797950,
	432007350,
	432216800,
	432426300,
	432635850,
	432845450,
	433055100,
	433264800,
	433474550,
	433684350,
	433894200,
	434104100,
	434314050,
	434524050,
	434734100,
	434944200,
	435154350,
	435364550,
	435574800,
	435785100,
	435995450,
	436205850,
	436416300,
	436626800,
	436837350,
	437047950,
	437258600,
	437469300,
	437680050,
	437890850,
	438101700,
	438312600,
	438523550,
	438734550,
	438945600,
	439156700,
	439367850,
	439579050,
	439790300,
	440001600,
	440212950,
	440424350,
	440635800,
	440847300,
	441058850,
	441270450,
	441482100,
	441693800,
	441905550,
	442117350,
	442329200,
	442541100,
	442753050,
	442965050,
	443177100,
	443389200,
	443601350,
	443813550,
	444025800,
	444238100,
	444450450,
	444662850,
	444875300,
	445087800,
	445300350,
	445512950,
	445725600,
	445938300,
	446151050,
	446363850,
	446576700,
	446789600,
	447002550,
	447215550,
	447428600,
	447641700,
	447854850,
	448068050,
	448281300,
	448494600,
	448707950,
	448921350,
	449134800,
	449348300,
	449561850,
	449775450,
	449989100,
	450202800,
	450416550,
	450630350,
	450844200,
	451058100,
	451272050,
	451486050,
	451700100,
	451914200,
	452128350,
	452342550,
	452556800,
	452771100,
	452985450,
	453199850,
	453414300,
	453628800,
	453843350,
	454057950,
	454272600,
	454487300,
	454702050,
	454916850,
	455131700,
	455346600,
	455561550,
	455776550,
	455991600,
	456206700,
	456421850,
	456637050,
	456852300,
	457067600,
	457282950,
	457498350,
	457713800,
	457929300,
	458144850,
	458360450,
	458576100,
	458791800,
	459007550,
	459223350,
	459439200,
	459655100,
	459871050,
	460087050,
	460303100,
	460519200,
	460735350,
	460951550,
	461167800,
	461384100,
	461600450,
	461816850,
	462033300,
	462249800,
	462466350,
	462682950,
	462899600,
	463116300,
	463333050,
	463549850,
	463766700,
	463983600,
	464200550,
	464417550,
	464634600,
	464851700,
	465068850,
	465286050,
	465503300,
	465720600,
	465937950,
	466155350,
	466372800,
	466590300,
	466807850,
	467025450,
	467243100,
	467460800,
	467678550,
	467896350,
	468114200,
	468332100,
	468550050,
	468768050,
	468986100,
	469204200,
	469422350,
	469640550,
	469858800,
	470077100,
	470295450,
	470513850,
	470732300,
	470950800,
	471169350,
	471387950,
	471606600,
	471825300,
	472044050,
	472262850,
	472481700,
	472700600,
	472919550,
	473138550,
	473357600,
	473576700,
	473795850,
	474015050,
	474234300,
	474453600,
	474672950,
	474892350,
	475111800,
	475331300,
	475550850,
	475770450,
	475990100,
	476209800,
	476429550,
	476649350,
	476869200,
	477089100,
	477309050,
	477529050,
	477749100,
	477969200,
	478189350,
	478409550,
	478629800,
	478850100,
	479070450,
	479290850,
	479511300,
	479731800,
	479952350,
	480172950,
	480393600,
	480614300,
	480835050,
	481055850,
	481276700,
	481497600,
	481718550,
	481939550,
	482160600,
	482381700,
	482602850,
	482824050,
	483045300,
	483266600,
	483487950,
	483709350,
	483930800,
	484152300,
	484373850,
	484595450,
	484817100,
	485038800,
	485260550,
	485482350,
	485704200,
	485926100,
	486148050,
	486370050,
	486592100,
	486814200,
	487036350,
	487258550,
	487480800,
	487703100,
	487925450,
	488147850,
	488370300,
	488592800,
	488815350,
	489037950,
	489260600,
	489483300,
	489706050,
	489928850,
	490151700,
	490374600,
	490597550,
	490820550,
	491043600,
	491266700,
	491489850,
	491713050,
	491936300,
	492159600,
	492382950,
	492606350,
	492829800,
	493053300,
	493276850,
	493500450,
	493724100,
	493947800,
	494171550,
	494395350,
	494619200,
	494843100,
	495067050,
	495291050,
	495515100,
	495739200,
	495963350,
	496187550,
	496411800,
	496636100,
	496860450,
	497084850,
	497309300,
	497533800,
	497758350,
	497982950,
	498207600,
	498432300,
	498657050,
	498881850,
	499106700,
	499331600,
	499556550,
	499781550,
	500006600,
	500231700,
	500456850,
	500682050,
	500907300,
	501132600,
	501357950,
	501583350,
	501808800,
	502034300,
	502259850,
	502485450,
	502711100,
	502936800,
	503162550,
	503388350,
	503614200,
	503840100,
	504066050,
	504292050,
	504518100,
	504744200,
	504970350,
	505196550,
	505422800,
	505649100,
	505875450,
	506101850,
	506328300,
	506554800,
	506781350,
	507007950,
	507234600,
	507461300,
	507688050,
	507914850,
	508141700,
	508368600,
	508595550,
	508822550,
	509049600,
	509276700,
	509503850,
	509731050,
	509958300,
	510185600,
	510412950,
	510640350,
	510867800,
	511095300,
	511322850,
	511550450,
	511778100,
	512005800,
	512233550,
	512461350,
	512689200,
	512917100,
	513145050,
	513373050,
	513601100,
	513829200,
	514057350,
	514285550,
	514513800,
	514742100,
	514970450,
	515198850,
	515427300,
	515655800,
	515884350,
	516112950,
	516341600,
	516570300,
	516799050,
	517027850,
	517256700,
	517485600,
	517714550,
	517943550,
	518172600,
	518401700,
	518630850,
	518860050,
	519089300,
	519318600,
	519547950,
	519777350,
	520006800,
	520236300,
	520465850,
	520695450,
	520925100,
	521154800,
	521384550,
	521614350,
	521844200,
	522074100,
	522304050,
	522534050,
	522764100,
	522994200,
	523224350,
	523454550,
	523684800,
	523915100,
	524145450,
	524375850,
	524606300,
	524836800,
	525067350,
	525297950,
	525528600,
	525759300,
	525990050,
	526220850,
	526451700,
	526682600,
	526913550,
	527144550,
	527375600,
	527606700,
	527837850,
	528069050,
	528300300,
	528531600,
	528762950,
	528994350,
	529225800,
	529457300,
	529688850,
	529920450,
	530152100,
	530383800,
	530615550,
	530847350,
	531079200,
	531311100,
	531543050,
	531775050,
	532007100,
	532239200,
	532471350,
	532703550,
	532935800,
	533168100,
	533400450,
	533632850,
	533865300,
	534097800,
	534330350,
	534562950,
	534795600,
	535028300,
	535261050,
	535493850,
	535726700,
	535959600,
	536192550,
	536425550,
	536658600,
	536891700,
	537124850,
	537358050,
	537591300,
	537824600,
	538057950,
	538291350,
	538524800,
	538758300,
	538991850,
	539225450,
	539459100,
	539692800,
	539926550,
	540160350,
	540394200,
	540628100,
	540862050,
	541096050,
	541330100,
	541564200,
	541798350,
	542032550,
	542266800,
	542501100,
	542735450,
	542969850,
	543204300,
	543438800,
	543673350,
	543907950,
	544142600,
	544377300,
	544612050,
	544846850,
	545081700,
	545316600,
	545551550,
	545786550,
	546021600,
	546256700,
	546491850,
	546727050,
	546962300,
	547197600,
	547432950,
	547668350,
	547903800,
	548139300,
	548374850,
	548610450,
	548846100,
	549081800,
	549317550,
	549553350,
	549789200,
	550025100,
	550261050,
	550497050,
	550733100,
	550969200,
	551205350,
	551441550,
	551677800,
	551914100,
	552150450,
	552386850,
	552623300,
	552859800,
	553096350,
	553332950,
	553569600,
	553806300,
	554043050,
	554279850,
	554516700,
	554753600,
	554990550,
	555227550,
	555464600,
	555701700,
	555938850,
	556176050,
	556413300,
	556650600,
	556887950,
	557125350,
	557362800,
	557600300,
	557837850,
	558075450,
	558313100,
	558550800,
	558788550,
	559026350,
	559264200,
	559502100,
	559740050,
	559978050,
	560216100,
	560454200,
	560692350,
	560930550,
	561168800,
	561407100,
	561645450,
	561883850,
	562122300,
	562360800,
	562599350,
	562837950,
	563076600,
	563315300,
	563554050,
	563792850,
	564031700,
	564270600,
	564509550,
	564748550,
	564987600,
	565226700,
	565465850,
	565705050,
	565944300,
	566183600,
	566422950,
	566662350,
	566901800,
	567141300,
	567380850,
	567620450,
	567860100,
	568099800,
	568339550,
	568579350,
	568819200,
	569059100,
	569299050,
	569539050,
	569779100,
	570019200,
	570259350,
	570499550,
	570739800,
	570980100,
	571220450,
	571460850,
	571701300,
	571941800,
	572182350,
	572422950,
	572663600,
	572904300,
	573145050,
	573385850,
	573626700,
	573867600,
	574108550,
	574349550,
	574590600,
	574831700,
	575072850,
	575314050,
	575555300,
	575796600,
	576037950,
	576279350,
	576520800,
	576762300,
	577003850,
	577245450,
	577487100,
	577728800,
	577970550,
	578212350,
	578454200,
	578696100,
	578938050,
	579180050,
	579422100,
	579664200,
	579906350,
	580148550,
	580390800,
	580633100,
	580875450,
	581117850,
	581360300,
	581602800,
	581845350,
	582087950,
	582330600,
	582573300,
	582816050,
	583058850,
	583301700,
	583544600,
	583787550,
	584030550,
	584273600,
	584516700,
	584759850,
	585003050,
	585246300,
	585489600,
	585732950,
	585976350,
	586219800,
	586463300,
	586706850,
	586950450,
	587194100,
	587437800,
	587681550,
	587925350,
	588169200,
	588413100,
	588657050,
	588901050,
	589145100,
	589389200,
	589633350,
	589877550,
	590121800,
	590366100,
	590610450,
	590854850,
	591099300,
	591343800,
	591588350,
	591832950,
	592077600,
	592322300,
	592567050,
	592811850,
	593056700,
	593301600,
	593546550,
	593791550,
	594036600,
	594281700,
	594526850,
	594772050,
	595017300,
	595262600,
	595507950,
	595753350,
	595998800,
	596244300,
	596489850,
	596735450,
	596981100,
	597226800,
	597472550,
	597718350,
	597964200,
	598210100,
	598456050,
	598702050,
	598948100,
	599194200,
	599440350,
	599686550,
	599932800,
	600179100,
	600425450,
	600671850,
	600918300,
	601164800,
	601411350,
	601657950,
	601904600,
	602151300,
	602398050,
	602644850,
	602891700,
	603138600,
	603385550,
	603632550,
	603879600,
	604126700,
	604373850,
	604621050,
	604868300,
	605115600,
	605362950,
	605610350,
	605857800,
	606105300,
	606352850,
	606600450,
	606848100,
	607095800,
	607343550,
	607591350,
	607839200,
	608087100,
	608335050,
	608583050,
	608831100,
	609079200,
	609327350,
	609575550,
	609823800,
	610072100,
	610320450,
	610568850,
	610817300,
	611065800,
	611314350,
	611562950,
	611811600,
	612060300,
	612309050,
	612557850,
	612806700,
	613055600,
	613304550,
	613553550,
	613802600,
	614051700,
	614300850,
	614550050,
	614799300,
	615048600,
	615297950,
	615547350,
	615796800,
	616046300,
	616295850,
	616545450,
	616795100,
	617044800,
	617294550,
	617544350,
	617794200,
	618044100,
	618294050,
	618544050,
	618794100,
	619044200,
	619294350,
	619544550,
	619794800,
	620045100,
	620295450,
	620545850,
	620796300,
	621046800,
	621297350,
	621547950,
	621798600,
	622049300,
	622300050,
	622550850,
	622801700,
	623052600,
	623303550,
	623554550,
	623805600,
	624056700,
	624307850,
	624559050,
	624810300,
	625061600,
	625312950,
	625564350,
	625815800,
	626067300,
	626318850,
	626570450,
	626822100,
	627073800,
	627325550,
	627577350,
	627829200,
	628081100,
	628333050,
	628585050,
	628837100,
	629089200,
	629341350,
	629593550,
	629845800,
	630098100,
	630350450,
	630602850,
	630855300,
	631107800,
	631360350,
	631612950,
	631865600,
	632118300,
	632371050,
	632623850,
	632876700,
	633129600,
	633382550,
	633635550,
	633888600,
	634141700,
	634394850,
	634648050,
	634901300,
	635154600,
	635407950,
	635661350,
	635914800,
	636168300,
	636421850,
	636675450,
	636929100,
	637182800,
	637436550,
	637690350,
	637944200,
	638198100,
	638452050,
	638706050,
	638960100,
	639214200,
	639468350,
	639722550,
	639976800,
	640231100,
	640485450,
	640739850,
	640994300,
	641248800,
	641503350,
	641757950,
	642012600,
	642267300,
	642522050,
	642776850,
	643031700,
	643286600,
	643541550,
	643796550,
	644051600,
	644306700,
	644561850,
	644817050,
	645072300,
	645327600,
	645582950,
	645838350,
	646093800,
	646349300,
	646604850,
	646860450,
	647116100,
	647371800,
	647627550,
	647883350,
	648139200,
	648395100,
	648651050,
	648907050,
	649163100,
	649419200,
	649675350,
	649931550,
	650187800,
	650444100,
	650700450,
	650956850,
	651213300,
	651469800,
	651726350,
	651982950,
	652239600,
	652496300,
	652753050,
	653009850,
	653266700,
	653523600,
	653780550,
	654037550,
	654294600,
	654551700,
	654808850,
	655066050,
	655323300,
	655580600,
	655837950,
	656095350,
	656352800,
	656610300,
	656867850,
	657125450,
	657383100,
	657640800,
	657898550,
	658156350,
	658414200,
	658672100,
	658930050,
	659188050,
	659446100,
	659704200,
	659962350,
	660220550,
	660478800,
	660737100,
	660995450,
	661253850,
	661512300,
	661770800,
	662029350,
	662287950,
	662546600,
	662805300,
	663064050,
	663322850,
	663581700,
	663840600,
	664099550,
	664358550,
	664617600,
	664876700,
	665135850,
	665395050,
	665654300,
	665913600,
	666172950,
	666432350,
	666691800,
	666951300,
	667210850,
	667470450,
	667730100,
	667989800,
	668249550,
	668509350,
	668769200,
	669029100,
	669289050,
	669549050,
	669809100,
	670069200,
	670329350,
	670589550,
	670849800,
	671110100,
	671370450,
	671630850,
	671891300,
	672151800,
	672412350,
	672672950,
	672933600,
	673194300,
	673455050,
	673715850,
	673976700,
	674237600,
	674498550,
	674759550,
	675020600,
	675281700,
	675542850,
	675804050,
	676065300,
	676326600,
	676587950,
	676849350,
	677110800,
	677372300,
	677633850,
	677895450,
	678157100,
	678418800,
	678680550,
	678942350,
	679204200,
	679466100,
	679728050,
	679990050,
	680252100,
	680514200,
	680776350,
	681038550,
	681300800,
	681563100,
	681825450,
	682087850,
	682350300,
	682612800,
	682875350,
	683137950,
	683400600,
	683663300,
	683926050,
	684188850,
	684451700,
	684714600,
	684977550,
	685240550,
	685503600,
	685766700,
	686029850,
	686293050,
	686556300,
	686819600,
	687082950,
	687346350,
	687609800,
	687873300,
	688136850,
	688400450,
	688664100,
	688927800,
	689191550,
	689455350,
	689719200,
	689983100,
	690247050,
	690511050,
	690775100,
	691039200,
	691303350,
	691567550,
	691831800,
	692096100,
	692360450,
	692624850,
	692889300,
	693153800,
	693418350,
	693682950,
	693947600,
	694212300,
	694477050,
	694741850,
	695006700,
	695271600,
	695536550,
	695801550,
	696066600,
	696331700,
	696596850,
	696862050,
	697127300,
	697392600,
	697657950,
	697923350,
	698188800,
	698454300,
	698719850,
	698985450,
	699251100,
	699516800,
	699782550,
	700048350,
	700314200,
	700580100,
	700846050,
	701112050,
	701378100,
	701644200,
	701910350,
	702176550,
	702442800,
	702709100,
	702975450,
	703241850,
	703508300,
	703774800,
	704041350,
	704307950,
	704574600,
	704841300,
	705108050,
	705374850,
	705641700,
	705908600,
	706175550,
	706442550,
	706709600,
	706976700,
	707243850,
	707511050,
	707778300,
	708045600,
	708312950,
	708580350,
	708847800,
	709115300,
	709382850,
	709650450,
	709918100,
	710185800,
	710453550,
	710721350,
	710989200,
	711257100,
	711525050,
	711793050,
	712061100,
	712329200,
	712597350,
	712865550,
	713133800,
	713402100,
	713670450,
	713938850,
	714207300,
	714475800,
	714744350,
	715012950,
	715281600,
	715550300,
	715819050,
	716087850,
	716356700,
	716625600,
	716894550,
	717163550,
	717432600,
	717701700,
	717970850,
	718240050,
	718509300,
	718778600,
	719047950,
	719317350,
	719586800,
	719856300,
	720125850,
	720395450,
	720665100,
	720934800,
	721204550,
	721474350,
	721744200,
	722014100,
	722284050,
	722554050,
	722824100,
	723094200,
	723364350,
	723634550,
	723904800,
	724175100,
	724445450,
	724715850,
	724986300,
	725256800,
	725527350,
	725797950,
	726068600,
	726339300,
	726610050,
	726880850,
	727151700,
	727422600,
	727693550,
	727964550,
	728235600,
	728506700,
	728777850,
	729049050,
	729320300,
	729591600,
	729862950,
	730134350,
	730405800,
	730677300,
	730948850,
	731220450,
	731492100,
	731763800,
	732035550,
	732307350,
	732579200,
	732851100,
	733123050,
	733395050,
	733667100,
	733939200,
	734211350,
	734483550,
	734755800,
	735028100,
	735300450,
	735572850,
	735845300,
	736117800,
	736390350,
	736662950,
	736935600,
	737208300,
	737481050,
	737753850,
	738026700,
	738299600,
	738572550,
	738845550,
	739118600,
	739391700,
	739664850,
	739938050,
	740211300,
	740484600,
	740757950,
	741031350,
	741304800,
	741578300,
	741851850,
	742125450,
	742399100,
	742672800,
	742946550,
	743220350,
	743494200,
	743768100,
	744042050,
	744316050,
	744590100,
	744864200,
	745138350,
	745412550,
	745686800,
	745961100,
	746235450,
	746509850,
	746784300,
	747058800,
	747333350,
	747607950,
	747882600,
	748157300,
	748432050,
	748706850,
	748981700,
	749256600,
	749531550,
	749806550,
	750081600,
	750356700,
	750631850,
	750907050,
	751182300,
	751457600,
	751732950,
	752008350,
	752283800,
	752559300,
	752834850,
	753110450,
	753386100,
	753661800,
	753937550,
	754213350,
	754489200,
	754765100,
	755041050,
	755317050,
	755593100,
	755869200,
	756145350,
	756421550,
	756697800,
	756974100,
	757250450,
	757526850,
	757803300,
	758079800,
	758356350,
	758632950,
	758909600,
	759186300,
	759463050,
	759739850,
	760016700,
	760293600,
	760570550,
	760847550,
	761124600,
	761401700,
	761678850,
	761956050,
	762233300,
	762510600,
	762787950,
	763065350,
	763342800,
	763620300,
	763897850,
	764175450,
	764453100,
	764730800,
	765008550,
	765286350,
	765564200,
	765842100,
	766120050,
	766398050,
	766676100,
	766954200,
	767232350,
	767510550,
	767788800,
	768067100,
	768345450,
	768623850,
	768902300,
	769180800,
	769459350,
	769737950,
	770016600,
	770295300,
	770574050,
	770852850,
	771131700,
	771410600,
	771689550,
	771968550,
	772247600,
	772526700,
	772805850,
	773085050,
	773364300,
	773643600,
	773922950,
	774202350,
	774481800,
	774761300,
	775040850,
	775320450,
	775600100,
	775879800,
	776159550,
	776439350,
	776719200,
	776999100,
	777279050,
	777559050,
	777839100,
	778119200,
	778399350,
	778679550,
	778959800,
	779240100,
	779520450,
	779800850,
	780081300,
	780361800,
	780642350,
	780922950,
	781203600,
	781484300,
	781765050,
	782045850,
	782326700,
	782607600,
	782888550,
	783169550,
	783450600,
	783731700,
	784012850,
	784294050,
	784575300,
	784856600,
	785137950,
	785419350,
	785700800,
	785982300,
	786263850,
	786545450,
	786827100,
	787108800,
	787390550,
	787672350,
	787954200,
	788236100,
	788518050,
	788800050,
	789082100,
	789364200,
	789646350,
	789928550,
	790210800,
	790493100,
	790775450,
	791057850,
	791340300,
	791622800,
	791905350,
	792187950,
	792470600,
	792753300,
	793036050,
	793318850,
	793601700,
	793884600,
	794167550,
	794450550,
	794733600,
	795016700,
	795299850,
	795583050,
	795866300,
	796149600,
	796432950,
	796716350,
	796999800,
	797283300,
	797566850,
	797850450,
	798134100,
	798417800,
	798701550,
	798985350,
	799269200,
	799553100,
	799837050,
	800121050,
	800405100,
	800689200,
	800973350,
	801257550,
	801541800,
	801826100,
	802110450,
	802394850,
	802679300,
	802963800,
	803248350,
	803532950,
	803817600,
	804102300,
	804387050,
	804671850,
	804956700,
	805241600,
	805526550,
	805811550,
	806096600,
	806381700,
	806666850,
	806952050,
	807237300,
	807522600,
	807807950,
	808093350,
	808378800,
	808664300,
	808949850,
	809235450,
	809521100,
	809806800,
	810092550,
	810378350,
	810664200,
	810950100,
	811236050,
	811522050,
	811808100,
	812094200,
	812380350,
	812666550,
	812952800,
	813239100,
	813525450,
	813811850,
	814098300,
	814384800,
	814671350,
	814957950,
	815244600,
	815531300,
	815818050,
	816104850,
	816391700,
	816678600,
	816965550,
	817252550,
	817539600,
	817826700,
	818113850,
	818401050,
	818688300,
	818975600,
	819262950,
	819550350,
	819837800,
	820125300,
	820412850,
	820700450,
	820988100,
	821275800,
	821563550,
	821851350,
	822139200,
	822427100,
	822715050,
	823003050,
	823291100,
	823579200,
	823867350,
	824155550,
	824443800,
	824732100,
	825020450,
	825308850,
	825597300,
	825885800,
	826174350,
	826462950,
	826751600,
	827040300,
	827329050,
	827617850,
	827906700,
	828195600,
	828484550,
	828773550,
	829062600,
	829351700,
	829640850,
	829930050,
	830219300,
	830508600,
	830797950,
	831087350,
	831376800,
	831666300,
	831955850,
	832245450,
	832535100,
	832824800,
	833114550,
	833404350,
	833694200,
	833984100,
	834274050,
	834564050,
	834854100,
	835144200,
	835434350,
	835724550,
	836014800,
	836305100,
	836595450,
	836885850,
	837176300,
	837466800,
	837757350,
	838047950,
	838338600,
	838629300,
	838920050,
	839210850,
	839501700,
	839792600,
	840083550,
	840374550,
	840665600,
	840956700,
	841247850,
	841539050,
	841830300,
	842121600,
	842412950,
	842704350,
	842995800,
	843287300,
	843578850,
	843870450,
	844162100,
	844453800,
	844745550,
	845037350,
	845329200,
	845621100,
	845913050,
	846205050,
	846497100,
	846789200,
	847081350,
	847373550,
	847665800,
	847958100,
	848250450,
	848542850,
	848835300,
	849127800,
	849420350,
	849712950,
	850005600,
	850298300,
	850591050,
	850883850,
	851176700,
	851469600,
	851762550,
	852055550,
	852348600,
	852641700,
	852934850,
	853228050,
	853521300,
	853814600,
	854107950,
	854401350,
	854694800,
	854988300,
	855281850,
	855575450,
	855869100,
	856162800,
	856456550,
	856750350,
	857044200,
	857338100,
	857632050,
	857926050,
	858220100,
	858514200,
	858808350,
	859102550,
	859396800,
	859691100,
	859985450,
	860279850,
	860574300,
	860868800,
	861163350,
	861457950,
	861752600,
	862047300,
	862342050,
	862636850,
	862931700,
	863226600,
	863521550,
	863816550,
	864111600,
	864406700,
	864701850,
	864997050,
	865292300,
	865587600,
	865882950,
	866178350,
	866473800,
	866769300,
	867064850,
	867360450,
	867656100,
	867951800,
	868247550,
	868543350,
	868839200,
	869135100,
	869431050,
	869727050,
	870023100,
	870319200,
	870615350,
	870911550,
	871207800,
	871504100,
	871800450,
	872096850,
	872393300,
	872689800,
	872986350,
	873282950,
	873579600,
	873876300,
	874173050,
	874469850,
	874766700,
	875063600,
	875360550,
	875657550,
	875954600,
	876251700,
	876548850,
	876846050,
	877143300,
	877440600,
	877737950,
	878035350,
	878332800,
	878630300,
	878927850,
	879225450,
	879523100,
	879820800,
	880118550,
	880416350,
	880714200,
	881012100,
	881310050,
	881608050,
	881906100,
	882204200,
	882502350,
	882800550,
	883098800,
	883397100,
	883695450,
	883993850,
	884292300,
	884590800,
	884889350,
	885187950,
	885486600,
	885785300,
	886084050,
	886382850,
	886681700,
	886980600,
	887279550,
	887578550,
	887877600,
	888176700,
	888475850,
	888775050,
	889074300,
	889373600,
	889672950,
	889972350,
	890271800,
	890571300,
	890870850,
	891170450,
	891470100,
	891769800,
	892069550,
	892369350,
	892669200,
	892969100,
	893269050,
	893569050,
	893869100,
	894169200,
	894469350,
	894769550,
	895069800,
	895370100,
	895670450,
	895970850,
	896271300,
	896571800,
	896872350,
	897172950,
	897473600,
	897774300,
	898075050,
	898375850,
	898676700,
	898977600,
	899278550,
	899579550,
	899880600,
	900181700,
	900482850,
	900784050,
	901085300,
	901386600,
	901687950,
	901989350,
	902290800,
	902592300,
	902893850,
	903195450,
	903497100,
	903798800,
	904100550,
	904402350,
	904704200,
	905006100,
	905308050,
	905610050,
	905912100,
	906214200,
	906516350,
	906818550,
	907120800,
	907423100,
	907725450,
	908027850,
	908330300,
	908632800,
	908935350,
	909237950,
	909540600,
	909843300,
	910146050,
	910448850,
	910751700,
	911054600,
	911357550,
	911660550,
	911963600,
	912266700,
	912569850,
	912873050,
	913176300,
	913479600,
	913782950,
	914086350,
	914389800,
	914693300,
	914996850,
	915300450,
	915604100,
	915907800,
	916211550,
	916515350,
	916819200,
	917123100,
	917427050,
	917731050,
	918035100,
	918339200,
	918643350,
	918947550,
	919251800,
	919556100,
	919860450,
	920164850,
	920469300,
	920773800,
	921078350,
	921382950,
	921687600,
	921992300,
	922297050,
	922601850,
	922906700,
	923211600,
	923516550,
	923821550,
	924126600,
	924431700,
	924736850,
	925042050,
	925347300,
	925652600,
	925957950,
	926263350,
	926568800,
	926874300,
	927179850,
	927485450,
	927791100,
	928096800,
	928402550,
	928708350,
	929014200,
	929320100,
	929626050,
	929932050,
	930238100,
	930544200,
	930850350,
	931156550,
	931462800,
	931769100,
	932075450,
	932381850,
	932688300,
	932994800,
	933301350,
	933607950,
	933914600,
	934221300,
	934528050,
	934834850,
	935141700,
	935448600,
	935755550,
	936062550,
	936369600,
	936676700,
	936983850,
	937291050,
	937598300,
	937905600,
	938212950,
	938520350,
	938827800,
	939135300,
	939442850,
	939750450,
	940058100,
	940365800,
	940673550,
	940981350,
	941289200,
	941597100,
	941905050,
	942213050,
	942521100,
	942829200,
	943137350,
	943445550,
	943753800,
	944062100,
	944370450,
	944678850,
	944987300,
	945295800,
	945604350,
	945912950,
	946221600,
	946530300,
	946839050,
	947147850,
	947456700,
	947765600,
	948074550,
	948383550,
	948692600,
	949001700,
	949310850,
	949620050,
	949929300,
	950238600,
	950547950,
	950857350,
	951166800,
	951476300,
	951785850,
	952095450,
	952405100,
	952714800,
	953024550,
	953334350,
	953644200,
	953954100,
	954264050,
	954574050,
	954884100,
	955194200,
	955504350,
	955814550,
	956124800,
	956435100,
	956745450,
	957055850,
	957366300,
	957676800,
	957987350,
	958297950,
	958608600,
	958919300,
	959230050,
	959540850,
	959851700,
	960162600,
	960473550,
	960784550,
	961095600,
	961406700,
	961717850,
	962029050,
	962340300,
	962651600,
	962962950,
	963274350,
	963585800,
	963897300,
	964208850,
	964520450,
	964832100,
	965143800,
	965455550,
	965767350,
	966079200,
	966391100,
	966703050,
	967015050,
	967327100,
	967639200,
	967951350,
	968263550,
	968575800,
	968888100,
	969200450,
	969512850,
	969825300,
	970137800,
	970450350,
	970762950,
	971075600,
	971388300,
	971701050,
	972013850,
	972326700,
	972639600,
	972952550,
	973265550,
	973578600,
	973891700,
	974204850,
	974518050,
	974831300,
	975144600,
	975457950,
	975771350,
	976084800,
	976398300,
	976711850,
	977025450,
	977339100,
	977652800,
	977966550,
	978280350,
	978594200,
	978908100,
	979222050,
	979536050,
	979850100,
	980164200,
	980478350,
	980792550,
	981106800,
	981421100,
	981735450,
	982049850,
	982364300,
	982678800,
	982993350,
	983307950,
	983622600,
	983937300,
	984252050,
	984566850,
	984881700,
	985196600,
	985511550,
	985826550,
	986141600,
	986456700,
	986771850,
	987087050,
	987402300,
	987717600,
	988032950,
	988348350,
	988663800,
	988979300,
	989294850,
	989610450,
	989926100,
	990241800,
	990557550,
	990873350,
	991189200,
	991505100,
	991821050,
	992137050,
	992453100,
	992769200,
	993085350,
	993401550,
	993717800,
	994034100,
	994350450,
	994666850,
	994983300,
	995299800,
	995616350,
	995932950,
	996249600,
	996566300,
	996883050,
	997199850,
	997516700,
	997833600,
	998150550,
	998467550,
	998784600,
	999101700,
	999418850,
	999736050,
	1000053300,
	1000370600,
	1000687950,
	1001005350,
	1001322800,
	1001640300,
	1001957850,
	1002275450,
	1002593100,
	1002910800,
	1003228550,
	1003546350,
	1003864200,
	1004182100,
	1004500050,
	1004818050,
	1005136100,
	1005454200,
	1005772350,
	1006090550,
	1006408800,
	1006727100,
	1007045450,
	1007363850,
	1007682300,
	1008000800,
	1008319350,
	1008637950,
	1008956600,
	1009275300,
	1009594050,
	1009912850,
	1010231700,
	1010550600,
	1010869550,
	1011188550,
	1011507600,
	1011826700,
	1012145850,
	1012465050,
	1012784300,
	1013103600,
	1013422950,
	1013742350,
	1014061800,
	1014381300,
	1014700850,
	1015020450,
	1015340100,
	1015659800,
	1015979550,
	1016299350,
	1016619200,
	1016939100,
	1017259050,
	1017579050,
	1017899100,
	1018219200,
	1018539350,
	1018859550,
	1019179800,
	1019500100,
	1019820450,
	1020140850,
	1020461300,
	1020781800,
	1021102350,
	1021422950,
	1021743600,
	1022064300,
	1022385050,
	1022705850,
	1023026700,
	1023347600,
	1023668550,
	1023989550,
	1024310600,
	1024631700,
	1024952850,
	1025274050,
	1025595300,
	1025916600,
	1026237950,
	1026559350,
	1026880800,
	1027202300,
	1027523850,
	1027845450,
	1028167100,
	1028488800,
	1028810550,
	1029132350,
	1029454200,
	1029776100,
	1030098050,
	1030420050,
	1030742100,
	1031064200,
	1031386350,
	1031708550,
	1032030800,
	1032353100,
	1032675450,
	1032997850,
	1033320300,
	1033642800,
	1033965350,
	1034287950,
	1034610600,
	1034933300,
	1035256050,
	1035578850,
	1035901700,
	1036224600,
	1036547550,
	1036870550,
	1037193600,
	1037516700,
	1037839850,
	1038163050,
	1038486300,
	1038809600,
	1039132950,
	1039456350,
	1039779800,
	1040103300,
	1040426850,
	1040750450,
	1041074100,
	1041397800,
	1041721550,
	1042045350,
	1042369200,
	1042693100,
	1043017050,
	1043341050,
	1043665100,
	1043989200,
	1044313350,
	1044637550,
	1044961800,
	1045286100,
	1045610450,
	1045934850,
	1046259300,
	1046583800,
	1046908350,
	1047232950,
	1047557600,
	1047882300,
	1048207050,
	1048531850,
	1048856700,
	1049181600,
	1049506550,
	1049831550,
	1050156600,
	1050481700,
	1050806850,
	1051132050,
	1051457300,
	1051782600,
	1052107950,
	1052433350,
	1052758800,
	1053084300,
	1053409850,
	1053735450,
	1054061100,
	1054386800,
	1054712550,
	1055038350,
	1055364200,
	1055690100,
	1056016050,
	1056342050,
	1056668100,
	1056994200,
	1057320350,
	1057646550,
	1057972800,
	1058299100,
	1058625450,
	1058951850,
	1059278300,
	1059604800,
	1059931350,
	1060257950,
	1060584600,
	1060911300,
	1061238050,
	1061564850,
	1061891700,
	1062218600,
	1062545550,
	1062872550,
	1063199600,
	1063526700,
	1063853850,
	1064181050,
	1064508300,
	1064835600,
	1065162950,
	1065490350,
	1065817800,
	1066145300,
	1066472850,
	1066800450,
	1067128100,
	1067455800,
	1067783550,
	1068111350,
	1068439200,
	1068767100,
	1069095050,
	1069423050,
	1069751100,
	1070079200,
	1070407350,
	1070735550,
	1071063800,
	1071392100,
	1071720450,
	1072048850,
	1072377300,
	1072705800,
	1073034350,
	1073362950,
	1073691600,
	1074020300,
	1074349050,
	1074677850,
	1075006700,
	1075335600,
	1075664550,
	1075993550,
	1076322600,
	1076651700,
	1076980850,
	1077310050,
	1077639300,
	1077968600,
	1078297950,
	1078627350,
	1078956800,
	1079286300,
	1079615850,
	1079945450,
	1080275100,
	1080604800,
	1080934550,
	1081264350,
	1081594200,
	1081924100,
	1082254050,
	1082584050,
	1082914100,
	1083244200,
	1083574350,
	1083904550,
	1084234800,
	1084565100,
	1084895450,
	1085225850,
	1085556300,
	1085886800,
	1086217350,
	1086547950,
	1086878600,
	1087209300,
	1087540050,
	1087870850,
	1088201700,
	1088532600,
	1088863550,
	1089194550,
	1089525600,
	1089856700,
	1090187850,
	1090519050,
	1090850300,
	1091181600,
	1091512950,
	1091844350,
	1092175800,
	1092507300,
	1092838850,
	1093170450,
	1093502100,
	1093833800,
	1094165550,
	1094497350,
	1094829200,
	1095161100,
	1095493050,
	1095825050,
	1096157100,
	1096489200,
	1096821350,
	1097153550,
	1097485800,
	1097818100,
	1098150450,
	1098482850,
	1098815300,
	1099147800,
	1099480350,
	1099812950,
	1100145600,
	1100478300,
	1100811050,
	1101143850,
	1101476700,
	1101809600,
	1102142550,
	1102475550,
	1102808600,
	1103141700,
	1103474850,
	1103808050,
	1104141300,
	1104474600,
	1104807950,
	1105141350,
	1105474800,
	1105808300,
	1106141850,
	1106475450,
	1106809100,
	1107142800,
	1107476550,
	1107810350,
	1108144200,
	1108478100,
	1108812050,
	1109146050,
	1109480100,
	1109814200,
	1110148350,
	1110482550,
	1110816800,
	1111151100,
	1111485450,
	1111819850,
	1112154300,
	1112488800,
	1112823350,
	1113157950,
	1113492600,
	1113827300,
	1114162050,
	1114496850,
	1114831700,
	1115166600,
	1115501550,
	1115836550,
	1116171600,
	1116506700,
	1116841850,
	1117177050,
	1117512300,
	1117847600,
	1118182950,
	1118518350,
	1118853800,
	1119189300,
	1119524850,
	1119860450,
	1120196100,
	1120531800,
	1120867550,
	1121203350,
	1121539200,
	1121875100,
	1122211050,
	1122547050,
	1122883100,
	1123219200,
	1123555350,
	1123891550,
	1124227800,
	1124564100,
	1124900450,
	1125236850,
	1125573300,
	1125909800,
	1126246350,
	1126582950,
	1126919600,
	1127256300,
	1127593050,
	1127929850,
	1128266700,
	1128603600,
	1128940550,
	1129277550,
	1129614600,
	1129951700,
	1130288850,
	1130626050,
	1130963300,
	1131300600,
	1131637950,
	1131975350,
	1132312800,
	1132650300,
	1132987850,
	1133325450,
	1133663100,
	1134000800,
	1134338550,
	1134676350,
	1135014200,
	1135352100,
	1135690050,
	1136028050,
	1136366100,
	1136704200,
	1137042350,
	1137380550,
	1137718800,
	1138057100,
	1138395450,
	1138733850,
	1139072300,
	1139410800,
	1139749350,
	1140087950,
	1140426600,
	1140765300,
	1141104050,
	1141442850,
	1141781700,
	1142120600,
	1142459550,
	1142798550,
	1143137600,
	1143476700,
	1143815850,
	1144155050,
	1144494300,
	1144833600,
	1145172950,
	1145512350,
	1145851800,
	1146191300,
	1146530850,
	1146870450,
	1147210100,
	1147549800,
	1147889550,
	1148229350,
	1148569200,
	1148909100,
	1149249050,
	1149589050,
	1149929100,
	1150269200,
	1150609350,
	1150949550,
	1151289800,
	1151630100,
	1151970450,
	1152310850,
	1152651300,
	1152991800,
	1153332350,
	1153672950,
	1154013600,
	1154354300,
	1154695050,
	1155035850,
	1155376700,
	1155717600,
	1156058550,
	1156399550,
	1156740600,
	1157081700,
	1157422850,
	1157764050,
	1158105300,
	1158446600,
	1158787950,
	1159129350,
	1159470800,
	1159812300,
	1160153850,
	1160495450,
	1160837100,
	1161178800,
	1161520550,
	1161862350,
	1162204200,
	1162546100,
	1162888050,
	1163230050,
	1163572100,
	1163914200,
	1164256350,
	1164598550,
	1164940800,
	1165283100,
	1165625450,
	1165967850,
	1166310300,
	1166652800,
	1166995350,
	1167337950,
	1167680600,
	1168023300,
	1168366050,
	1168708850,
	1169051700,
	1169394600,
	1169737550,
	1170080550,
	1170423600,
	1170766700,
	1171109850,
	1171453050,
	1171796300,
	1172139600,
	1172482950,
	1172826350,
	1173169800,
	1173513300,
	1173856850,
	1174200450,
	1174544100,
	1174887800,
	1175231550,
	1175575350,
	1175919200,
	1176263100,
	1176607050,
	1176951050,
	1177295100,
	1177639200,
	1177983350,
	1178327550,
	1178671800,
	1179016100,
	1179360450,
	1179704850,
	1180049300,
	1180393800,
	1180738350,
	1181082950,
	1181427600,
	1181772300,
	1182117050,
	1182461850,
	1182806700,
	1183151600,
	1183496550,
	1183841550,
	1184186600,
	1184531700,
	1184876850,
	1185222050,
	1185567300,
	1185912600,
	1186257950,
	1186603350,
	1186948800,
	1187294300,
	1187639850,
	1187985450,
	1188331100,
	1188676800,
	1189022550,
	1189368350,
	1189714200,
	1190060100,
	1190406050,
	1190752050,
	1191098100,
	1191444200,
	1191790350,
	1192136550,
	1192482800,
	1192829100,
	1193175450,
	1193521850,
	1193868300,
	1194214800,
	1194561350,
	1194907950,
	1195254600,
	1195601300,
	1195948050,
	1196294850,
	1196641700,
	1196988600,
	1197335550,
	1197682550,
	1198029600,
	1198376700,
	1198723850,
	1199071050,
	1199418300,
	1199765600,
	1200112950,
	1200460350,
	1200807800,
	1201155300,
	1201502850,
	1201850450,
	1202198100,
	1202545800,
	1202893550,
	1203241350,
	1203589200,
	1203937100,
	1204285050,
	1204633050,
	1204981100,
	1205329200,
	1205677350,
	1206025550,
	1206373800,
	1206722100,
	1207070450,
	1207418850,
	1207767300,
	1208115800,
	1208464350,
	1208812950,
	1209161600,
	1209510300,
	1209859050,
	1210207850,
	1210556700,
	1210905600,
	1211254550,
	1211603550,
	1211952600,
	1212301700,
	1212650850,
	1213000050,
	1213349300,
	1213698600,
	1214047950,
	1214397350,
	1214746800,
	1215096300,
	1215445850,
	1215795450,
	1216145100,
	1216494800,
	1216844550,
	1217194350,
	1217544200,
	1217894100,
	1218244050,
	1218594050,
	1218944100,
	1219294200,
	1219644350,
	1219994550,
	1220344800,
	1220695100,
	1221045450,
	1221395850,
	1221746300,
	1222096800,
	1222447350,
	1222797950,
	1223148600,
	1223499300,
	1223850050,
	1224200850,
	1224551700,
	1224902600,
	1225253550,
	1225604550,
	1225955600,
	1226306700,
	1226657850,
	1227009050,
	1227360300,
	1227711600,
	1228062950,
	1228414350,
	1228765800,
	1229117300,
	1229468850,
	1229820450,
	1230172100,
	1230523800,
	1230875550,
	1231227350,
	1231579200,
	1231931100,
	1232283050,
	1232635050,
	1232987100,
	1233339200,
	1233691350,
	1234043550,
	1234395800,
	1234748100,
	1235100450,
	1235452850,
	1235805300,
	1236157800,
	1236510350,
	1236862950,
	1237215600,
	1237568300,
	1237921050,
	1238273850,
	1238626700,
	1238979600,
	1239332550,
	1239685550,
	1240038600,
	1240391700,
	1240744850,
	1241098050,
	1241451300,
	1241804600,
	1242157950,
	1242511350,
	1242864800,
	1243218300,
	1243571850,
	1243925450,
	1244279100,
	1244632800,
	1244986550,
	1245340350,
	1245694200,
	1246048100,
	1246402050,
	1246756050,
	1247110100,
	1247464200,
	1247818350,
	1248172550,
	1248526800,
	1248881100,
	1249235450,
	1249589850,
	1249944300,
	1250298800,
	1250653350,
	1251007950,
	1251362600,
	1251717300,
	1252072050,
	1252426850,
	1252781700,
	1253136600,
	1253491550,
	1253846550,
	1254201600,
	1254556700,
	1254911850,
	1255267050,
	1255622300,
	1255977600,
	1256332950,
	1256688350,
	1257043800,
	1257399300,
	1257754850,
	1258110450,
	1258466100,
	1258821800,
	1259177550,
	1259533350,
	1259889200,
	1260245100,
	1260601050,
	1260957050,
	1261313100,
	1261669200,
	1262025350,
	1262381550,
	1262737800,
	1263094100,
	1263450450,
	1263806850,
	1264163300,
	1264519800,
	1264876350,
	1265232950,
	1265589600,
	1265946300,
	1266303050,
	1266659850,
	1267016700,
	1267373600,
	1267730550,
	1268087550,
	1268444600,
	1268801700,
	1269158850,
	1269516050,
	1269873300,
	1270230600,
	1270587950,
	1270945350,
	1271302800,
	1271660300,
	1272017850,
	1272375450,
	1272733100,
	1273090800,
	1273448550,
	1273806350,
	1274164200,
	1274522100,
	1274880050,
	1275238050,
	1275596100,
	1275954200,
	1276312350,
	1276670550,
	1277028800,
	1277387100,
	1277745450,
	1278103850,
	1278462300,
	1278820800,
	1279179350,
	1279537950,
	1279896600,
	1280255300,
	1280614050,
	1280972850,
	1281331700,
	1281690600,
	1282049550,
	1282408550,
	1282767600,
	1283126700,
	1283485850,
	1283845050,
	1284204300,
	1284563600,
	1284922950,
	1285282350,
	1285641800,
	1286001300,
	1286360850,
	1286720450,
	1287080100,
	1287439800,
	1287799550,
	1288159350,
	1288519200,
	1288879100,
	1289239050,
	1289599050,
	1289959100,
	1290319200,
	1290679350,
	1291039550,
	1291399800,
	1291760100,
	1292120450,
	1292480850,
	1292841300,
	1293201800,
	1293562350,
	1293922950,
	1294283600,
	1294644300,
	1295005050,
	1295365850,
	1295726700,
	1296087600,
	1296448550,
	1296809550,
	1297170600,
	1297531700,
	1297892850,
	1298254050,
	1298615300,
	1298976600,
	1299337950,
	1299699350,
	1300060800,
	1300422300,
	1300783850,
	1301145450,
	1301507100,
	1301868800,
	1302230550,
	1302592350,
	1302954200,
	1303316100,
	1303678050,
	1304040050,
	1304402100,
	1304764200,
	1305126350,
	1305488550,
	1305850800,
	1306213100,
	1306575450,
	1306937850,
	1307300300,
	1307662800,
	1308025350,
	1308387950,
	1308750600,
	1309113300,
	1309476050,
	1309838850,
	1310201700,
	1310564600,
	1310927550,
	1311290550,
	1311653600,
	1312016700,
	1312379850,
	1312743050,
	1313106300,
	1313469600,
	1313832950,
	1314196350,
	1314559800,
	1314923300,
	1315286850,
	1315650450,
	1316014100,
	1316377800,
	1316741550,
	1317105350,
	1317469200,
	1317833100,
	1318197050,
	1318561050,
	1318925100,
	1319289200,
	1319653350,
	1320017550,
	1320381800,
	1320746100,
	1321110450,
	1321474850,
	1321839300,
	1322203800,
	1322568350,
	1322932950,
	1323297600,
	1323662300,
	1324027050,
	1324391850,
	1324756700,
	1325121600,
	1325486550,
	1325851550,
	1326216600,
	1326581700,
	1326946850,
	1327312050,
	1327677300,
	1328042600,
	1328407950,
	1328773350,
	1329138800,
	1329504300,
	1329869850,
	1330235450,
	1330601100,
	1330966800,
	1331332550,
	1331698350,
	1332064200,
	1332430100,
	1332796050,
	1333162050,
	1333528100,
	1333894200,
	1334260350,
	1334626550,
	1334992800,
	1335359100,
	1335725450,
	1336091850,
	1336458300,
	1336824800,
	1337191350,
	1337557950,
	1337924600,
	1338291300,
	1338658050,
	1339024850,
	1339391700,
	1339758600,
	1340125550,
	1340492550,
	1340859600,
	1341226700,
	1341593850,
	1341961050,
	1342328300,
	1342695600,
	1343062950,
	1343430350,
	1343797800,
	1344165300,
	1344532850,
	1344900450,
	1345268100,
	1345635800,
	1346003550,
	1346371350,
	1346739200,
	1347107100,
	1347475050,
	1347843050,
	1348211100,
	1348579200,
	1348947350,
	1349315550,
	1349683800,
	1350052100,
	1350420450,
	1350788850,
	1351157300,
	1351525800,
	1351894350,
	1352262950,
	1352631600,
	1353000300,
	1353369050,
	1353737850,
	1354106700,
	1354475600,
	1354844550,
	1355213550,
	1355582600,
	1355951700,
	1356320850,
	1356690050,
	1357059300,
	1357428600,
	1357797950,
	1358167350,
	1358536800,
	1358906300,
	1359275850,
	1359645450,
	1360015100,
	1360384800,
	1360754550,
	1361124350,
	1361494200,
	1361864100,
	1362234050,
	1362604050,
	1362974100,
	1363344200,
	1363714350,
	1364084550,
	1364454800,
	1364825100,
	1365195450,
	1365565850,
	1365936300,
	1366306800,
	1366677350,
	1367047950,
	1367418600,
	1367789300,
	1368160050,
	1368530850,
	1368901700,
	1369272600,
	1369643550,
	1370014550,
	1370385600,
	1370756700,
	1371127850,
	1371499050,
	1371870300,
	1372241600,
	1372612950,
	1372984350,
	1373355800,
	1373727300,
	1374098850,
	1374470450,
	1374842100,
	1375213800,
	1375585550,
	1375957350,
	1376329200,
	1376701100,
	1377073050,
	1377445050,
	1377817100,
	1378189200,
	1378561350,
	1378933550,
	1379305800,
	1379678100,
	1380050450,
	1380422850,
	1380795300,
	1381167800,
	1381540350,
	1381912950,
	1382285600,
	1382658300,
	1383031050,
	1383403850,
	1383776700,
	1384149600,
	1384522550,
	1384895550,
	1385268600,
	1385641700,
	1386014850,
	1386388050,
	1386761300,
	1387134600,
	1387507950,
	1387881350,
	1388254800,
	1388628300,
	1389001850,
	1389375450,
	1389749100,
	1390122800,
	1390496550,
	1390870350,
	1391244200,
	1391618100,
	1391992050,
	1392366050,
	1392740100,
	1393114200,
	1393488350,
	1393862550,
	1394236800,
	1394611100,
	1394985450,
	1395359850,
	1395734300,
	1396108800,
	1396483350,
	1396857950,
	1397232600,
	1397607300,
	1397982050,
	1398356850,
	1398731700,
	1399106600,
	1399481550,
	1399856550,
	1400231600,
	1400606700,
	1400981850,
	1401357050,
	1401732300,
	1402107600,
	1402482950,
	1402858350,
	1403233800,
	1403609300,
	1403984850,
	1404360450,
	1404736100,
	1405111800,
	1405487550,
	1405863350,
	1406239200,
	1406615100,
	1406991050,
	1407367050,
	1407743100,
	1408119200,
	1408495350,
	1408871550,
	1409247800,
	1409624100,
	1410000450,
	1410376850,
	1410753300,
	1411129800,
	1411506350,
	1411882950,
	1412259600,
	1412636300,
	1413013050,
	1413389850,
	1413766700,
	1414143600,
	1414520550,
	1414897550,
	1415274600,
	1415651700,
	1416028850,
	1416406050,
	1416783300,
	1417160600,
	1417537950,
	1417915350,
	1418292800,
	1418670300,
	1419047850,
	1419425450,
	1419803100,
	1420180800,
	1420558550,
	1420936350,
	1421314200,
	1421692100,
	1422070050,
	1422448050,
	1422826100,
	1423204200,
	1423582350,
	1423960550,
	1424338800,
	1424717100,
	1425095450,
	1425473850,
	1425852300,
	1426230800,
	1426609350,
	1426987950,
	1427366600,
	1427745300,
	1428124050,
	1428502850,
	1428881700,
	1429260600,
	1429639550,
	1430018550,
	1430397600,
	1430776700,
	1431155850,
	1431535050,
	1431914300,
	1432293600,
	1432672950,
	1433052350,
	1433431800,
	1433811300,
	1434190850,
	1434570450,
	1434950100,
	1435329800,
	1435709550,
	1436089350,
	1436469200,
	1436849100,
	1437229050,
	1437609050,
	1437989100,
	1438369200,
	1438749350,
	1439129550,
	1439509800,
	1439890100,
	1440270450,
	1440650850,
	1441031300,
	1441411800,
	1441792350,
	1442172950,
	1442553600,
	1442934300,
	1443315050,
	1443695850,
	1444076700,
	1444457600,
	1444838550,
	1445219550,
	1445600600,
	1445981700,
	1446362850,
	1446744050,
	1447125300,
	1447506600,
	1447887950,
	1448269350,
	1448650800,
	1449032300,
	1449413850,
	1449795450,
	1450177100,
	1450558800,
	1450940550,
	1451322350,
	1451704200,
	1452086100,
	1452468050,
	1452850050,
	1453232100,
	1453614200,
	1453996350,
	1454378550,
	1454760800,
	1455143100,
	1455525450,
	1455907850,
	1456290300,
	1456672800,
	1457055350,
	1457437950,
	1457820600,
	1458203300,
	1458586050,
	1458968850,
	1459351700,
	1459734600,
	1460117550,
	1460500550,
	1460883600,
	1461266700,
	1461649850,
	1462033050,
	1462416300,
	1462799600,
	1463182950,
	1463566350,
	1463949800,
	1464333300,
	1464716850,
	1465100450,
	1465484100,
	1465867800,
	1466251550,
	1466635350,
	1467019200,
	1467403100,
	1467787050,
	1468171050,
	1468555100,
	1468939200,
	1469323350,
	1469707550,
	1470091800,
	1470476100,
	1470860450,
	1471244850,
	1471629300,
	1472013800,
	1472398350,
	1472782950,
	1473167600,
	1473552300,
	1473937050,
	1474321850,
	1474706700,
	1475091600,
	1475476550,
	1475861550,
	1476246600,
	1476631700,
	1477016850,
	1477402050,
	1477787300,
	1478172600,
	1478557950,
	1478943350,
	1479328800,
	1479714300,
	1480099850,
	1480485450,
	1480871100,
	1481256800,
	1481642550,
	1482028350,
	1482414200,
	1482800100,
	1483186050,
	1483572050,
	1483958100,
	1484344200,
	1484730350,
	1485116550,
	1485502800,
	1485889100,
	1486275450,
	1486661850,
	1487048300,
	1487434800,
	1487821350,
	1488207950,
	1488594600,
	1488981300,
	1489368050,
	1489754850,
	1490141700,
	1490528600,
	1490915550,
	1491302550,
	1491689600,
	1492076700,
	1492463850,
	1492851050,
	1493238300,
	1493625600,
	1494012950,
	1494400350,
	1494787800,
	1495175300,
	1495562850,
	1495950450,
	1496338100,
	1496725800,
	1497113550,
	1497501350,
	1497889200,
	1498277100,
	1498665050,
	1499053050,
	1499441100,
	1499829200,
	1500217350,
	1500605550,
	1500993800,
	1501382100,
	1501770450,
	1502158850,
	1502547300,
	1502935800,
	1503324350,
	1503712950,
	1504101600,
	1504490300,
	1504879050,
	1505267850,
	1505656700,
	1506045600,
	1506434550,
	1506823550,
	1507212600,
	1507601700,
	1507990850,
	1508380050,
	1508769300,
	1509158600,
	1509547950,
	1509937350,
	1510326800,
	1510716300,
	1511105850,
	1511495450,
	1511885100,
	1512274800,
	1512664550,
	1513054350,
	1513444200,
	1513834100,
	1514224050,
	1514614050,
	1515004100,
	1515394200,
	1515784350,
	1516174550,
	1516564800,
	1516955100,
	1517345450,
	1517735850,
	1518126300,
	1518516800,
	1518907350,
	1519297950,
	1519688600,
	1520079300,
	1520470050,
	1520860850,
	1521251700,
	1521642600,
	1522033550,
	1522424550,
	1522815600,
	1523206700,
	1523597850,
	1523989050,
	1524380300,
	1524771600,
	1525162950,
	1525554350,
	1525945800,
	1526337300,
	1526728850,
	1527120450,
	1527512100,
	1527903800,
	1528295550,
	1528687350,
	1529079200,
	1529471100,
	1529863050,
	1530255050,
	1530647100,
	1531039200,
	1531431350,
	1531823550,
	1532215800,
	1532608100,
	1533000450,
	1533392850,
	1533785300,
	1534177800,
	1534570350,
	1534962950,
	1535355600,
	1535748300,
	1536141050,
	1536533850,
	1536926700,
	1537319600,
	1537712550,
	1538105550,
	1538498600,
	1538891700,
	1539284850,
	1539678050,
	1540071300,
	1540464600,
	1540857950,
	1541251350,
	1541644800,
	1542038300,
	1542431850,
	1542825450,
	1543219100,
	1543612800,
	1544006550,
	1544400350,
	1544794200,
	1545188100,
	1545582050,
	1545976050,
	1546370100,
	1546764200,
	1547158350,
	1547552550,
	1547946800,
	1548341100,
	1548735450,
	1549129850,
	1549524300,
	1549918800,
	1550313350,
	1550707950,
	1551102600,
	1551497300,
	1551892050,
	1552286850,
	1552681700,
	1553076600,
	1553471550,
	1553866550,
	1554261600,
	1554656700,
	1555051850,
	1555447050,
	1555842300,
	1556237600,
	1556632950,
	1557028350,
	1557423800,
	1557819300,
	1558214850,
	1558610450,
	1559006100,
	1559401800,
	1559797550,
	1560193350,
	1560589200,
	1560985100,
	1561381050,
	1561777050,
	1562173100,
	1562569200,
	1562965350,
	1563361550,
	1563757800,
	1564154100,
	1564550450,
	1564946850,
	1565343300,
	1565739800,
	1566136350,
	1566532950,
	1566929600,
	1567326300,
	1567723050,
	1568119850,
	1568516700,
	1568913600,
	1569310550,
	1569707550,
	1570104600,
	1570501700,
	1570898850,
	1571296050,
	1571693300,
	1572090600,
	1572487950,
	1572885350,
	1573282800,
	1573680300,
	1574077850,
	1574475450,
	1574873100,
	1575270800,
	1575668550,
	1576066350,
	1576464200,
	1576862100,
	1577260050,
	1577658050,
	1578056100,
	1578454200,
	1578852350,
	1579250550,
	1579648800,
	1580047100,
	1580445450,
	1580843850,
	1581242300,
	1581640800,
	1582039350,
	1582437950,
	1582836600,
	1583235300,
	1583634050,
	1584032850,
	1584431700,
	1584830600,
	1585229550,
	1585628550,
	1586027600,
	1586426700,
	1586825850,
	1587225050,
	1587624300,
	1588023600,
	1588422950,
	1588822350,
	1589221800,
	1589621300,
	1590020850,
	1590420450,
	1590820100,
	1591219800,
	1591619550,
	1592019350,
	1592419200,
	1592819100,
	1593219050,
	1593619050,
	1594019100,
	1594419200,
	1594819350,
	1595219550,
	1595619800,
	1596020100,
	1596420450,
	1596820850,
	1597221300,
	1597621800,
	1598022350,
	1598422950,
	1598823600,
	1599224300,
	1599625050,
	1600025850,
	1600426700,
	1600827600,
	1601228550,
	1601629550,
	1602030600,
	1602431700,
	1602832850,
	1603234050,
	1603635300,
	1604036600,
	1604437950,
	1604839350,
	1605240800,
	1605642300,
	1606043850,
	1606445450,
	1606847100,
	1607248800,
	1607650550,
	1608052350,
	1608454200,
	1608856100,
	1609258050,
	1609660050,
	1610062100,
	1610464200,
	1610866350,
	1611268550,
	1611670800,
	1612073100,
	1612475450,
	1612877850,
	1613280300,
	1613682800,
	1614085350,
	1614487950,
	1614890600,
	1615293300,
	1615696050,
	1616098850,
	1616501700,
	1616904600,
	1617307550,
	1617710550,
	1618113600,
	1618516700,
	1618919850,
	1619323050,
	1619726300,
	1620129600,
	1620532950,
	1620936350,
	1621339800,
	1621743300,
	1622146850,
	1622550450,
	1622954100,
	1623357800,
	1623761550,
	1624165350,
	1624569200,
	1624973100,
	1625377050,
	1625781050,
	1626185100,
	1626589200,
	1626993350,
	1627397550,
	1627801800,
	1628206100,
	1628610450,
	1629014850,
	1629419300,
	1629823800,
	1630228350,
	1630632950,
	1631037600,
	1631442300,
	1631847050,
	1632251850,
	1632656700,
	1633061600,
	1633466550,
	1633871550,
	1634276600,
	1634681700,
	1635086850,
	1635492050,
	1635897300,
	1636302600,
	1636707950,
	1637113350,
	1637518800,
	1637924300,
	1638329850,
	1638735450,
	1639141100,
	1639546800,
	1639952550,
	1640358350,
	1640764200,
	1641170100,
	1641576050,
	1641982050,
	1642388100,
	1642794200,
	1643200350,
	1643606550,
	1644012800,
	1644419100,
	1644825450,
	1645231850,
	1645638300,
	1646044800,
	1646451350,
	1646857950,
	1647264600,
	1647671300,
	1648078050,
	1648484850,
	1648891700,
	1649298600,
	1649705550,
	1650112550,
	1650519600,
	1650926700,
	1651333850,
	1651741050,
	1652148300,
	1652555600,
	1652962950,
	1653370350,
	1653777800,
	1654185300,
	1654592850,
	1655000450,
	1655408100,
	1655815800,
	1656223550,
	1656631350,
	1657039200,
	1657447100,
	1657855050,
	1658263050,
	1658671100,
	1659079200,
	1659487350,
	1659895550,
	1660303800,
	1660712100,
	1661120450,
	1661528850,
	1661937300,
	1662345800,
	1662754350,
	1663162950,
	1663571600,
	1663980300,
	1664389050,
	1664797850,
	1665206700,
	1665615600,
	1666024550,
	1666433550,
	1666842600,
	1667251700,
	1667660850,
	1668070050,
	1668479300,
	1668888600,
	1669297950,
	1669707350,
	1670116800,
	1670526300,
	1670935850,
	1671345450,
	1671755100,
	1672164800,
	1672574550,
	1672984350,
	1673394200,
	1673804100,
	1674214050,
	1674624050,
	1675034100,
	1675444200,
	1675854350,
	1676264550,
	1676674800,
	1677085100,
	1677495450,
	1677905850,
	1678316300,
	1678726800,
	1679137350,
	1679547950,
	1679958600,
	1680369300,
	1680780050,
	1681190850,
	1681601700,
	1682012600,
	1682423550,
	1682834550,
	1683245600,
	1683656700,
	1684067850,
	1684479050,
	1684890300,
	1685301600,
	1685712950,
	1686124350,
	1686535800,
	1686947300,
	1687358850,
	1687770450,
	1688182100,
	1688593800,
	1689005550,
	1689417350,
	1689829200,
	1690241100,
	1690653050,
	1691065050,
	1691477100,
	1691889200,
	1692301350,
	1692713550,
	1693125800,
	1693538100,
	1693950450,
	1694362850,
	1694775300,
	1695187800,
	1695600350,
	1696012950,
	1696425600,
	1696838300,
	1697251050,
	1697663850,
	1698076700,
	1698489600,
	1698902550,
	1699315550,
	1699728600,
	1700141700,
	1700554850,
	1700968050,
	1701381300,
	1701794600,
	1702207950,
	1702621350,
	1703034800,
	1703448300,
	1703861850,
	1704275450,
	1704689100,
	1705102800,
	1705516550,
	1705930350,
	1706344200,
	1706758100,
	1707172050,
	1707586050,
	1708000100,
	1708414200,
	1708828350,
	1709242550,
	1709656800,
	1710071100,
	1710485450,
	1710899850,
	1711314300,
	1711728800,
	1712143350,
	1712557950,
	1712972600,
	1713387300,
	1713802050,
	1714216850,
	1714631700,
	1715046600,
	1715461550,
	1715876550,
	1716291600,
	1716706700,
	1717121850,
	1717537050,
	1717952300,
	1718367600,
	1718782950,
	1719198350,
	1719613800,
	1720029300,
	1720444850,
	1720860450,
	1721276100,
	1721691800,
	1722107550,
	1722523350,
	1722939200,
	1723355100,
	1723771050,
	1724187050,
	1724603100,
	1725019200,
	1725435350,
	1725851550,
	1726267800,
	1726684100,
	1727100450,
	1727516850,
	1727933300,
	1728349800,
	1728766350,
	1729182950,
	1729599600,
	1730016300,
	1730433050,
	1730849850,
	1731266700,
	1731683600,
	1732100550,
	1732517550,
	1732934600,
	1733351700,
	1733768850,
	1734186050,
	1734603300,
	1735020600,
	1735437950,
	1735855350,
	1736272800,
	1736690300,
	1737107850,
	1737525450,
	1737943100,
	1738360800,
	1738778550,
	1739196350,
	1739614200,
	1740032100,
	1740450050,
	1740868050,
	1741286100,
	1741704200,
	1742122350,
	1742540550,
	1742958800,
	1743377100,
	1743795450,
	1744213850,
	1744632300,
	1745050800,
	1745469350,
	1745887950,
	1746306600,
	1746725300,
	1747144050,
	1747562850,
	1747981700,
	1748400600,
	1748819550,
	1749238550,
	1749657600,
	1750076700,
	1750495850,
	1750915050,
	1751334300,
	1751753600,
	1752172950,
	1752592350,
	1753011800,
	1753431300,
	1753850850,
	1754270450,
	1754690100,
	1755109800,
	1755529550,
	1755949350,
	1756369200,
	1756789100,
	1757209050,
	1757629050,
	1758049100,
	1758469200,
	1758889350,
	1759309550,
	1759729800,
	1760150100,
	1760570450,
	1760990850,
	1761411300,
	1761831800,
	1762252350,
	1762672950,
	1763093600,
	1763514300,
	1763935050,
	1764355850,
	1764776700,
	1765197600,
	1765618550,
	1766039550,
	1766460600,
	1766881700,
	1767302850,
	1767724050,
	1768145300,
	1768566600,
	1768987950,
	1769409350,
	1769830800,
	1770252300,
	1770673850,
	1771095450,
	1771517100,
	1771938800,
	1772360550,
	1772782350,
	1773204200,
	1773626100,
	1774048050,
	1774470050,
	1774892100,
	1775314200,
	1775736350,
	1776158550,
	1776580800,
	1777003100,
	1777425450,
	1777847850,
	1778270300,
	1778692800,
	1779115350,
	1779537950,
	1779960600,
	1780383300,
	1780806050,
	1781228850,
	1781651700,
	1782074600,
	1782497550,
	1782920550,
	1783343600,
	1783766700,
	1784189850,
	1784613050,
	1785036300,
	1785459600,
	1785882950,
	1786306350,
	1786729800,
	1787153300,
	1787576850,
}

RankSetter = Recoverys:add_tab("Set Ranks")

RankSetter:add_text("Your current Rank is " .. stats.get_int(MPX() .. "CHAR_RANK_FM"))

RankSetter:add_separator()

local rpLevel = RankSetter:add_input_int("Rank")

RankSetter:add_button("Set Rank", function()
	local rankValue = rpLevel:get_value()

	if rankValue <= 0 or rankValue > 8000 then
		gui.show_message(
			"ERROR",
			"Your RP level " .. rankValue .. " cannot be set because it is outside the valid range (1-8000)."
		)
	else
		stats.set_int(MPX() .. "CHAR_SET_RP_GIFT_ADMIN", rp[rankValue] or 0)
		gui.show_message(
			"Rank Correction",
			"Your Rank was set to " .. rankValue .. ", changing session and applying RP."
		)
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CrewRankSetter = Recoverys:add_tab("Set Crew Ranks")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CrewRankSetter:add_text("Your Current Crew Rank is " .. stats.get_int("MPPLY_CURRENT_CREW_RANK"))

CrewRankSetter:add_separator()

local rpLevel = CrewRankSetter:add_input_int("Rank")

CrewRankSetter:add_button("Set Slot 1 Crew Rank", function()
	local rankValue = rpLevel:get_value()

	if rankValue <= 0 or rankValue > 8000 then
		gui.show_message(
			"ERROR",
			"Your Crew level " .. rankValue .. " cannot be set because it is outside the valid range (1-8000)."
		)
	else
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", rp[rankValue] or 0)
		gui.show_message("Crew Rank Setter", "Your Crew Slot 1 Rank was set to " .. rankValue .. ", .")
	end
end)

CrewRankSetter:add_button("Set Slot 2 Crew Rank", function()
	local rankValue = rpLevel:get_value()

	if rankValue <= 0 or rankValue > 8000 then
		gui.show_message(
			"ERROR",
			"Your Crew level " .. rankValue .. " cannot be set because it is outside the valid range (1-8000)."
		)
	else
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", rp[rankValue] or 0)
		gui.show_message("Crew Rank Setter", "Your Crew Slot 2 Rank was set to " .. rankValue .. ", .")
	end
end)

CrewRankSetter:add_button("Set Slot 3 Crew Rank", function()
	local rankValue = rpLevel:get_value()

	if rankValue <= 0 or rankValue > 8000 then
		gui.show_message(
			"ERROR",
			"Your Crew level " .. rankValue .. " cannot be set because it is outside the valid range (1-8000)."
		)
	else
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", rp[rankValue] or 0)
		gui.show_message("Crew Rank Setter", "Your Crew Slot 3 Rank was set to " .. rankValue .. ", .")
	end
end)

CrewRankSetter:add_button("Set Slot 4 Crew Rank", function()
	local rankValue = rpLevel:get_value()

	if rankValue <= 0 or rankValue > 8000 then
		gui.show_message(
			"ERROR",
			"Your Crew level " .. rankValue .. " cannot be set because it is outside the valid range (1-8000)."
		)
	else
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", rp[rankValue] or 0)
		gui.show_message("Crew Rank Setter", "Your Crew Slot 4 Rank was set to " .. rankValue .. ", .")
	end
end)

CrewRankSetter:add_button("Set Slot 5 Crew Rank", function()
	local rankValue = rpLevel:get_value()

	if rankValue <= 0 or rankValue > 8000 then
		gui.show_message(
			"ERROR",
			"Your Crew level " .. rankValue .. " cannot be set because it is outside the valid range (1-8000)."
		)
	else
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", rp[rankValue] or 0)
		gui.show_message("Crew Rank Setter", "Your Crew Slot 5 Rank was set to " .. rankValue .. ", .")
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Tunables = CSYON:add_tab("Tunable Options")

rpmvalue = globals.get_float(262145 + 1)
Tunables:add_imgui(function()
	rpmvalue, used = ImGui.DragInt("RP", rpmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 1, rpmvalue)
	end
end)

apmvalue = globals.get_float(262145 + 25490)
Tunables:add_imgui(function()
	apmvalue, used = ImGui.DragInt("AP", apmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 25490, apmvalue)
	end
end)

srmvalue = globals.get_float(262145 + 30980)
Tunables:add_imgui(function()
	srmvalue, used = ImGui.DragInt("Street Races", srmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 30980, srmvalue)
	end
end)

pmvalue = globals.get_float(262145 + 30981)
Tunables:add_imgui(function()
	pmvalue, used = ImGui.DragInt("Pursuits", pmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 30981, pmvalue)
	end
end)

f2fmvalue = globals.get_float(262145 + 30982)
Tunables:add_imgui(function()
	f2fmvalue, used = ImGui.DragInt("Face2Face", f2fmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 30982, f2fmvalue)
	end
end)

lscmmvalue = globals.get_float(262145 + 30983)
Tunables:add_imgui(function()
	lscmmvalue, used = ImGui.DragInt("LS Car Meet", lscmmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 30983, lscmmvalue)
	end
end)

lscmotmvalue = globals.get_float(262145 + 30984)
Tunables:add_imgui(function()
	lscmotmvalue, used = ImGui.DragInt("LS Car Meet on track", lscmotmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 30984, lscmotmvalue)
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

OnlineServices = CSYON:add_tab("Online Services")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CasinoServices = OnlineServices:add_tab("Casino Services")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

blackjack_cards         = 116
blackjack_table_players = 1776
blackjack_decks         = 846
 
three_card_poker_cards           = blackjack_cards
three_card_poker_table           = 749
three_card_poker_current_deck    = 168
three_card_poker_anti_cheat      = 1038
three_card_poker_anti_cheat_deck = 799
three_card_poker_deck_size       = 55
 
roulette_master_table   = 124
roulette_outcomes_table = 1357
roulette_ball_table     = 153
 
local cslots = "casino_slots"
slots_random_results_table = 1348

prize_wheel_win_state = 280
prize_wheel_prize = 14
prize_wheel_prize_state = 45



CasinoServices:add_separator()
CasinoServices:add_text("Casino Chips")
chipsVal = 1800
CasinoServices:add_imgui(function()
	chipsVal, used = ImGui.SliderInt("Casino Chips Buy Limit", chipsVal, 1800, 2147483647)
	if used then
		globals.set_int(CCBL0, chipsVal)
		globals.set_int(CCBL1, chipsVal)
	end
end)

bypass_casino_bans = CasinoServices:add_checkbox("Bypass Casino Cooldown")
CasinoServices:add_text("Winning too much too quickly might get you banned, enable this at your own risk.")
CasinoServices:add_separator()

CasinoServices:add_separator()
CasinoServices:add_text("Roulette")
force_roulette_wheel = CasinoServices:add_checkbox("Force Roulette Wheel to Land On Red 18")

CasinoServices:add_separator()
CasinoServices:add_text("Slot Machine")

CasinoServices:add_button("Win Slot Machines", function()
	for i = 3, 196 do
		if i ~= 67 and i ~= 132 then
			locals.set_int(cslots, slots_random_results_table + i, 6)
		end
	end
end)

CasinoServices:add_separator()
CasinoServices:add_text("Lucky Wheel")

CasinoServices:add_button("Give Podium Vehicle", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 18)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServices:add_sameline()
CasinoServices:add_button("Give Mystery Prize", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 11)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServices:add_sameline()
CasinoServices:add_button("Give $50,000", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 19)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServices:add_sameline()
CasinoServices:add_button("Give 25,000 Chips", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 15)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServices:add_button("Give 15,000RP", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 17)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServices:add_sameline()
CasinoServices:add_button("Give Discount", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 4)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServices:add_sameline()
CasinoServices:add_button("Give Clothing", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 8)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)

if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_slots")) ~= 0 then
	local needs_run = false
	if rig_slot_machine:is_enabled() then
		for slots_iter = 3, 196, 1 do
			if slots_iter ~= 67 and slots_iter ~= 132 then
				if locals.get_int(cslots, slots_random_results_table + slots_iter) ~= 6 then
					needs_run = true
				end
			end
		end
	else
		local sum = 0
		for slots_iter = 3, 196, 1 do
			if slots_iter ~= 67 and slots_iter ~= 132 then
				sum = sum + locals.get_int(cslots, slots_random_results_table + slots_iter)
			end
		end
		needs_run = sum == 1348
	end
	if needs_run then
		for slots_iter = 3, 196, 1 do
			if slots_iter ~= 67 and slots_iter ~= 132 then
				local slot_result = 6
				if rig_slot_machine:is_enabled() == false then
					math.randomseed(os.time() + slots_iter)
					slot_result = math.random(0, 7)
				end
				locals.set_int(cslots, slots_random_results_table + slots_iter, slot_result)
			end
		end
	end
end
if bypass_casino_bans:is_enabled() then
	stats.set_int("MPPLY_CASINO_CHIPS_WON_GD", 0)
	stats.set_int("MPPLY_CASINO_CHIPS_WONTIM", 0)
	stats.set_int("MPPLY_CASINO_GMBLNG_GD", 0)
	stats.set_int("MPPLY_CASINO_BAN_TIME", 0)
	stats.set_int("MPPLY_CASINO_CHIPS_PURTIM", 0)
	stats.set_int("MPPLY_CASINO_CHIPS_PUR_GD", 0)
	stats.set_int("MPPLY_CASINO_CHIPS_SOLD", 0)
	stats.set_int("MPPLY_CASINO_CHIPS_SELTIM", 0)
end

CasinoServices:add_text("Poker")
force_poker_cards = CasinoServices:add_checkbox("Force all Players Hands to Royal Flush")
CasinoServices:add_sameline()
set_dealers_poker_cards = CasinoServices:add_checkbox("Force Dealer's Hand to Bad Beat")
set_dealers_poker_cards:set_enabled(true)
 
function set_poker_cards(player_id, players_current_table, card_one, card_two, card_three)
    locals.set_int("three_card_poker", (three_card_poker_cards) + (three_card_poker_current_deck) + (1 + (players_current_table * three_card_poker_deck_size)) + (2) + (1) + (player_id * 3), card_one)
    locals.set_int("three_card_poker", (three_card_poker_anti_cheat) + (three_card_poker_anti_cheat_deck) + (1) + (1 + (players_current_table * three_card_poker_deck_size)) + (1) + (player_id * 3), card_one)
    locals.set_int("three_card_poker", (three_card_poker_cards) + (three_card_poker_current_deck) + (1 + (players_current_table * three_card_poker_deck_size)) + (2) + (2) + (player_id * 3), card_two)
    locals.set_int("three_card_poker", (three_card_poker_anti_cheat) + (three_card_poker_anti_cheat_deck) + (1) + (1 + (players_current_table * three_card_poker_deck_size)) + (2) + (player_id * 3), card_two)
    locals.set_int("three_card_poker", (three_card_poker_cards) + (three_card_poker_current_deck) + (1 + (players_current_table * three_card_poker_deck_size)) + (2) + (3) + (player_id * 3), card_three)
    locals.set_int("three_card_poker", (three_card_poker_anti_cheat) + (three_card_poker_anti_cheat_deck) + (1) + (1 + (players_current_table * three_card_poker_deck_size)) + (3) + (player_id * 3), card_three)
end
 
function get_cardname_from_index(card_index)
    if card_index == 0 then
        return "Rolling"
    end
 
    local card_number = math.fmod(card_index, 13)
    local cardName = ""
    local cardSuit = ""
 
    if card_number == 1 then
        cardName = "Ace"
    elseif card_number == 11 then
        cardName = "Jack"
    elseif card_number == 12 then
        cardName = "Queen"
    elseif card_number == 13 then
        cardName = "King"
    else
        cardName = tostring(card_number)
    end
 
    if card_index >= 1 and card_index <= 13 then
        cardSuit = "Clubs"
    elseif card_index >= 14 and card_index <= 26 then
        cardSuit = "Diamonds"
    elseif card_index >= 27 and card_index <= 39 then
        cardSuit = "Hearts"
    elseif card_index >= 40 and card_index <= 52 then
        cardSuit = "Spades"
    end
 
    return cardName .. " of " .. cardSuit
end

CasinoServices:add_separator()
CasinoServices:add_text("Blackjack")
CasinoServices:add_text("Dealer's face down card: ")
CasinoServices:add_sameline()
dealers_card_gui_element = CasinoServices:add_input_string("##dealers_card_gui_element")

CasinoServices:add_button("Set Dealer's Hand To Bust", function()
    script.run_in_fiber(function (script)
        local player_id = PLAYER.PLAYER_ID()
        while NETWORK.NETWORK_GET_HOST_OF_SCRIPT("blackjack", -1, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("blackjack", 0, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("blackjack", 1, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("blackjack", 2, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("blackjack", 3, 0) ~= player_id do 
            network.force_script_host("blackjack")
            gui.show_message("CasinoPacino", "Taking control of the blackjack script.") --If you see this spammed, someone if fighting you for control.
            script:yield()
        end
        local blackjack_table = locals.get_int("blackjack", blackjack_table_players + 1 + (player_id * 8) + 4) --The Player's current table he is sitting at.
        if blackjack_table ~= -1 then
            locals.set_int("blackjack", blackjack_cards + blackjack_decks + 1 + (blackjack_table * 13) + 1, 11)
            locals.set_int("blackjack", blackjack_cards + blackjack_decks + 1 + (blackjack_table * 13) + 2, 12)
            locals.set_int("blackjack", blackjack_cards + blackjack_decks + 1 + (blackjack_table * 13) + 3, 13)
            locals.set_int("blackjack", blackjack_cards + blackjack_decks + 1 + (blackjack_table * 13) + 12, 3)
        end
    end)
end)

if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("blackjack")) ~= 0 then
        local dealers_card = 0
        local blackjack_table = locals.get_int("blackjack", blackjack_table_players + 1 + (PLAYER.PLAYER_ID() * 8) + 4) --The Player's current table he is sitting at.
        if blackjack_table ~= -1 then
            dealers_card = locals.get_int("blackjack", blackjack_cards + blackjack_decks + 1 + (blackjack_table * 13) + 1) --Dealer's facedown card.
            dealers_card_gui_element:set_value(get_cardname_from_index(dealers_card))
        else
            dealers_card_gui_element:set_value("Not sitting at a Blackjack table.")
        end
    else
        dealers_card_gui_element:set_value("Not in Casino.")
    end
    if force_roulette_wheel:is_enabled() then
        local player_id = PLAYER.PLAYER_ID()
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casinoroulette")) ~= 0 then
            while NETWORK.NETWORK_GET_HOST_OF_SCRIPT("casinoroulette", -1, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("casinoroulette", 0, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("casinoroulette", 1, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("casinoroulette", 2, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("casinoroulette", 3, 0) ~= player_id do 
                network.force_script_host("casinoroulette")
                gui.show_message("CasinoPacino", "Taking control of the casinoroulette script.") --If you see this spammed, someone if fighting you for control.
                script:sleep(500)
            end
            for tabler_iter = 0, 6, 1 do
                locals.set_int("casinoroulette", (roulette_master_table) + (roulette_outcomes_table) + (roulette_ball_table) + (tabler_iter), 18)
            end
        end
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_slots")) ~= 0 then
        local needs_run = false
        if rig_slot_machine:is_enabled() then
            for slots_iter = 3, 195, 1 do
                if slots_iter ~= 67 and slots_iter ~= 132 then
                    if locals.get_int("casino_slots", (slots_random_results_table) + (slots_iter)) ~= 6 then
                        needs_run = true
                    end
                end
            end
        else
            local sum = 0
            for slots_iter = 3, 195, 1 do
                if slots_iter ~= 67 and slots_iter ~= 132 then
                    sum = sum + locals.get_int("casino_slots", (slots_random_results_table) + (slots_iter))
                end
            end
            needs_run = sum == 1146
        end
        if needs_run then
            for slots_iter = 3, 195, 1 do
                if slots_iter ~= 67 and slots_iter ~= 132 then
                    local slot_result = 6
                    if rig_slot_machine:is_enabled() == false then
                        math.randomseed(os.time()+slots_iter)
                        slot_result = math.random(0, 7)
                    end
                    locals.set_int("casino_slots", (slots_random_results_table) + (slots_iter), slot_result)
                end
            end
        end
    end
    if bypass_casino_bans:is_enabled() then
        STATS.STAT_SET_INT(joaat("MPPLY_CASINO_CHIPS_WON_GD"), 0, true)
    end
    if HUD.IS_PAUSE_MENU_ACTIVE() then
        PAD.DISABLE_CONTROL_ACTION(0, 348, true)
        PAD.DISABLE_CONTROL_ACTION(0, 204, true)
    end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DLCUnlocker = CSYON:add_tab("Unlocks")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DLCUnlocker:add_button("Unlock Police Cars Trade Price", function()
	stats.set_int(MPX() .. "MOST_TIME_ON_3_PLUS_STARS", 300000)
	stats.set_int(MPX() .. "SALV23_SCOPE_BS", -1)
	stats.set_int(MPX() .. "SALV23_INST_PROG", -1)
	stats.set_int(MPX() .. "SALV23_GEN_BS", -1)
end)

DLCUnlocker:add_button("Salvage Heist fix", function()
	stats.set_int(MPX() .. "SALV23_GEN_BS", 0)
end)

DLCUnlocker:add_button("Unlock Xmas 2023 Gifts", function()
	globals.set_int(262145 + 35157, 1) --XMASGIFTS2023
	globals.set_int(262145 + 35158, 1) --NEWYEARSGIFTS2023
end)

DLCUnlocker:add_button("Unlock Taxi Livery for Eudora", function()
	stats.set_masked_int(MPX() .. "DLC22022PSTAT_INT536", 10, 16, 8)
end)

DLCUnlocker:add_button("Unlock Taxi Livery for Broadway", function()
	stats.set_int(MPX() .. "AWD_TAXIDRIVER", 50)
end)

DLCUnlocker:add_separator()
DLCUnlocker:add_text("Removed Vehicles")

DVT = DLCUnlocker:add_checkbox("Enable Deleted Vehicles")
script.register_looped("Deleted Vehicles", function(script)
	script:yield()
	if DVT:is_enabled() then
		globals.set_int(262145 + 22565, 1)
		globals.set_int(262145 + 14708, 1)
		globals.set_int(262145 + 34371, 1)
		globals.set_int(262145 + 34373, 1)
		globals.set_int(262145 + 34451, 1)
		globals.set_int(262145 + 34349, 1)
		globals.set_int(262145 + 34527, 1)
		globals.set_int(262145 + 34533, 1)
		globals.set_int(262145 + 17356, 1)
		globals.set_int(262145 + 17372, 1)
		globals.set_int(262145 + 34589, 1)
		globals.set_int(262145 + 35492, 1)
		globals.set_int(262145 + 34415, 1)
		globals.set_int(262145 + 34417, 1)
		globals.set_int(262145 + 34465, 1)
		globals.set_int(262145 + 34573, 1)
		globals.set_int(262145 + 34499, 1)
		globals.set_int(262145 + 34495, 1)
		globals.set_int(262145 + 34493, 1)
		globals.set_int(262145 + 34511, 1)
		globals.set_int(262145 + 28191, 1)
		globals.set_int(262145 + 34501, 1)
		globals.set_int(262145 + 34333, 1)
		globals.set_int(262145 + 34551, 1)
		globals.set_int(262145 + 34553, 1)
		globals.set_int(262145 + 34409, 1)
		globals.set_int(262145 + 34365, 1)
		globals.set_int(262145 + 34569, 1)
		globals.set_int(262145 + 34571, 1)
		globals.set_int(262145 + 23726, 1)
		globals.set_int(262145 + 34401, 1)
		globals.set_int(262145 + 17230, 1)
		globals.set_int(262145 + 25367, 1)
		globals.set_int(262145 + 34335, 1)
		globals.set_int(262145 + 34337, 1)
		globals.set_int(262145 + 34339, 1)
		globals.set_int(262145 + 34341, 1)
		globals.set_int(262145 + 34325, 1)
		globals.set_int(262145 + 18947, 1)
		globals.set_int(262145 + 18948, 1)
		globals.set_int(262145 + 22564, 1)
		globals.set_int(262145 + 17229, 1)
		globals.set_int(262145 + 34367, 1)
		globals.set_int(262145 + 34331, 1)
		globals.set_int(262145 + 21603, 1)
		globals.set_int(262145 + 17364, 1)
		globals.set_int(262145 + 25369, 1)
		globals.set_int(262145 + 34431, 1)
		globals.set_int(262145 + 34453, 1)
		globals.set_int(262145 + 34497, 1)
		globals.set_int(262145 + 25387, 1)
		globals.set_int(262145 + 34455, 1)
		globals.set_int(262145 + 34403, 1)
		globals.set_int(262145 + 17355, 1)
		globals.set_int(262145 + 34399, 1)
		globals.set_int(262145 + 34323, 1)
		globals.set_int(262145 + 34437, 1)
		globals.set_int(262145 + 23717, 1)
		globals.set_int(262145 + 17358, 1)
		globals.set_int(262145 + 17370, 1)
		globals.set_int(262145 + 34467, 1)
		globals.set_int(262145 + 34433, 1)
		globals.set_int(262145 + 34435, 1)
		globals.set_int(262145 + 34351, 1)
		globals.set_int(262145 + 34411, 1)
		globals.set_int(262145 + 34587, 1)
		globals.set_int(262145 + 34565, 1)
		globals.set_int(262145 + 34523, 1)
		globals.set_int(262145 + 34369, 1)
		globals.set_int(262145 + 34563, 1)
		globals.set_int(262145 + 34559, 1)
		globals.set_int(262145 + 34481, 1)
		globals.set_int(262145 + 19951, 1)
		globals.set_int(262145 + 34581, 1)
		globals.set_int(262145 + 34577, 1)
		globals.set_int(262145 + 22556, 1)
		globals.set_int(262145 + 34585, 1)
		globals.set_int(262145 + 34473, 1)
		globals.set_int(262145 + 25386, 1)
		globals.set_int(262145 + 22563, 1)
		globals.set_int(262145 + 34457, 1)
		globals.set_int(262145 + 34513, 1)
		globals.set_int(262145 + 22557, 1)
		globals.set_int(262145 + 28201, 1)
		globals.set_int(262145 + 34405, 1)
		globals.set_int(262145 + 34541, 1)
		globals.set_int(262145 + 34459, 1)
		globals.set_int(262145 + 34535, 1)
		globals.set_int(262145 + 34429, 1)
		globals.set_int(262145 + 25383, 1)
		globals.set_int(262145 + 34439, 1)
		globals.set_int(262145 + 34387, 1)
		globals.set_int(262145 + 34361, 1)
		globals.set_int(262145 + 34557, 1)
		globals.set_int(262145 + 34503, 1)
		globals.set_int(262145 + 34583, 1)
		globals.set_int(262145 + 28830, 1)
		globals.set_int(262145 + 28190, 1)
		globals.set_int(262145 + 25379, 1)
		globals.set_int(262145 + 17232, 1)
		globals.set_int(262145 + 34353, 1)
		globals.set_int(262145 + 34555, 1)
		globals.set_int(262145 + 34597, 1)
		globals.set_int(262145 + 23729, 1)
		globals.set_int(262145 + 14703, 1)
		globals.set_int(262145 + 25385, 1)
		globals.set_int(262145 + 34471, 1)
		globals.set_int(262145 + 25396, 1)
		globals.set_int(262145 + 34443, 1)
		globals.set_int(262145 + 34441, 1)
		globals.set_int(262145 + 25397, 1)
		globals.set_int(262145 + 34591, 1)
		globals.set_int(262145 + 34475, 1)
		globals.set_int(262145 + 34561, 1)
		globals.set_int(262145 + 25389, 1)
		globals.set_int(262145 + 34485, 1)
		globals.set_int(262145 + 34567, 1)
		globals.set_int(262145 + 34427, 1)
		globals.set_int(262145 + 34529, 1)
		globals.set_int(262145 + 34595, 1)
		globals.set_int(262145 + 22560, 1)
		globals.set_int(262145 + 34505, 1)
		globals.set_int(262145 + 34355, 1)
		globals.set_int(262145 + 34357, 1)
		globals.set_int(262145 + 21607, 1)
		globals.set_int(262145 + 17363, 1)
		globals.set_int(262145 + 17373, 1)
		globals.set_int(262145 + 34483, 1)
		globals.set_int(262145 + 17223, 1)
		globals.set_int(262145 + 34507, 1)
		globals.set_int(262145 + 34531, 1)
		globals.set_int(262145 + 21606, 1)
		globals.set_int(262145 + 22558, 1)
		globals.set_int(262145 + 22562, 1)
		globals.set_int(262145 + 34593, 1)
		globals.set_int(262145 + 34521, 1)
		globals.set_int(262145 + 34377, 1)
		globals.set_int(262145 + 34393, 1)
		globals.set_int(262145 + 34469, 1)
		globals.set_int(262145 + 34489, 1)
		globals.set_int(262145 + 19953, 1)
		globals.set_int(262145 + 34509, 1)
		globals.set_int(262145 + 25393, 1)
		globals.set_int(262145 + 34463, 1)
		globals.set_int(262145 + 34461, 1)
		globals.set_int(262145 + 17366, 1)
		globals.set_int(262145 + 34515, 1)
		globals.set_int(262145 + 22561, 1)
		globals.set_int(262145 + 22554, 1)
		globals.set_int(262145 + 34519, 1)
		globals.set_int(262145 + 34345, 1)
		globals.set_int(262145 + 34347, 1)
		globals.set_int(262145 + 34547, 1)
		globals.set_int(262145 + 34579, 1)
		globals.set_int(262145 + 28831, 1)
		globals.set_int(262145 + 34445, 1)
		globals.set_int(262145 + 34575, 1)
		globals.set_int(262145 + 34359, 1)
		globals.set_int(262145 + 34479, 1)
		globals.set_int(262145 + 23781, 1)
		globals.set_int(262145 + 34539, 1)
		globals.set_int(262145 + 34383, 1)
		globals.set_int(262145 + 34381, 1)
		globals.set_int(262145 + 34379, 1)
		globals.set_int(262145 + 34545, 1)
		globals.set_int(262145 + 22551, 1)
		globals.set_int(262145 + 34343, 1)
		globals.set_int(262145 + 34549, 1)
		globals.set_int(262145 + 34525, 1)
		globals.set_int(262145 + 23780, 1)
		globals.set_int(262145 + 34537, 1)
		globals.set_int(262145 + 34327, 1)
		globals.set_int(262145 + 29156, 1)
		globals.set_int(262145 + 20830, 1)
		globals.set_int(262145 + 17371, 1)
		globals.set_int(262145 + 25370, 1)
		globals.set_int(262145 + 17221, 1)
		globals.set_int(262145 + 34407, 1)
		globals.set_int(262145 + 34477, 1)
		globals.set_int(262145 + 26330, 1)
		globals.set_int(262145 + 34375, 1)
		globals.set_int(262145 + 29605, 1)
		globals.set_int(262145 + 34487, 1)
		globals.set_int(262145 + 22566, 1)
		globals.set_int(262145 + 34397, 1)
		globals.set_int(262145 + 34543, 1)
		globals.set_int(262145 + 34517, 1)
		globals.set_int(262145 + 17369, 1)
		globals.set_int(262145 + 20828, 1)
		globals.set_int(262145 + 34423, 1)
		globals.set_int(262145 + 34425, 1)
		globals.set_int(262145 + 34395, 1)
		globals.set_int(262145 + 34447, 1)
		globals.set_int(262145 + 34449, 1)
		globals.set_int(262145 + 25384, 1)
		globals.set_int(262145 + 17354, 1)
		globals.set_int(262145 + 25381, 1)
		globals.set_int(262145 + 34599, 1)
	else
		globals.set_int(262145 + 22565, 0)
		globals.set_int(262145 + 14708, 0)
		globals.set_int(262145 + 34371, 0)
		globals.set_int(262145 + 34373, 0)
		globals.set_int(262145 + 34451, 0)
		globals.set_int(262145 + 34349, 0)
		globals.set_int(262145 + 34527, 0)
		globals.set_int(262145 + 34533, 0)
		globals.set_int(262145 + 17356, 0)
		globals.set_int(262145 + 17372, 0)
		globals.set_int(262145 + 34589, 0)
		globals.set_int(262145 + 35492, 0)
		globals.set_int(262145 + 34415, 0)
		globals.set_int(262145 + 34417, 0)
		globals.set_int(262145 + 34465, 0)
		globals.set_int(262145 + 34573, 0)
		globals.set_int(262145 + 34499, 0)
		globals.set_int(262145 + 34495, 0)
		globals.set_int(262145 + 34493, 0)
		globals.set_int(262145 + 34511, 0)
		globals.set_int(262145 + 28191, 0)
		globals.set_int(262145 + 34501, 0)
		globals.set_int(262145 + 34333, 0)
		globals.set_int(262145 + 34551, 0)
		globals.set_int(262145 + 34553, 0)
		globals.set_int(262145 + 34409, 0)
		globals.set_int(262145 + 34365, 0)
		globals.set_int(262145 + 34569, 0)
		globals.set_int(262145 + 34571, 0)
		globals.set_int(262145 + 23726, 0)
		globals.set_int(262145 + 34401, 0)
		globals.set_int(262145 + 17230, 0)
		globals.set_int(262145 + 25367, 0)
		globals.set_int(262145 + 34335, 0)
		globals.set_int(262145 + 34337, 0)
		globals.set_int(262145 + 34339, 0)
		globals.set_int(262145 + 34341, 0)
		globals.set_int(262145 + 34325, 0)
		globals.set_int(262145 + 18947, 0)
		globals.set_int(262145 + 18948, 0)
		globals.set_int(262145 + 22564, 0)
		globals.set_int(262145 + 17229, 0)
		globals.set_int(262145 + 34367, 0)
		globals.set_int(262145 + 34331, 0)
		globals.set_int(262145 + 21603, 0)
		globals.set_int(262145 + 17364, 0)
		globals.set_int(262145 + 25369, 0)
		globals.set_int(262145 + 34431, 0)
		globals.set_int(262145 + 34453, 0)
		globals.set_int(262145 + 34497, 0)
		globals.set_int(262145 + 25387, 0)
		globals.set_int(262145 + 34455, 0)
		globals.set_int(262145 + 34403, 0)
		globals.set_int(262145 + 17355, 0)
		globals.set_int(262145 + 34399, 0)
		globals.set_int(262145 + 34323, 0)
		globals.set_int(262145 + 34437, 0)
		globals.set_int(262145 + 23717, 0)
		globals.set_int(262145 + 17358, 0)
		globals.set_int(262145 + 17370, 0)
		globals.set_int(262145 + 34467, 0)
		globals.set_int(262145 + 34433, 0)
		globals.set_int(262145 + 34435, 0)
		globals.set_int(262145 + 34351, 0)
		globals.set_int(262145 + 34411, 0)
		globals.set_int(262145 + 34587, 0)
		globals.set_int(262145 + 34565, 0)
		globals.set_int(262145 + 34523, 0)
		globals.set_int(262145 + 34369, 0)
		globals.set_int(262145 + 34563, 0)
		globals.set_int(262145 + 34559, 0)
		globals.set_int(262145 + 34481, 0)
		globals.set_int(262145 + 19951, 0)
		globals.set_int(262145 + 34581, 0)
		globals.set_int(262145 + 34577, 0)
		globals.set_int(262145 + 22556, 0)
		globals.set_int(262145 + 34585, 0)
		globals.set_int(262145 + 34473, 0)
		globals.set_int(262145 + 25386, 0)
		globals.set_int(262145 + 22563, 0)
		globals.set_int(262145 + 34457, 0)
		globals.set_int(262145 + 34513, 0)
		globals.set_int(262145 + 22557, 0)
		globals.set_int(262145 + 28201, 0)
		globals.set_int(262145 + 34405, 0)
		globals.set_int(262145 + 34541, 0)
		globals.set_int(262145 + 34459, 0)
		globals.set_int(262145 + 34535, 0)
		globals.set_int(262145 + 34429, 0)
		globals.set_int(262145 + 25383, 0)
		globals.set_int(262145 + 34439, 0)
		globals.set_int(262145 + 34387, 0)
		globals.set_int(262145 + 34361, 0)
		globals.set_int(262145 + 34557, 0)
		globals.set_int(262145 + 34503, 0)
		globals.set_int(262145 + 34583, 0)
		globals.set_int(262145 + 28830, 0)
		globals.set_int(262145 + 28190, 0)
		globals.set_int(262145 + 25379, 0)
		globals.set_int(262145 + 17232, 0)
		globals.set_int(262145 + 34353, 0)
		globals.set_int(262145 + 34555, 0)
		globals.set_int(262145 + 34597, 0)
		globals.set_int(262145 + 23729, 0)
		globals.set_int(262145 + 14703, 0)
		globals.set_int(262145 + 25385, 0)
		globals.set_int(262145 + 34471, 0)
		globals.set_int(262145 + 25396, 0)
		globals.set_int(262145 + 34443, 0)
		globals.set_int(262145 + 34441, 0)
		globals.set_int(262145 + 25397, 0)
		globals.set_int(262145 + 34591, 0)
		globals.set_int(262145 + 34475, 0)
		globals.set_int(262145 + 34561, 0)
		globals.set_int(262145 + 25389, 0)
		globals.set_int(262145 + 34485, 0)
		globals.set_int(262145 + 34567, 0)
		globals.set_int(262145 + 34427, 0)
		globals.set_int(262145 + 34529, 0)
		globals.set_int(262145 + 34595, 0)
		globals.set_int(262145 + 22560, 0)
		globals.set_int(262145 + 34505, 0)
		globals.set_int(262145 + 34355, 0)
		globals.set_int(262145 + 34357, 0)
		globals.set_int(262145 + 21607, 0)
		globals.set_int(262145 + 17363, 0)
		globals.set_int(262145 + 17373, 0)
		globals.set_int(262145 + 34483, 0)
		globals.set_int(262145 + 17223, 0)
		globals.set_int(262145 + 34507, 0)
		globals.set_int(262145 + 34531, 0)
		globals.set_int(262145 + 21606, 0)
		globals.set_int(262145 + 22558, 0)
		globals.set_int(262145 + 22562, 0)
		globals.set_int(262145 + 34593, 0)
		globals.set_int(262145 + 34521, 0)
		globals.set_int(262145 + 34377, 0)
		globals.set_int(262145 + 34393, 0)
		globals.set_int(262145 + 34469, 0)
		globals.set_int(262145 + 34489, 0)
		globals.set_int(262145 + 19953, 0)
		globals.set_int(262145 + 34509, 0)
		globals.set_int(262145 + 25393, 0)
		globals.set_int(262145 + 34463, 0)
		globals.set_int(262145 + 34461, 0)
		globals.set_int(262145 + 17366, 0)
		globals.set_int(262145 + 34515, 0)
		globals.set_int(262145 + 22561, 0)
		globals.set_int(262145 + 22554, 0)
		globals.set_int(262145 + 34519, 0)
		globals.set_int(262145 + 34345, 0)
		globals.set_int(262145 + 34347, 0)
		globals.set_int(262145 + 34547, 0)
		globals.set_int(262145 + 34579, 0)
		globals.set_int(262145 + 28831, 0)
		globals.set_int(262145 + 34445, 0)
		globals.set_int(262145 + 34575, 0)
		globals.set_int(262145 + 34359, 0)
		globals.set_int(262145 + 34479, 0)
		globals.set_int(262145 + 23781, 0)
		globals.set_int(262145 + 34539, 0)
		globals.set_int(262145 + 34383, 0)
		globals.set_int(262145 + 34381, 0)
		globals.set_int(262145 + 34379, 0)
		globals.set_int(262145 + 34545, 0)
		globals.set_int(262145 + 22551, 0)
		globals.set_int(262145 + 34343, 0)
		globals.set_int(262145 + 34549, 0)
		globals.set_int(262145 + 34525, 0)
		globals.set_int(262145 + 23780, 0)
		globals.set_int(262145 + 34537, 0)
		globals.set_int(262145 + 34327, 0)
		globals.set_int(262145 + 29156, 0)
		globals.set_int(262145 + 20830, 0)
		globals.set_int(262145 + 17371, 0)
		globals.set_int(262145 + 25370, 0)
		globals.set_int(262145 + 17221, 0)
		globals.set_int(262145 + 34407, 0)
		globals.set_int(262145 + 34477, 0)
		globals.set_int(262145 + 26330, 0)
		globals.set_int(262145 + 34375, 0)
		globals.set_int(262145 + 29605, 0)
		globals.set_int(262145 + 34487, 0)
		globals.set_int(262145 + 22566, 0)
		globals.set_int(262145 + 34397, 0)
		globals.set_int(262145 + 34543, 0)
		globals.set_int(262145 + 34517, 0)
		globals.set_int(262145 + 17369, 0)
		globals.set_int(262145 + 20828, 0)
		globals.set_int(262145 + 34423, 0)
		globals.set_int(262145 + 34425, 0)
		globals.set_int(262145 + 34395, 0)
		globals.set_int(262145 + 34447, 0)
		globals.set_int(262145 + 34449, 0)
		globals.set_int(262145 + 25384, 0)
		globals.set_int(262145 + 17354, 0)
		globals.set_int(262145 + 25381, 0)
		globals.set_int(262145 + 34599, 0)
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

EventsFeatures = CSYON:add_tab("Events")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Weather = CSYON:add_tab("Weather")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SnowToggle = Weather:add_tab("Snow Toggle")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SNOWCB = SnowToggle:add_checkbox("Snow")
script.register_looped("snow", function(script)
	script:yield()
	if SNOWCB:is_enabled() then
		globals.set_int(SNOW, 1)
	else
		globals.set_int(SNOW, 0)
	end
end)


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

HalloweenWeatherlel = Weather:add_tab("Halloween Weather Toggle")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Hellowwween = HalloweenWeatherlel:add_checkbox("Halloween Weather")
script.register_looped("halloweather", function(script)
	script:yield()
	if Hellowwween:is_enabled() then
		globals.set_int(halloweatherAddress, 1)
	else
		globals.set_int(halloweatherAddress, 0)
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

YetiHuntEvent = EventsFeatures:add_tab("Yeti Hunt")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

YetiHuntEvent:add_button("Enable Yeti Hunt Event", function()
	globals.set_int(262145 + 34952, 1) -- enable the event with this lel Numbers 1833904680 
end)

YetiHuntEvent:add_button("Clue Location 1", function()
	PED.SET_PED_COORDS_KEEP_VEHICLE(self.get_ped(), -1562.69, 4699.04, 50.426)
end)

YetiHuntEvent:add_button("Clue Location 2", function()
	PED.SET_PED_COORDS_KEEP_VEHICLE(self.get_ped(), -1359.869, 4733.429, 46.919)
end)

YetiHuntEvent:add_button("Clue Location 3", function()
	PED.SET_PED_COORDS_KEEP_VEHICLE(self.get_ped(), -1715.398, 4501.203, 0.096)
end)

YetiHuntEvent:add_button("Clue Location 4", function()
	PED.SET_PED_COORDS_KEEP_VEHICLE(self.get_ped(), -1282.18, 4487.826, 12.643)
end)

YetiHuntEvent:add_button("Clue Location 5", function()
	PED.SET_PED_COORDS_KEEP_VEHICLE(self.get_ped(), -1569.665, 4478.485, 20.215)
end)

YetiHuntEvent:add_button("Clue Location 6", function()
	PED.SET_PED_COORDS_KEEP_VEHICLE(self.get_ped(), -1345.828, 4838.062, 137.522)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

WM29Event = EventsFeatures:add_tab("WM29 Event")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

WM29Event:add_button("Enable Event", function()
	if globals.get_int(1882632 + (1 + (PLAYER.PLAYER_ID() * 146)) + 82) ~= 1 then
		return
	end
	if globals.get_int(1882247 + 1 + 226) > 1 then
		return
	end
	if not globals.get_int(2672855 + 4 + 4) then
		return
	end
	if globals.get_int(1882247 + 1 + 226) == 1 then
		globals.set_int(1882247 + 1 + 226, 0)
		globals.set_int(1882247 + 304, -1)
		globals.set_int(1882247 + 304 + 1, 0)
		globals.set_int(1882247 + 1 + 226 + 3, 1)
		globals.set_int(1882247 + 1 + 226 + 5, -1)
		globals.set_int(1882247 + 1 + 226 + 6, -1)
		globals.set_float(1882247 + 1 + 226 + 10, 0.0)
		globals.set_float(1882247 + 1 + 226 + 11, 0.0)
		globals.set_float(1882247 + 1 + 226 + 12, 0.0)
		globals.set_float(1882247 + 1 + 226 + 13, 400.0)
	end
	if globals.get_int(1882247 + 1 + 226) ~= 0 then
		return
	end
	local value = globals.get_int(1882247 + 1 + 226 + 3 + 1) | (1 << 1)
	globals.set_int(1882247 + 1 + 226 + 3 + 1, value)
	globals.set_int(1882247 + 1 + 226 + 5, 0)
	globals.set_int(1882247 + 1 + 226 + 6, 0)
	local freemodescript = "freemode"
	freemodescript:set_int(freemodescript, 15727 + 181 + 1 + 1, 0x75F9)
end)

WM29Event:add_button("Teleport", function()
	PED.SET_PED_COORDS_KEEP_VEHICLE(self.get_ped(), -889.3795166015625, -447.8448181152344, 171.81410217285156)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

GoachEvent = EventsFeatures:add_tab("Goach Event")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

GoachEvent:add_button("Enable Goach Event", function()
	globals.set_int(2699171 + 3 + 1, 171)
	globals.set_int(2699171 + 2, 6)
end)

---Full Account Unlocker Tool---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

FRESH = Recoverys:add_tab("Full Account Unlocks")

--Character's Stats-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CSU = FRESH:add_tab("Character's Stats")

CSU:add_button("Max Character Skills", function()
	stats.set_int(MPX() .. "SCRIPT_INCREASE_DRIV", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_FLY", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_LUNG", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_SHO", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STAM", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STL", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STRN", 100)
end)

Achievements = CSU:add_tab("Achievements")

Acv0 = false
AG = 4543384 + 1

Achievements:add_button("Unlock All Achievements", function()
		script.run_in_fiber(function(script)
		for i = 0, 77 do
			script:sleep(200)
			globals.set_int(AG, i)
			if i == 77 then
				gui.show_message("Achivements", "Unlocked 77 Achivements")
			end
		end
	end)
end)

CsyonsAchivements = Achievements:add_tab("Unlock One By One")

CsyonsAchivements:add_button("Welcome to Los Santos", function()
	globals.set_int(AG, 1)
end)
CsyonsAchivements:add_button("A Friendship Resurrected", function()
	globals.set_int(AG, 2)
end)
CsyonsAchivements:add_button("A Fair Day's Pay", function()
	globals.set_int(AG, 3)
end)
CsyonsAchivements:add_button("The Moment of Truth", function()
	globals.set_int(AG, 4)
end)
CsyonsAchivements:add_button("To Live or Die in Los Santos", function()
	globals.set_int(AG, 5)
end)
CsyonsAchivements:add_button("Diamond Hard", function()
	globals.set_int(AG, 6)
end)
CsyonsAchivements:add_button("Subversive", function()
	globals.set_int(AG, 7)
end)
CsyonsAchivements:add_button("Blitzed", function()
	globals.set_int(AG, 8)
end)
CsyonsAchivements:add_button("Small Town, Big Job", function()
	globals.set_int(AG, 9)
end)
CsyonsAchivements:add_button("The Government Gimps", function()
	globals.set_int(AG, 10)
end)
CsyonsAchivements:add_button("The Big One!", function()
	globals.set_int(AG, 11)
end)
CsyonsAchivements:add_button("Solid Gold, Baby!", function()
	globals.set_int(AG, 12)
end)
CsyonsAchivements:add_button("Career Criminal", function()
	globals.set_int(AG, 13)
end)
CsyonsAchivements:add_button("San Andreas Sightseer", function()
	globals.set_int(AG, 14)
end)
CsyonsAchivements:add_button("All's Fare in Love and War", function()
	globals.set_int(AG, 15)
end)
CsyonsAchivements:add_button("TP Industries Arms Race", function()
	globals.set_int(AG, 16)
end)
CsyonsAchivements:add_button("Multi-Disciplined", function()
	globals.set_int(AG, 17)
end)
CsyonsAchivements:add_button("From Beyond the Stars", function()
	globals.set_int(AG, 18)
end)
CsyonsAchivements:add_button("A Mystery, Solved", function()
	globals.set_int(AG, 19)
end)
CsyonsAchivements:add_button("Waste Management", function()
	globals.set_int(AG, 20)
end)
CsyonsAchivements:add_button("Red Mist", function()
	globals.set_int(AG, 21)
end)
CsyonsAchivements:add_button("Show Off", function()
	globals.set_int(AG, 22)
end)
CsyonsAchivements:add_button("Kifflom!", function()
	globals.set_int(AG, 23)
end)
CsyonsAchivements:add_button("Three Man Army", function()
	globals.set_int(AG, 24)
end)
CsyonsAchivements:add_button("Out of Your Depth", function()
	globals.set_int(AG, 25)
end)
CsyonsAchivements:add_button("Altruist Acolyte", function()
	globals.set_int(AG, 26)
end)
CsyonsAchivements:add_button("A Lot of Cheddar", function()
	globals.set_int(AG, 27)
end)
CsyonsAchivements:add_button("Trading Pure Alpha", function()
	globals.set_int(AG, 28)
end)
CsyonsAchivements:add_button("Pimp My Sidearm", function()
	globals.set_int(AG, 29)
end)
CsyonsAchivements:add_button("Wanted:Alive Or Alive", function()
	globals.set_int(AG, 30)
end)
CsyonsAchivements:add_button("Los Santos Customs", function()
	globals.set_int(AG, 31)
end)
CsyonsAchivements:add_button("Close Shave", function()
	globals.set_int(AG, 32)
end)
CsyonsAchivements:add_button("Off the Plane", function()
	globals.set_int(AG, 33)
end)
CsyonsAchivements:add_button("Three-Bit Gangster", function()
	globals.set_int(AG, 34)
end)
CsyonsAchivements:add_button("Making Moves", function()
	globals.set_int(AG, 35)
end)
CsyonsAchivements:add_button("Above the Law", function()
	globals.set_int(AG, 36)
end)
CsyonsAchivements:add_button("Numero Uno", function()
	globals.set_int(AG, 37)
end)
CsyonsAchivements:add_button("The Midnight Club", function()
	globals.set_int(AG, 38)
end)
CsyonsAchivements:add_button("Unnatural Selection", function()
	globals.set_int(AG, 39)
end)
CsyonsAchivements:add_button("Backseat Driver", function()
	globals.set_int(AG, 40)
end)
CsyonsAchivements:add_button("Run Like The Wind", function()
	globals.set_int(AG, 41)
end)
CsyonsAchivements:add_button("Clean Sweep", function()
	globals.set_int(AG, 42)
end)
CsyonsAchivements:add_button("Decorated", function()
	globals.set_int(AG, 43)
end)
CsyonsAchivements:add_button("Stick Up Kid", function()
	globals.set_int(AG, 44)
end)
CsyonsAchivements:add_button("Enjoy Your Stay", function()
	globals.set_int(AG, 45)
end)
CsyonsAchivements:add_button("Crew Cut", function()
	globals.set_int(AG, 46)
end)
CsyonsAchivements:add_button("Full Refund", function()
	globals.set_int(AG, 47)
end)
CsyonsAchivements:add_button("Dialling Digits", function()
	globals.set_int(AG, 48)
end)
CsyonsAchivements:add_button("American Dream", function()
	globals.set_int(AG, 49)
end)
CsyonsAchivements:add_button("A New Perspective", function()
	globals.set_int(AG, 50)
end)
CsyonsAchivements:add_button("Be Prepared", function()
	globals.set_int(AG, 51)
end)
CsyonsAchivements:add_button("In the Name of Science", function()
	globals.set_int(AG, 52)
end)
CsyonsAchivements:add_button("Dead Presidents", function()
	globals.set_int(AG, 53)
end)
CsyonsAchivements:add_button("Parole Day", function()
	globals.set_int(AG, 54)
end)
CsyonsAchivements:add_button("Shot Caller", function()
	globals.set_int(AG, 55)
end)
CsyonsAchivements:add_button("Four Way", function()
	globals.set_int(AG, 56)
end)
CsyonsAchivements:add_button("Live a Little", function()
	globals.set_int(AG, 57)
end)
CsyonsAchivements:add_button("Can't Touch This", function()
	globals.set_int(AG, 58)
end)
CsyonsAchivements:add_button("Mastermind", function()
	globals.set_int(AG, 59)
end)
CsyonsAchivements:add_button("Vinewood Visionary", function()
	globals.set_int(AG, 60)
end)
CsyonsAchivements:add_button("Majestic", function()
	globals.set_int(AG, 61)
end)
CsyonsAchivements:add_button("Humans of Los Santos", function()
	globals.set_int(AG, 62)
end)
CsyonsAchivements:add_button("First Time Director", function()
	globals.set_int(AG, 63)
end)
CsyonsAchivements:add_button("Animal Lover", function()
	globals.set_int(AG, 64)
end)
CsyonsAchivements:add_button("Ensemble Piece", function()
	globals.set_int(AG, 65)
end)
CsyonsAchivements:add_button("Cult Movie", function()
	globals.set_int(AG, 66)
end)
CsyonsAchivements:add_button("Location Scout", function()
	globals.set_int(AG, 67)
end)
CsyonsAchivements:add_button("Method Actor", function()
	globals.set_int(AG, 68)
end)
CsyonsAchivements:add_button("Cryptozoologist", function()
	globals.set_int(AG, 69)
end)
CsyonsAchivements:add_button("Getting Started", function()
	globals.set_int(AG, 70)
end)
CsyonsAchivements:add_button("The Data Breaches", function()
	globals.set_int(AG, 71)
end)
CsyonsAchivements:add_button("The Bogdan Problem", function()
	globals.set_int(AG, 72)
end)
CsyonsAchivements:add_button("The Doomsday Scenario", function()
	globals.set_int(AG, 73)
end)
CsyonsAchivements:add_button("A World Worth Saving", function()
	globals.set_int(AG, 74)
end)
CsyonsAchivements:add_button("Orbital Obliteration", function()
	globals.set_int(AG, 75)
end)
CsyonsAchivements:add_button("Elitist", function()
	globals.set_int(AG, 76)
end)
CsyonsAchivements:add_button("Masterminds", function()
	globals.set_int(AG, 77)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Look for what reads DISABLE_DAILY_OBJECTIVES and then there should be a while loop that stops at 3.
local current_objectives_global = 2359296
local weekly_words_global = 2737992
local objectives_state_global = 1574744

FRESH:add_button("Complete All Daily & Weekly Challenges", function()
	script.run_in_fiber(function(script)
		for i = 0, 2 do --Unlock all daily rewards.
			local objective = globals.get_int(current_objectives_global + (1 + (0 * 5570)) + 681 + 4244 + (1 + (i * 3)))
			globals.set_int(objectives_state_global + 1 + (1 + (i * 1)), objective)
		end
		globals.set_int(objectives_state_global, 1)
		globals.set_int(
			weekly_words_global + (1 + (0 * 6)) + 1,
			globals.get_int(weekly_words_global + (1 + (0 * 6)) + 2)
		) --Unlock Weekly Objective
	end)
end)

FRESH:add_separator()

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function unlock_packed_bools(from, to)
	for i = from, to do
		stats.set_packed_stat_bool(i, true)
	end
end

local function Text(text)
	FRESH:add_text(text, function() end)
end
Text("==========================")
Text("One Click Unlocker Section")
Text("==========================")
Text("Rewards,Unlocks,Progess And")
Text("Achievements")
Text("Make Sure You have 50 mil In Every")
Text("Business")
Text("In The Game Before Applying In Do a")
Text("Sale Of ")
Text("Each Business And Do a Round In")
Text("Shooting Range After You Activate It")
Text("Join a New Session To Apply ")
Text("==========================")
FRESH:add_button("Unlock All", function()
	unlock_packed_bools(110, 113) --Red Check Pajamas, Green Check Pajamas, Black Check Pajamas, I Heart LC T-shirt
	unlock_packed_bools(115, 115) --Roosevelt
	unlock_packed_bools(124, 124) --Sanctus
	unlock_packed_bools(129, 129) --Albany Hermes
	unlock_packed_bools(135, 137) --Vapid Clique, Buzzard Attack Chopper, Insurgent Pick-Up
	unlock_packed_bools(3593, 3599) --'Statue Of Happiness' T-shirt, 'Pisswasser' Beer Hat, 'Benedict' Beer Hat, 'J Lager' Beer Hat, 'Patriot' Beer Hat, 'Blarneys' Beer Hat, 'Supa Wet' Beer Hat
	unlock_packed_bools(3604, 3605) --Liberator, Sovereign
	unlock_packed_bools(3608, 3609) --'Elitas' T-shirt, High Flyer Parachute Bag
	unlock_packed_bools(3616, 3616) --Please Stop Me Mask
	unlock_packed_bools(3750, 3750) --Stocking
	unlock_packed_bools(3765, 3769) --The Fleeca Job, The Prison Break, The Humane Labs Raid, Series A Funding, The Pacific Standard Job (Elite Challenges)
	unlock_packed_bools(3770, 3781) --'Death Defying' T-shirt, 'For Hire' T-shirt, 'Gimme That' T-shirt, 'Asshole' T-shirt, 'Can't Touch This' T-shirt, 'Decorated' T-shirt, 'Psycho Killer' T-shirt, 'One Man Army' T-shirt, 'Shot Caller' T-shirt, 'Showroom' T-shirt, 'Elite Challenge' T-Shirt, 'Elite Lousy' T-Shirt
	unlock_packed_bools(3783, 3802) --Fake Dix White T-Shirt, Fake Dix Gold T-Shirt, Fake Didier Sachs T-Shirt, Fake Enema T-Shirt, Fake Le Chien No2 T-Shirt, Fake Le Chien Crew T-Shirt, Fake Santo Capra T-Shirt, Fake Vapid T-Shirt, Fake Perseus T-Shirt, Fake Sessanta Nove T-Shirt, 'Vinewood Zombie' T-shirt, 'Meltdown' T-shirt, 'I Married My Dad' T-shirt, 'Die Already 4' T-shirt, 'The Shoulder Of Orion II' T-shirt, 'Nelson In Naples' T-shirt, 'The Many Wives of Alfredo Smith' T-shirt, 'An American Divorce' T-shirt, 'The Loneliest Robot' T-shirt, 'Capolavoro' T-shirt
	unlock_packed_bools(4247, 4269) --'Magnetics Script' Hat, 'Magnetics Block' Hat, 'Low Santos' Hat, 'Boars' Hat, 'Benny's' Hat, 'Westside' Hat, 'Eastside' Hat, 'Strawberry' Hat, 'S.A.' Hat, 'Davis' Hat, 'Vinewood Zombie' T-shirt, 'Knife After Dark' T-shirt, 'The Simian' T-shirt, 'Zombie Liberals In The Midwest' T-shirt, 'Twilight Knife' T-shirt, 'Butchery and Other Hobbies' T-shirt, 'Cheerleader Massacre 3' T-shirt, 'Cannibal Clown' T-shirt, 'Hot Serial Killer Stepmom' T-shirt, 'Splatter And Shot' T-shirt, 'Meathook For Mommy' T-shirt, 'Psycho Swingers' T-shirt, 'Vampires On The Beach' T-shirt
	unlock_packed_bools(4300, 4327) --Brown Corpse Bride Bobblehead, White Corpse Bride Bobblehead, Pink Corpse Bride Bobblehead, White Mask Slasher Bobblehead, Red Mask Slasher Bobblehead, Yellow Mask Slasher Bobblehead, Blue Zombie Bobblehead, Green Zombie Bobblehead, Pale Zombie Bobblehead, Possessed Urchin Bobblehead, Demonic Urchin Bobblehead, Gruesome Urchin Bobblehead, Tuxedo Frank Bobblehead, Purple Suit Frank Bobblehead, Stripped Suit Frank Bobblehead, Black Mummy Bobblehead, White Mummy Bobblehead, Brown Mummy Bobblehead, Pale Werewolf Bobblehead, Dark Werewolf Bobblehead, Gray Werewolf Bobblehead, Fleshy Vampire Bobblehead, Bloody Vampire Bobblehead, B&W Vampire Bobblehead, Halloween Loop 1, Halloween Loop 2, Franken Stange, Lurcher
	unlock_packed_bools(4333, 4335) --Naughty Cap, Nice Cap, Abominable Snowman
	unlock_packed_bools(7467, 7495) --'Accountant' T-shirt, 'Bahama Mamas' T-shirt, 'Drone' T-shirt, 'Grotti' T-shirt, 'Golf' T-shirt, 'Maisonette' T-shirt, 'Manopause' T-shirt, 'Marlowe' T-shirt, 'Meltdown' T-shirt, 'Pacific Bluffs' T-shirt, 'Prolaps' T-shirt, 'Tennis' T-shirt, 'Toe Shoes' T-shirt, 'Crest' T-shirt, 'Vanilla Unicorn' T-shirt, Pastel Blue Pajamas, Pastel Yellow Pajamas, Pastel Pink Pajamas, Pastel Green Pajamas, Vibrant Check Pajamas, Blue Check Pajamas, Red Swirl Motif Pajamas, White Graphic Pajamas, Blue Swirl Pajamas, Yellow Swirl Pajamas, Red Swirl Pajamas, Navy Pinstripe Pajamas, Bold Pinstripe Pajamas, Orange Pinstripe Pajamas
	unlock_packed_bools(7515, 7528) --Pastel Blue Smoking Jacket, Pastel Yellow Smoking Jacket, Pastel Pink Smoking Jacket, Pastel Green Smoking Jacket, Vibrant Check Smoking Jacket, Blue Check Smoking Jacket, Red Swirl Motif Smoking Jacket, White Graphic Smoking Jacket, Blue Swirl Smoking Jacket, Yellow Swirl Smoking Jacket, Red Swirl Smoking Jacket, Navy Pinstripe Smoking Jacket, Bold Pinstripe Smoking Jacket, Orange Pinstripe Smoking Jacket
	unlock_packed_bools(7551, 7551) --DCTL T-Shirt
	unlock_packed_bools(7595, 7601) --White Jock Cranley Suit, Red Jock Cranley Suit, Blue Jock Cranley Suit, Black Jock Cranley Suit, Pink Jock Cranley Suit, Gold Jock Cranley Suit, Silver Jock Cranley Suit
	unlock_packed_bools(9362, 9385) --Western Brand White T-Shirt, Western Brand Black T-Shirt, Western Logo White T-Shirt, Western Logo Black T-Shirt, Steel Horse Solid Logo T-Shirt, Steel Horse Logo T-Shirt, Steel Horse Brand White T-Shirt, Steel Horse Brand Black T-Shirt, Nagasaki White T-Shirt, Nagasaki White and Red T-Shirt, Nagasaki Black T-Shirt, Purple Helmets Black T-Shirt, Principe Black T-Shirt, Black Steel Horse Hoodie, Steel Horse Brand White T-Shirt, Western Black Hoodie, Western Logo White T-Shirt, Nagasaki White Hoodie, Nagasaki White and Red Hoodie, Nagasaki Black Hoodie, Purple Helmets Black Hoodie, Principe Logo, Crosswalk T-Shirt, R* Crosswalk T-Shirt
	unlock_packed_bools(9426, 9440) --Base5 T-Shirt, Bitch'n' Dog Food T-Shirt, BOBO T-Shirt, Bounce FM T-Shirt, Crocs Bar T-Shirt, Emotion 98.3 T-Shirt, Fever 105 T-Shirt, Flash T-Shirt, Homies Sharp T-Shirt, K-DST T-Shirt, KJAH Radio T-Shirt, K-ROSE T-Shirt, Victory Fist T-Shirt, Vinyl Countdown T-Shirt, Vivisection T-Shirt
	unlock_packed_bools(9443, 9443) --Unicorn
	unlock_packed_bools(9461, 9481) --Ballistic Equipment, LS UR T-Shirt, Non-Stop-Pop FM T-Shirt, Radio Los Santos T-Shirt, Los Santos Rock Radio T-Shirt, Blonded Los Santos 97.8 FM T-Shirt, West Coast Talk Radio T-Shirt, Radio Mirror Park T-Shirt, Rebel Radio T-Shirt, Channel X T-Shirt, Vinewood Boulevard Radio T-Shirt, FlyLo FM T-Shirt, Space 103.2 T-Shirt, West Coast Classics T-Shirt, East Los FM T-Shirt, The Lab T-Shirt, The Lowdown 91.1 T-Shirt, WorldWide FM T-Shirt, Soulwax FM T-Shirt, Blue Ark T-Shirt, Blaine County Radio T-Shirt
	unlock_packed_bools(15381, 15382) --APC SAM Battery, Ballistic Equipment
	unlock_packed_bools(15388, 15423) --Black Ammu-Nation Cap, Black Ammu-Nation Hoodie, Black Ammu-Nation T-Shirt, Black Coil Cap, Black Coil T-Shirt, Black Hawk & Little Hoodie, Black Hawk & Little Logo T-Shirt, Black Hawk & Little T-Shirt, Black Shrewsbury Hoodie, Black Vom Feuer Cap, Black Warstock Hoodie, Green Vom Feuer T-Shirt, Red Hawk & Little Cap, Warstock Cap, White Ammu-Nation T-Shirt, White Coil Hoodie, White Coil T-Shirt, White Hawk & Little Hoodie, White Hawk & Little T-Shirt, White Shrewsbury T-Shirt, White Shrewsbury Cap, White Shrewsbury Hoodie, White Shrewsbury Logo T-Shirt, White Vom Feuer Cap, White Vom Feuer Hoodie, Wine Coil Cap, Yellow Vom Feuer Logo T-Shirt, Yellow Vom Feuer T-Shirt, Yellow Warstock T-Shirt, Blue R* Class of '98, Red R* Class of '98, Noise Rockstar Logo T-Shirt, Noise T-Shirt, Razor T-Shirt, Black Rockstar Camo, White Rockstar Camo
	unlock_packed_bools(15425, 15439) --Knuckleduster Pocket T-Shirt, Rockstar Logo Blacked Out T-Shirt, Rockstar Logo White Out T-Shirt, Half-track 20mm Quad Autocannon, Weaponized Tampa Dual Remote Minigun, Weaponized Tampa Rear-Firing Mortar, Weaponized Tampa Front Missile Launchers, Dune FAV 40mm Grenade Launcher, Dune FAV 7.62mm Minigun, Insurgent Pick-Up Custom .50 Cal Minigun, Insurgent Pick-Up Custom Heavy Armor Plating, Technical Custom 7.62mm Minigun, Technical Custom Ram-bar, Technical Custom Brute-bar, Technical Custom Heavy Chassis Armor
	unlock_packed_bools(15447, 15474) --Oppressor Missiles, Fractal Livery Set, Digital Livery Set, Geometric Livery Set, Nature Reserve Livery, Naval Battle Livery, Anti-Aircraft Trailer Dual 20mm Flak, Anti-Aircraft Trailer Homing Missile Battery, Mobile Operations Center Rear Turrets, Incendiary Rounds, Hollow Point Rounds, Armor Piercing Rounds, Full Metal Jacket Rounds, Explosive Rounds, Pistol Mk II Mounted Scope, Pistol Mk II Compensator, SMG Mk II Holographic Sight, SMG Mk II Heavy Barrel, Heavy Sniper Mk II Night Vision Scope, Heavy Sniper Mk II Thermal Scope, Heavy Sniper Mk II Heavy Barrel, Combat MG Mk II Holographic Sight, Combat MG Mk II Heavy Barrel, Assault Rifle Mk II Holographic Sight, Assault Rifle Mk II Heavy Barrel, Carbine Rifle Mk II Holographic Sight, Carbine Rifle Mk II Heavy Barrel, Proximity Mines
	unlock_packed_bools(15491, 15499) --Weaponized Tampa Heavy Chassis Armor, Brushstroke Camo Mk II Weapon Livery, Skull Mk II Weapon Livery, Sessanta Nove Mk II Weapon Livery, Perseus Mk II Weapon Livery, Leopard Mk II Weapon Livery, Zebra Mk II Weapon Livery, Geometric Mk II Weapon Livery, Boom! Mk II Weapon Livery
	unlock_packed_bools(15552, 15560) --Bronze Greatest Dancer Trophy, Bronze Number One Nightclub Trophy, Bronze Battler Trophy, Silver Greatest Dancer Trophy, Silver Number One Nightclub Trophy, Silver Battler Trophy, Gold Greatest Dancer Trophy, Gold Number One Nightclub Trophy, Gold Battler Trophy
	unlock_packed_bools(18099, 18099) --The Forest
	unlock_packed_bools(18116, 18118) --The Data Breaches, The Bogdan Problem, The Doomsday Scenario (Elite Challenges)
	unlock_packed_bools(18121, 18125) --Green Wireframe Bodysuit, Orange Wireframe Bodysuit, Blue Wireframe Bodysuit, Pink Wireframe Bodysuit, Yellow Wireframe Bodysuit
	unlock_packed_bools(18134, 18137) --Hideous Krampus Mask, Fearsome Krampus Mask, Odious Krampus Mask, Heinous Krampus Mask
	unlock_packed_bools(22124, 22132) --Maisonette Los Santos T-Shirt, Studio Los Santos T-Shirt, Galaxy T-Shirt, Gefängnis T-Shirt, Omega T-Shirt, Technologie T-Shirt, Paradise T-Shirt, The Palace T-Shirt, Tony's Fun House T-Shirt
	unlock_packed_bools(22137, 22139) --Nightclub Hotspot Trophy
	unlock_packed_bools(24963, 25000) --Apocalypse Cerberus, Future Shock Cerberus, Apocalypse Brutus, Nightmare Cerberus, Apocalypse ZR380, Future Shock Brutus, Impaler, Bolt Burger Hunger T-Shirt, Apocalypse Sasquatch - Livery set, Rat-Truck, Glendale, Slamvan, Dominator, Issi Classic, Spacesuit Alien T-Shirt set, Gargoyle, Future Shock Deathbike - Light Armor w/ Shield, Blue Lights, Electric Blue Lights, Mint Green Lights, Lime Green Lights, Yellow Lights, Golden Shower Lights, Orange Lights, Red Lights, Pony Pink Lights, Hot Pink Lights, Purple Lights, Blacklight Lights, Taxi Custom, Dozer, Clown Van, Trashmaster, Barracks Semi, Mixer, Space Docker, Tractor, Nebula Bodysuit set
	unlock_packed_bools(25002, 25002) --Up-n-Atomizer
	unlock_packed_bools(25005, 25006) --Epsilon Robes, Kifflom T-Shirt
	unlock_packed_bools(25008, 25009) --The Rookie
	unlock_packed_bools(25018, 25099) --Black & White Bones Festive Sweater, Slasher Festive Sweater, Black & Red Bones Festive Sweater, Red Bones Festive Sweater, Burger Shot Festive Sweater, Red Bleeder Festive Sweater, Blue Bleeder Festive Sweater, Blue Cluckin' Festive Sweater, Green Cluckin' Festive Sweater, Blue Slaying Festive Sweater, Green Slaying Festive Sweater, Hail Santa Festive Sweater, Merry Sprunkmas Festive Sweater, Ice Cold Sprunk Festive Sweater, Albany T-Shirt, Albany Vintage T-Shirt, Annis T-Shirt, Benefactor T-Shirt, BF T-Shirt, Bollokan T-Shirt, Bravado T-Shirt, Brute T-Shirt, Buckingham T-Shirt, Canis T-Shirt, Chariot T-Shirt, Cheval T-Shirt, Classique T-Shirt, Coil T-Shirt, Declasse T-Shirt, Dewbauchee T-Shirt, Dilettante T-Shirt, Dinka T-Shirt, Dundreary T-Shirt, Emperor T-Shirt, Enus T-Shirt, Fathom T-Shirt, Gallivanter T-Shirt, Grotti T-Shirt, Hijak T-Shirt, HVY T-Shirt, Imponte T-Shirt, Invetero T-Shirt, Jobuilt T-Shirt, Karin T-Shirt, Lampadati T-Shirt, Maibatsu T-Shirt, Mamba T-Shirt, Mammoth T-Shirt, MTL T-Shirt, Obey T-Shirt, Ocelot T-Shirt, Overflod T-Shirt, Pegassi T-Shirt, Pfister T-Shirt, Progen T-Shirt, Rune T-Shirt, Schyster T-Shirt, Shitzu T-Shirt, Truffade T-Shirt, Ubermacht T-Shirt, Vapid T-Shirt, Vulcar T-Shirt, Weeny T-Shirt, Willard T-Shirt, Albany Nostalgia T-Shirt, Albany USA T-Shirt, Albany Dealership T-Shirt, Annis JPN T-Shirt, BF Surfer T-Shirt, Bollokan Prairie T-Shirt, Bravado Stylized T-Shirt, Brute Impregnable T-Shirt, Brute Heavy Duty T-Shirt, Buckingham Luxe T-Shirt, Canis USA T-Shirt, Canis American Legend T-Shirt, Canis Wolf T-Shirt, Cheval Marshall T-Shirt, Coil USA T-Shirt, Coil Raiden T-Shirt, Declasse Logo T-Shirt, Declasse Girl T-Shirt
	unlock_packed_bools(25101, 25109) --Nightmare Brutus, Apocalypse Scarab, Future Shock Scarab, Nightmare Scarab, Future Shock ZR380, Nightmare ZR380, Apocalypse Imperator, Future Shock Imperator, Nightmare Imperator
	unlock_packed_bools(25111, 25134) --Future Shock Deathbike - Reinforced Armor w/ Shield, Future Shock Deathbike - Heavy Armor w/ Shield, Future Shock Sasquatch - Livery set, Nightmare Sasquatch - Livery set, Apocalypse Cerberus - Livery set, Future Shock Cerberus - Livery set, All variants of Sasquatch - Light Armor, All variants of Sasquatch - Reinforced Armor, All variants of Sasquatch - Heavy Armor, Nightmare Cerberus - Livery set, Apocalypse Bruiser - Livery set, Future Shock Bruiser - Livery set, Nightmare Bruiser - Livery set, Apocalypse Slamvan - Livery set, All variants of Cerberus - Body Spikes, Future Shock Slamvan - Livery set, All variants of Cerberus - Light Armor, All variants of Cerberus - Reinforced Armor, All variants of Cerberus - Heavy Armor, Nightmare Slamvan - Livery set, Apocalypse Brutus - Livery set, Future Shock Brutus - Livery set, Nightmare Brutus - Livery set, Apocalypse Scarab - Livery set
	unlock_packed_bools(25136, 25179) --All variants of Bruiser - Body Spikes, Future Shock Scarab - Livery set, Nightmare Scarab - Livery set, All variants of Bruiser - Light Armor, All variants of Bruiser - Reinforced Armor, All variants of Bruiser - Heavy Armor, Apocalypse Dominator - Livery set, Future Shock Dominator - Livery set, Nightmare Dominator - Livery set, Apocalypse Impaler - Livery set, Future Shock Impaler - Livery set, Nightmare Impaler - Livery set, All variants of Slamvan - Body Spikes, Apocalypse Imperator - Livery set, Future Shock Imperator - Livery set, All variants of Slamvan - Light Armor, All variants of Slamvan - Reinforced Armor, All variants of Slamvan - Heavy Armor, Nightmare Imperator - Livery set, Apocalypse ZR380 - Livery set, Future Shock ZR380 - Livery set, Nightmare ZR380 - Livery set, Apocalypse Issi - Livery set, Future Shock Issi - Livery set, All variants of Brutus - Light Armor, All variants of Brutus - Reinforced Armor, All variants of Brutus - Heavy Armor, Nightmare Issi - Livery set, Apocalypse Deathbike - Livery set, Future Shock Deathbike - Livery set, Nightmare Deathbike - Livery set, All variants of Sasquatch - Heavy Armored Front, Apocalypse Scarab - Body Spikes set, Future Shock Scarab - Body Spikes set, Nightmare Scarab - Body Spikes set, All variants of Sasquatch - Heavy Armored Hood, All variants of Sasquatch - Mohawk Exhausts, All variants of Scarab - Light Armor, All variants of Scarab - Reinforced Armor, All variants of Scarab - Heavy Armor, All variants of Sasquatch - Dual Mohawk Exhausts, Apocalypse & Nightmare Sasquatch - Rear Spears Left, Optics Headset Mask set, All variants of Dominator - Body Spikes
	unlock_packed_bools(25181, 25237) --Apocalypse & Nightmare Sasquatch - Rear Spears Right, Apocalypse & Nightmare Sasquatch - Skull Cross, All variants of Dominator - Light Armor, All variants of Dominator - Reinforced Armor, All variants of Dominator - Heavy Armor, Apocalypse & Nightmare Sasquatch - Ram Skull Cross, Apocalypse & Nightmare Sasquatch - Blonde Doll Cross, All variants of Impaler - Body Spikes, Apocalypse & Nightmare Sasquatch - Brunette Doll Cross, Apocalypse & Nightmare Cerberus - Bastioned Ram-bars, All variants of Impaler - Light Armor, All variants of Impaler - Reinforced Armor, All variants of Impaler - Heavy Armor, All variants of Cerberus - Bolstered Hood Cage, All variants of Cerberus - Reinforced Riot Hood, All variants of Cerberus - Juggernaut Hood, Apocalypse & Nightmare Cerberus - War Spearheads, All variants of Imperator - Body Spikes, Apocalypse & Nightmare Cerberus - War Spear Kit, Apocalypse & Nightmare Cerberus - Nade Spearheads, Apocalypse & Nightmare Cerberus - Nade Spear Kit, All variants of Imperator - Light Armor, All variants of Imperator - Reinforced Armor, All variants of Imperator - Heavy Armor, Apocalypse & Nightmare Cerberus - Skull Spearheads, Apocalypse & Nightmare Cerberus - Skull Spear Kit, Apocalypse & Nightmare Cerberus - Arrow Spearheads, Apocalypse & Nightmare Cerberus - Arrow Spear Kit, All variants of ZR380 - Body Spikes, Apocalypse & Nightmare Cerberus - Tridents, Apocalypse & Nightmare Cerberus - Wasteland Ritual, All variants of ZR380 - Light Armor, All variants of ZR380 - Reinforced Armor, All variants of ZR380 - Heavy Armor, Future Shock Cerberus - Panel Detail, Future Shock Cerberus - Crane Pipes, All variants of Issi - Body Spikes, Future Shock Cerberus - Hedgehog, Future Shock Cerberus - Hedgehog MK2, Future Shock Bruiser - Heavy Plated Armored Grille / Apocalypse & Nightmare Bruiser - Diamond Heavy Armor Grille, All variants of Issi - Light Armor, All variants of Issi - Reinforced Armor, All variants of Issi - Heavy Armor, All variants of Bruiser - Twin Oval Exhaust, Cluckin' Bell Mask, All variants of Bruiser - Long Triple Rear Exhausts, All variants of Bruiser - Front & Rear Triple Exhausts, All variants of Deathbike - Light Armor, All variants of Deathbike - Reinforced Armor, All variants of Deathbike - Heavy Armor, Kinetic Mines, Apocalypse Bruiser - Skull & Cross / Nightmare Bruiser - Painted Skull & Cross, Spike Mines, Slick Mines, Sticky Mines, EMP Mines, RC Bandito
	unlock_packed_bools(25244, 25400) --Robot Bodysuit set, Hero Bodysuit set, Shapes Bodysuit set, Contours Bodysuit set, Martian Bodysuit set, Reptile Bodysuit set, Galaxy Bodysuit set, Space Creature Suits, Space Cyclops Suits, Space Horror Suits, Retro Spacesuits, Astronaut Suits, Space Traveler Suits, Character Suits: Pogo Space Monkey, Character Suits: Republican Space Ranger, Death Bird Mask set, Stalker Mask set, Raider Mask set, Marauder Mask set, Paco the Taco Mask, Burger Shot Mask, Space Rangers T-Shirt set, Space Ranger Logo T-Shirt set, Phases T-Shirt set, Rocket Splash T-Shirt set, Two Moons T-Shirt set, Freedom Isn't Free T-Shirt set, Apocalyptic Raider Top set, Apocalyptic Leather Feather Top set, Apocalyptic Mercenary Vest set, Benedict Light Beer Hoodie, Taco Bomb Hoodie, Cluckin' Bell Logo Bomb Hoodie, Patriot Beer Hoodie, Pisswasser Hoodie, Burger Shot Hoodie, Corn Dog Hoodie, Donut Hoodie, Lucky Plucker Hoodie, Logger Light Hoodie, Pizza Hoodie, Fries Hoodie, Mushrooms Hoodie, Redwood Hoodie, eCola Infectious Hoodie, Cluckin' Bell Logo Hoodie, Lemons Hoodie, Tacos Hoodie, Burger Shot Pattern Sweater, Burger Shot Logo Sweater, Burger Shot Sweater, Sprunk Sweater set, Wigwam Sweater, Taco Bomb Chili Sweater, Taco Bomb Sweater set, Cluckin' Bell Logo Bomb Sweater, Blue Cluckin' Bell Sweater, Black Cluckin' Bell Sweater, eCola Sweater set, MeTV Sweater set, Heat Sweater set, Degenatron Sweater, Pisswasser Sweater set, Bolt Burger Sweater, Lucky Plucker Logo Bomb Sweater, Lucky Plucker Sweater, Burger Shot Hockey Shirt set, Cluckin' Bell Hockey Shirt set, Wigwam Hockey Shirt, Redwood Hockey Shirt, Bean Machine Hockey Shirt, Red eCola Hockey Shirt, Black eCola Hockey Shirt, Phat Chips Hockey Shirt set, Sprunk Hockey Shirt set, Sprunk Classic Hockey Shirt, Burger Shot Black T-Shirt, Burger Shot Logo T-Shirt, Cluckin' Bell Logo T-Shirt, Cluckin' Bell Black T-Shirt, Cluckin' Bell Filled Logo T-Shirt, eCola Black T-Shirt, Lucky Plucker T-Shirt, Pisswasser T-Shirt, Sprunk T-Shirt, Taco Bomb Chili T-Shirt, Taco Bomb Black T-Shirt, Up-n-Atom Hamburgers T-Shirt, Up-n-Atom Logo T-Shirt, Wigwam T-Shirt, Degenatron ROYGBIV T-Shirt, CNT T-Shirt, Qub3d T-Shirt, Righteous Slaughter T-Shirt, Space Monkey Full T-Shirt, Space Monkey Pixel T-Shirt, Space Monkey Enemy T-Shirt, Burger Shot Bleeder T-Shirt, Heat Rises T-Shirt, Space Monkey Logo T-Shirt, Space Monkey Suit T-Shirt, Space Monkey Face T-Shirt, Space Monkey Mosaic T-Shirt, Bolt Burger Logo T-Shirt, Exsorbeo 720 T-Shirt, Heat Ball Logo T-Shirt set, Heat Logo T-Shirt set, Heat Pop Art Logo T-Shirt set, MeTV Logo T-Shirt set, MeTV 90s T-Shirt set, Burger Shot Target T-Shirt, eCola Infectious T-Shirt, Up-n-Atom White T-Shirt, Jock Cranley Patriot T-Shirt, CCC TV T-Shirt, Degenatron Logo T-Shirt, eCola White T-Shirt, eCola Pass It On T-Shirt, Tw@ T-Shirt, Chain Pants set, Chain Shorts set, Leather Stitch Pants set, Raider Pants set, Light Ups Shoes set, Flaming Skull Boots set, Skull Harness Boots set, Plated Boots set, Burger Shot Food Cap set, Apocalypse Bruiser - Double Cross Ram Skull / Nightmare Bruiser - Painted Ram Skull & Cross, Burger Shot Logo Cap, Burger Shot Bullseye Cap, Cluckin' Bell Logo Cap set, Apocalypse Bruiser - Cross & Skull Large Blade Kit / Nightmare Bruiser - Painted Skull Large Blade Kit, Cluckin' Bell Logos Cap, Hotdogs Cap set, Taco Bomb Cap set, Apocalypse Bruiser - Ram Skull Nade Kit / Nightmare Bruiser - Painted Ram Skull Nade Kit, Apocalypse Bruiser - Ram Skull Medieval Kit / Nightmare Bruiser - Painted Skull Medieval Kit, Lucky Plucker Cap set, Lucky Plucker Logos Cap set, Apocalypse Bruiser - Ram Skull Medieval Madness / Nightmare Bruiser - Painted Skull Medieval Madness, Apocalypse Bruiser - Barrels & Junk, Pisswasser Cap set, Apocalypse Bruiser - Skeleton Cage, Future Shock Bruiser - Light Cover, Future Shock Bruiser - Spare Tire, Taco Canvas Hat, Burger Shot Canvas Hat, Cluckin' Bell Canvas Hat, Hotdogs Canvas Hat, Shunt Boost, Boost Upgrade 20%, Boost Upgrade 60%, Boost Upgrade 100%, Jump Upgrade 20%, Jump Upgrade 60%, Jump Upgrade 100%
	unlock_packed_bools(25405, 25405) --Festive tint (Up-n-Atomizer)
	unlock_packed_bools(25407, 25511) --Future Shock Bruiser - Crates, Nightmare Bruiser - Large Burger, Nightmare Bruiser - Large Doughnuts, Nightmare Bruiser - Large eCola Cans, All variants of Slamvan - Rear Bumper Reinforced Armor, All variants of Slamvan - Rear Bumper Heavy Armor, Apocalypse Slamvan - Basic Spears, Apocalypse Slamvan - Battle Cross, Apocalypse Slamvan - War Cross, Apocalypse Slamvan - Battle Spears, Apocalypse Slamvan - War Spears, Nightmare Slamvan - Knife Spears, Nightmare Slamvan - Fork & Knife, Apocalypse & Nightmare Brutus - Gassed Up Bar, Apocalypse & Nightmare Brutus - Roadblock, Apocalypse & Nightmare Brutus - Junk Trunk, Apocalypse & Nightmare Brutus - Fire Spitters, Apocalypse & Nightmare Brutus - Hell Chambers, Apocalypse & Nightmare Brutus - Heavy Armored Arches, Apocalypse & Nightmare Brutus - Toothy, Apocalypse & Nightmare Brutus - Armored Spares, Apocalypse & Nightmare Brutus - Armored Supplies, Apocalypse & Nightmare Brutus - Eternally Chained, Apocalypse & Nightmare Brutus - Speared, Future Shock Scarab - Primary Full Armor, All variants of Scarab - Secondary Full Armor, All variants of Scarab - Carbon Full Armor, Future Shock Scarab - Heavy Duty Cooling / Apocalypse & Nightmare Scarab - Air Filtration Vents & Long Range Equipment, Apocalypse & Nightmare Scarab - Rusty Full Armor, Apocalypse & Nightmare Scarab - Rear War Poles, Apocalypse & Nightmare Scarab - Rear Spears, Apocalypse & Nightmare Scarab - Skull Cross, Apocalypse & Nightmare Scarab - Skull Cross w/ War Poles, Apocalypse & Nightmare Scarab - Skull Cross w/ Spears, Apocalypse & Nightmare Scarab - Load'a War Poles, Apocalypse & Nightmare Scarab - Load'a Spears, Apocalypse & Nightmare Scarab - Scarab Mega Cover set, Apocalypse & Nightmare Scarab - Armored Mega Cover set, Apocalypse & Nightmare Scarab - Cage, Apocalypse & Nightmare Scarab - Plated Cage, Future Shock Scarab - Livery Armor, Future Shock Scarab - Primary Full Armor, Future Shock Scarab - Livery Full Armor, Future Shock Scarab - Carbon Full Armor, Future Shock Scarab - Matte Full Armor, Future Shock Scarab - Futuristic Panel Armor, Future Shock Scarab - Plated Livery Full Armor, All variants of Dominator - Triple Front Exhausts, All variants of Dominator - Horn Exhausts, All variants of Dominator - Triple Rear Exhausts, Apocalypse & Nightmare Dominator - Rear Pointing War Poles, Apocalypse & Nightmare Dominator - Front Facing Axes, Apocalypse & Nightmare Dominator - Front Facing Spears, Apocalypse & Nightmare Dominator - Unholy Cross, Apocalypse & Nightmare Dominator - Brutal Unholy Cross, Apocalypse & Nightmare Dominator - Bunch of War Poles, Apocalypse & Nightmare Dominator - Front Pointing War Poles, Apocalypse & Nightmare Dominator - Skull Hood, Apocalypse & Nightmare Impaler - Got Pole?, Apocalypse & Nightmare Impaler - Getting Medieval, Apocalypse & Nightmare Impaler - Wasteland Peacock, Apocalypse & Nightmare Impaler - Shish-Kebbabed, Apocalypse & Nightmare Impaler - It's A Stick Up, Apocalypse & Nightmare Impaler - The Dark Ages, Apocalypse & Nightmare Impaler - Dolly Spearton, Apocalypse & Nightmare Impaler - War Poles, All variants of Imperator - Shakotan Exhaust, Apocalypse & Nightmare Imperator - Whole Lotta Pole, Apocalypse & Nightmare Imperator - Getting Medieval, Apocalypse & Nightmare Imperator - It's A Stick Up, Apocalypse & Nightmare Imperator - Boom On A Spear, Apocalypse & Nightmare Imperator - Village Justice, Apocalypse & Nightmare Imperator - Wasteland Peacock, Apocalypse & Nightmare Imperator - Shish-Kebbabed, Apocalypse & Nightmare Imperator - Junk Pipes, Apocalypse & Nightmare Imperator - Mega Zorst, Apocalypse & Nightmare Imperator - Ride 'Em Cowboy, Apocalypse & Nightmare Imperator - Cannibal Totem, All variants of ZR380 - Side Exhausts, All variants of ZR380 - Spike Exhausts, Apocalypse & Nightmare ZR380 - Mismatch, Future Shock ZR380 - Ray Gun Exhausts, Future Shock ZR380 - Sprint Car Wing, Future Shock ZR380 - Armor Plating Mk. 3, Future Shock ZR380 - Rear Phantom Covers, All variants of Issi - Heavy Duty Ram Bar, Apocalypse & Nightmare Issi - Spear, Apocalypse & Nightmare Issi - Left War Poles, Apocalypse & Nightmare Issi - Dolly Spearton, Apocalypse & Nightmare Issi - Right War Poles, Apocalypse & Nightmare Issi - Skull Cross, Apocalypse & Nightmare Issi - Dolly Spearton Set, Apocalypse & Nightmare Issi - Dual War Poles, Apocalypse & Nightmare Issi - Dolly Spearton W/ War Pole, Apocalypse & Nightmare Issi - Skull Cross W/ Spear, Apocalypse & Nightmare Issi - Skull Cross W/ War Pole, Apocalypse & Nightmare Issi - Skull Cross W/ Dolly, Apocalypse & Nightmare Issi - Left Spear, Apocalypse & Nightmare Issi - Right Spear, Apocalypse & Nightmare Issi - Left Skull Axe, Apocalypse & Nightmare Issi - Right Axe, Apocalypse & Nightmare Issi - Dual Spears, Apocalypse & Nightmare Issi - Spear & Axe, Apocalypse & Nightmare Issi - Axe & Spear, Apocalypse & Nightmare Issi - Dual Axes
	unlock_packed_bools(25516, 25516) --RC Tank
	unlock_packed_bools(25520, 25521) --Metal Detector
	unlock_packed_bools(26811, 26964) --Action Figures, Playing Cards
	unlock_packed_bools(26968, 27088) --Impotent Rage Outfit, High Roller, Tiger Scuba, Sprunk Racing Suit, Neon Bodysuit, Extreme Strike Vest, The Chimera (Outfit), White Racing Suit, The Reconnaissance (Outfit), Blue Jock Cranley Suit, Italian Biker Suit, The Hazard (Outfit), Mid Strike Vest, Splinter Gorka Suit, The Gunfighter (Outfit), Black Plate Carrier*, Hunter Leather Fur Jacket, Chamois Plate Carrier*, Black Heavy Utility Vest, The Puff (Outfit), Ox Blood Patched Cut, Color Geo PRB Leather, Blue Tactical Blouson, Orange Big Cat*, Color Geo Sweater, Vivid Gradient Puffer, Color Diamond Sweater, Classic SN Print Sweater, Power Motocross, The Buzz (Outfit), Pegassi Racing Jacket, Woodland Camo Parka, Le Chien Print Sweater, The Pincer (Outfit), Vibrant Gradient Shortsleeve, Urban Gradient Shortsleeve, White Chevron SC Track, Slalom Motocross, Blue Savanna Shortsleeve, Green Didier Sachs Field, Candy Motocross, Tutti Frutti Pattern Sweater, The Vespucci (Outfit), Contrast Camo Service Shirt, Tropical Pattern Sweater, Black Service Shirt, SecuroServ 1 (Outfit), Black Sports Blagueurs Hoodie, Gold Shiny T-Shirt, OJ Shortsleeve, Primary Squash Hoodie, Purple Camo Bigness Hoodie, Bold Abstract Bigness Hoodie, Pink SN Hoodie, Red Boating Blazer, Multicolor Leaves Shortsleeve, Neon Leaves Güffy Hoodie, Black Dotted Shortsleeve, Drive Motocross, Red Patterned Shortsleeve, Steel Horse Satin Jacket, Orange Squash Hoodie, Regal Loose Shirt, White Güffy Hoodie, Stealth Utility Vest, Red Floral Sweater, Black & Red Bigness Jersey, The Slick (Outfit), Splat Squash Sweater, Tan Hooded Jacket, Brushstroke Combat Shirt, White & Red Bigness Jersey, Black Combat Top, Lime Longline Hoodie, Red Bold Check, Bold Camo Sand Castle Sweater, Red Combat Shirt, Red Mist XI Dark, Cyan Manor Sweater, Flecktarn Sleeveless Shirt, Forest Camo Battle Vest, LS Jardineros Dark, Liberty Cocks Dark, Angelica T-Shirt, Hinterland Ship Sweater, Wine Sleeveless Shirt, Cobble Sleeveless, Black Dense Logo Sweater*, White Flying Bravo Hoodie, Cat T-Shirt*, Color Geo T-Shirt, Bold Abstract Bigness T-Shirt, Neon Leaves Güffy T-Shirt, Black Baggy Hoodie, White Manor Zigzag T-Shirt, Double P Baseball Shirt, Aqua Camo Rolled Tee, Dark Woodland T-Shirt, White Bigness T-Shirt, Black No Retreat Tank, White Benny's T-Shirt, Red Smuggler Tank, Angels of Death Vivid Tee, Blue Hit & Run Tank, Waves T-Shirt*, Beige Turtleneck, Hinterland Nugget T-Shirt, Mustard Güffy Tank, Nagasaki White and Red Hoodie, Grotti Tee, Western Logo Black Tee, Butchery and other Hobbies, Black Ammu-Nation Hoodie*, Fake Santo Capra T-Shirt, Death Defying T-Shirt, Bahama Mamas, Showroom T-Shirt, LS UR Tee, J Lager Beer Hat, Unicorn, Gingerbread
	unlock_packed_bools(27109, 27115) --The Diamond Classic T-Shirt, The Diamond Vintage T-Shirt, Red The Diamond LS T-Shirt, Blue The Diamond Resort LS T-Shirt, Red The Diamond Resort T-Shirt, Blue D Casino T-Shirt, Red The Diamond Classic T-Shirt
	unlock_packed_bools(27120, 27145) --White The Diamond Hoodie, Black The Diamond Hoodie, Ash The Diamond Hoodie, Gray The Diamond Hoodie, Red The Diamond Hoodie, Orange The Diamond Hoodie, Blue The Diamond Hoodie, Black The Diamond Silk Robe, White The Diamond Cap, Black The Diamond Cap, White LS Diamond Cap, Black LS Diamond Cap, Red The Diamond Cap, Orange The Diamond Cap, Blue LS Diamond Cap, Green The Diamond Cap, Orange LS Diamond Cap, Purple The Diamond Cap, Pink LS Diamond Cap, White The Diamond LS Tee*, Black The Diamond LS Tee, Black The Diamond Resort LS Tee, White The Diamond Resort Tee, Black The Diamond Resort Tee, Black LS Diamond Tee, Black D Casino Tee
	unlock_packed_bools(27147, 27182) --I've Been Shamed Tee, Blue I've Been Shamed Tee, Fame or Shame Stars Tee, Red Fame or Shame Stars Tee, No Talent Required Tee, Red No Talent Required Tee, Team Tracey Tee, Blue Team Tracey Tee, Monkey Business Tee, Red Monkey Business Tee, Fame or Shame Logo Tee, Blue Fame or Shame Logo Tee, Stars Fame or Shame Robe, Black Fame or Shame Robe, Red Stars Fame or Shame Robe, Red Fame or Shame Robe, White Fame or Shame Robe, Black Fame or Shame Shades, Red Fame or Shame Shades, Blue Fame or Shame Shades, White Fame or Shame Shades, Gold Fame or Shame Mics, Silver Fame or Shame Mics, Red Fame or Shame Kronos, Green Fame or Shame Kronos, Blue Fame or Shame Kronos, Black Fame or Shame Kronos, America Loves You Tee, Blue America Loves You Tee, Fame or Shame No Evil Tee, You're So Original! Tee, Red You're So Original! Tee, Oh No He Didn't! Tee, Blue Oh No He Didn't! Tee, You're Awful Tee, Red You're Awful Tee
	unlock_packed_bools(27184, 27213) --Invade and Persuade Enemies T-Shirt, Invade and Persuade Oil T-Shirt, Invade and Persuade Tour T-Shirt, Invade and Persuade Green T-Shirt, Invade and Persuade RON T-Shirt, Street Crimes Hoods T-Shirt, Street Crimes Punks T-Shirt, Street Crimes Yokels T-Shirt, Street Crimes Bikers T-Shirt, Street Crimes Action T-Shirt, Street Crimes Boxart T-Shirt, Street Crimes Logo T-Shirt, Claim What's Yours T-Shirt, Choose Your Side T-Shirt, Street Crimes Color Gangs T-Shirt, Street Crimes Red Gangs T-Shirt, White Street Crimes Icons T-Shirt, Black Street Crimes Icons T-Shirt, Invade and Persuade Logo T-Shirt, Mission I T-Shirt, Mission II T-Shirt, Mission IV T-Shirt, Mission III T-Shirt, Invade and Persuade Boxart T-Shirt, Invade and Persuade Invader T-Shirt, Invade and Persuade Suck T-Shirt, Invade and Persuade Jets T-Shirt, Invade and Persuade Gold T-Shirt, Invade and Persuade Hero T-Shirt, Invade and Persuade Barrels T-Shirt
	unlock_packed_bools(27247, 27247) --Madam Nazar (Arcade Trophy)
	unlock_packed_bools(28099, 28148) --Signal Jammers
	unlock_packed_bools(28158, 28158) --Navy Revolver
	unlock_packed_bools(28171, 28191) --Green Reindeer Lights Bodysuit, Ho-Ho-Ho Sweater, Traditional Festive Lights Bodysuit, Yellow Reindeer Lights Bodysuit, Neon Festive Lights Bodysuit, Plushie Grindy T-Shirt, Plushie Saki T-Shirt , Plushie Humpy T-Shirt, Plushie Smoker T-Shirt, Plushie Poopie T-Shirt, Plushie Muffy T-Shirt, Plushie Wasabi Kitty T-Shirt, Plushie Princess T-Shirt, Plushie Master T-Shirt, Pixel Pete's T-Shirt, Wonderama T-Shirt, Warehouse T-Shirt, Eight Bit T-Shirt, Insert Coin T-Shirt, Videogeddon T-Shirt, Nazar Speaks T-Shirt
	unlock_packed_bools(28194, 28196) --Silent & Sneaky, The Big Con, Aggressive (Elite Challenges)
	unlock_packed_bools(28197, 28222) --Badlands Revenge II Gunshot T-Shirt, Badlands Revenge II Eagle T-Shirt, Badlands Revenge II Pixtro T-Shirt, Badlands Revenge II Romance T-Shirt, Badlands Revenge II Bear T-Shirt, Badlands Revenge II Help Me T-Shirt & Badlands Revenge II Retro T-Shirt, Race and Chase Decor T-Shirt, Race and Chase Vehicles T-Shirt, Race and Chase Finish T-Shirt, Crotch Rockets T-Shirt, Street Legal T-Shirt & Get Truckin' T-Shirt, Wizard's Ruin Loot T-Shirt, The Wizard's Ruin Rescue T-Shirt, The Wizard's Ruin Vow T-Shirt, Thog Mighty Sword T-Shirt, Thog T-Shirt & Thog Bod T-Shirt, Space Monkey 3 T-Shirt, Space Monkey Space Crafts T-Shirt, Space Monkey Pixel T-Shirt, Space Monkey Boss Fights T-Shirt, Radioactive Space Monkey T-Shirt & Space Monkey Art T-Shirt, Monkey's Paradise T-Shirt, Retro Defender of the Faith T-Shirt, Penetrator T-Shirt, Defender of the Faith T-Shirt, Love Professor His T-Shirt & Love Professor Hers T-Shirt, Love Professor Nemesis T-Shirt, Love Professor Friendzoned T-Shirt, Love Professor Secrets T-Shirt & Love Professor Score T-Shirt, Shiny Wasabi Kitty Claw T-Shirt, Pixtro T-Shirt, Akedo T-Shirt & Arcade Trophy T-Shirt
	unlock_packed_bools(28224, 28227) --White Dog With Cone T-Shirt, Yellow Dog With Cone T-Shirt, Dog With Cone Slip-Ons & Dog With Cone Chain, Refuse Collectors Outfit, Undertakers Outfit, Valet Outfit
	unlock_packed_bools(28229, 28249) --Prison Guards, FIB Suits, Black Scuba, Gruppe Sechs Gear, Bugstars Uniforms, Maintenance Outfit, Yung Ancestors Outfit, Firefighter Outfit, Orderly Armor Outfit, Upscale Armor Outfit, Evening Armor Outfit, Reinforced: Padded Combat Outfit, Reinforced: Bulk Combat Outfit, Reinforced: Compact Combat Outfit, Balaclava Crook Outfit, Classic Crook Outfit, High-end Crook Outfit, Infiltration: Upgraded Tech Outfit, Infiltration: Advanced Tech Outfit, Infiltration: Modernized Tech Outfit, Degenatron Glitch T-Shirt
	unlock_packed_bools(28254, 28255) --Get Metal T-Shirt / Axe of Fury T-Shirt, 11 11 T-Shirt / Axe of Fury T-Shirt
	unlock_packed_bools(30230, 30251) --Movie Props, Space Interloper Outfit
	unlock_packed_bools(30254, 30295) --King Of QUB3D T-Shirt, Qubism T-Shirt, God Of QUB3D T-Shirt, QUB3D Boxart T-Shirt, Qub3d Qub3s T-Shirt, Yacht Captain Outfit, BCTR Aged T-Shirt, BCTR T-Shirt, Cultstoppers Aged T-Shirt, Cultstoppers T-Shirt, Daily Globe Aged T-Shirt, Daily Globe T-Shirt, Eyefind Aged T-Shirt, Eyefind T-Shirt, Facade Aged T-Shirt, Facade T-Shirt, Fruit Aged T-Shirt, Fruit T-Shirt, LSHH Aged T-Shirt, LSHH T-Shirt, MyRoom Aged T-Shirt, MyRoom T-Shirt, Rebel Aged T-Shirt, Rebel T-Shirt, Six Figure Aged T-Shirt, Six Figure T-Shirt, Trash Or Treasure Aged T-Shirt, Trash Or Treasure T-Shirt, Tw@ Logo Aged T-Shirt, Tw@ Logo T-Shirt, Vapers Den Aged T-Shirt, Vapers Den T-Shirt, WingIt Aged T-Shirt, WingIt T-Shirt, ZiT Aged T-Shirt, ZiT T-Shirt, Green Dot Tech Mask, Orange Dot Tech Mask, Blue Dot Tech Mask, Pink Dot Tech Mask, Lemon Sports Track Pants, Lemon Sports Track Top
	unlock_packed_bools(30524, 30557) --Grotti Aged T-Shirt, Lampadati Aged T-Shirt, Ocelot Aged T-Shirt, Overflod Aged T-Shirt, Pegassi Aged T-Shirt, Pfister Aged T-Shirt, Vapid Aged T-Shirt, Weeny Aged T-Shirt, Blue The Diamond Resort LS Aged T-Shirt, KJAH Radio Aged T-Shirt, K-Rose Aged T-Shirt, Emotion 98.3 Aged T-Shirt, KDST Aged T-Shirt, Bounce FM Aged T-Shirt, Fake Vapid Aged T-Shirt, I Married My Dad Aged T-Shirt, ToeShoes Aged T-Shirt, Vanilla Unicorn Aged T-Shirt, Steel Horse Solid Logo Aged T-Shirt, Black Western Logo Aged T-Shirt, White Nagasaki Aged T-Shirt, Black Principe Aged T-Shirt, Noise Aged T-Shirt, Noise Rockstar Logo Aged T-Shirt, Razor Aged T-Shirt, White Rockstar Camo Aged T-Shirt, LSUR Aged T-Shirt, Rebel Radio Aged T-Shirt, Channel X Aged T-Shirt, Albany Vintage Aged T-Shirt, Benefactor Aged T-Shirt, Bravado Aged T-Shirt, Declasse Aged T-Shirt, Dinka Aged T-Shirt
	unlock_packed_bools(30563, 30693) --Panther Varsity Jacket Closed, Panther Tour Jacket, Broker Prolaps Basketball Top, Panic Prolaps Basketball Top, Gussét Frog T-Shirt, Warped Still Slipping T-Shirt, Yellow Still Slipping T-Shirt, Black Rockstar T-Shirt, Black Exsorbeo 720 Logo T-Shirt, Manor PRBG T-Shirt, Manor Tie-dye T-Shirt, Open Wheel Sponsor T-Shirt, Rockstar Yellow Pattern T-Shirt, Rockstar Gray Pattern T-Shirt, Rockstar Rolling T-Shirt, Santo Capra Patterns Sweater, Rockstar Studio Colors Sweater, Bigness Jackal Sweater, Bigness Tie-dye Sweater, Bigness Faces Sweater, Broker Prolaps Basketball Shorts, Panic Prolaps Basketball Shorts, Exsorbeo 720 Sports Shorts, Bigness Tie-dye Sports Pants, Enus Yeti Forwards Cap, 720 Forwards Cap, Exsorbeo 720 Forwards Cap, Güffy Double Logo Forwards Cap, Rockstar Forwards Cap, Blue Bangles (L), Red Bangles (L), Pink Bangles (L), Yellow Bangles (L), Orange Bangles (L), Green Bangles (L), Red & Blue Bangles (L), Yellow & Orange Bangles (L), Green & Pink Bangles (L), Rainbow Bangles (L), Sunset Bangles (L), Tropical Bangles (L), Blue & Pink Glow Shades, Red Glow Shades, Orange Glow Shades, Yellow Glow Shades, Green Glow Shades, Blue Glow Shades, Pink Glow Shades, Blue & Magenta Glow Shades, Purple & Yellow Glow Shades, Blue & Yellow Glow Shades, Pink & Yellow Glow Shades, Red & Yellow Glow Shades, Blue Glow Necklace, Red Glow Necklace, Pink Glow Necklace, Yellow Glow Necklace, Orange Glow Necklace, Green Glow Necklace, Festival Glow Necklace, Carnival Glow Necklace, Tropical Glow Necklace, Hot Glow Necklace, Neon Glow Necklace, Party Glow Necklace, Sunset Glow Necklace, Radiant Glow Necklace, Sunrise Glow Necklace, Session Glow Necklace, Combat Shotgun, Perico Pistol, White Keinemusik T-Shirt, Blue Keinemusik T-Shirt, Moodymann T-Shirt, Palms Trax T-Shirt, Midnight Tint Oversize Shades, Sunset Tint Oversize Shades, Black Tint Oversize Shades, Blue Tint Oversize Shades, Gold Tint Oversize Shades, Green Tint Oversize Shades, Orange Tint Oversize Shades, Red Tint Oversize Shades, Pink Tint Oversize Shades, Yellow Tint Oversize Shades, Lemon Tint Oversize Shades, Gold Rimmed Oversize Shades, White Checked Round Shades, Pink Checked Round Shades, Yellow Checked Round Shades, Red Checked Round Shades, White Round Shades, Black Round Shades, Pink Tinted Round Shades, Blue Tinted Round Shades, Green Checked Round Shades, Blue Checked Round Shades, Orange Checked Round Shades, Green Tinted Round Shades, Brown Square Shades, Yellow Square Shades, Black Square Shades, Tortoiseshell Square Shades, Green Square Shades, Red Square Shades, Pink Tinted Square Shades, Blue Tinted Square Shades, White Square Shades, Pink Square Shades, All White Square Shades, Mono Square Shades, Green Calavera Mask, Navy Calavera Mask, Cherry Calavera Mask, Orange Calavera Mask, Purple Calavera Mask, Dark Blue Calavera Mask, Lavender Calavera Mask, Yellow Calavera Mask, Pink Calavera Mask, Neon Stitch Emissive Mask, Vibrant Stitch Emissive Mask, Pink Stitch Emissive Mask, Blue Stitch Emissive Mask, Neon Skull Emissive Mask, Vibrant Skull Emissive Mask, Pink Skull Emissive Mask, Orange Skull Emissive Mask, Dark X-Ray Emissive Mask, Bright X-Ray Emissive Mask, Purple X-Ray Emissive Mask
	unlock_packed_bools(30699, 30704) --Palms Trax LS T-Shirt, Moodymann Whatupdoe T-Shirt, Moodymann Big D T-Shirt, Keinemusik Cayo Perico T-Shirt, Still Slipping Blarneys T-Shirt, Still Slipping Friend T-Shirt
	unlock_packed_bools(31708, 31714) --CircoLoco Records - Blue EP, CircoLoco Records - Green EP, CircoLoco Records - Violet EP, CircoLoco Records - Black EP, Moodymann - Kenny's Backyard Boogie, NEZ - You Wanna?, NEZ ft. Schoolboy Q - Let's Get It
	unlock_packed_bools(31736, 31736) --The Frontier Outfit
	unlock_packed_bools(31755, 31755) --Auto Shop Race 'n Chase
	unlock_packed_bools(31760, 31764) --Faces of Death T-Shirt, Straight to Video T-Shirt, Monkey See Monkey Die T-Shirt, Trained to Kill T-Shirt, The Director T-Shirt
	unlock_packed_bools(31766, 31777) --Sprunk Forwards Cap, eCola Forwards Cap, Black Banshee T-Shirt, Blue Banshee T-Shirt, LS Customs T-Shirt, Rockstar Games Typeface T-Shirt, Wasted! T-Shirt, Baseball Bat T-Shirt, Knuckleduster T-Shirt, Rampage T-Shirt, Penitentiary Coveralls, LS Customs Coveralls
	unlock_packed_bools(31779, 31796) --The Ringleader Outfit, The Knuckles Outfit, The Breaker Outfit, The Dealer Outfit, Bearsy, Banshee Hoodie, eCola Varsity, Sprunk Varsity, LS Customs Varsity, LS Customs Tour Jacket, eCola Bodysuit, Sprunk Bodysuit, Sprunk Chute Bag, eCola Chute Bag, Halloween Chute Bag, Sprunk Chute, eCola Chute, Halloween Chute
	unlock_packed_bools(31805, 31808) --The Old Hand Outfit, The Overworked Outfit, The Longshoreman Outfit, The Underpaid Outfit
	unlock_packed_bools(31810, 31824) --Annis ZR350, Pfister Comet S2, Dinka Jester RR, Emperor Vectre, Ubermacht Cypher, Pfister Growler, Karin Calico GTF, Annis Remus, Vapid Dominator ASP, Karin Futo GTX, Dinka RT3000, Vulcar Warrener HKR, Karin Sultan RS Classic, Vapid Dominator GTT, Karin Previon
	unlock_packed_bools(31826, 31858) --Emperor Forwards Cap / Emperor Backwards Cap, Beige Knit Sneakers, Gray Emperor Classic Hoodie, Pursuit Series (Gameplay), Cyan Check Sleeveless Puffer, Dinka SPL (Wheel Mod), Blue Hayes Retro Racing, White Emperor Motors T-Shirt, Quick Fix (Gameplay), Cyan Check Puffer, Euros - Speed Trail (Livery), Never Barcode Print Hoodie, Hayes Modern Racing, Diversion (Gameplay), Gray Leather Bomber, Futo GTX - Chokusen Dorifuto (Livery), Karin Forwards Cap / Karin Backwards Cap, Cream Knit Sneakers, Private Takeover (Gameplay), Yellow Pfister Hoodie, Retro Turbofan (Wheel Mod), Red Check Sleeveless Puffer, White Hayes Retro Racing, Setup (Gameplay), Navy Emperor Motors T-Shirt, RT3000 - Stance Andreas (Livery), Red Check Puffer, Never Triangle Print Hoodie, Wingman (Gameplay), LTD Modern Racing, Jester RR - 10 Minute Car (Livery), Green Crowex Pro Racing Suit, Mustard Tan Leather Bomber
	unlock_packed_bools(31860, 31863) --Omnis Forwards Cap / Omnis Backwards Cap, Conical Turbofan (Wheel Mod), Black Knit Sneakers, Green Emperor Classic Hoodie
	unlock_packed_bools(31865, 31868) --Green Geo Sleeveless Puffer, ZR350 - Atomic Drift Team (Livery), White Globe Oil Retro Racing, Yellow Annis Rally T-Shirt
	unlock_packed_bools(31870, 31928) --Green Geo Puffer, Warrener HKR - Classic Vulcar (Livery), Life ZigZag Print Hoodie, Blue Dinka Modern Racing, Gray Benefactor Racing Suit, Orange Tan Leather Bomber, Ice Storm (Wheel Mod), Annis Forwards Cap / Annis Backwards Cap, Gray & Purple Knit Sneakers, Black Crowex Pro Racing Suit, Gray Pfister Hoodie, Calico GTF - Fukaru Rally (Livery), Black Geo Sleeveless Puffer, Green Crowex Retro Racing, Blue Xero Gas Racing Suit, Blue Annis Noise T-Shirt, Remus - Blue Lightning (Livery), Black Geo Puffer, Life Static Print Hoodie, Dark Benefactor Racing Suit, Red Dinka Modern Racing, Super Turbine (Wheel Mod), Chestnut Tan Leather Bomber, Vapid Forwards Cap / Vapid Backwards Cap, Red Xero Gas Racing Suit, Gray & Magenta Knit Sneakers, Dominator GTT - Oldschool Oval (Livery), Black Vapid Ellie Hoodie, Cream Bigness Sleeveless Puffer, Wildstyle Racing Suit, Red Globe Oil Retro Racing, Tailgater S - Crevis Race (Livery), Light Dinka T-Shirt, Cream Bigness Puffer, Modern Mesh (Wheel Mod), Never Crosshair Print Hoodie, Euros - Drift Tribe (Livery), Yellow Vapid Modern Racing, Dark Tan Leather Bomber, Forged Star (Wheel Mod), Light Dinka Forwards Cap / Light Dinka Backwards Cap, Futo GTX - Drift King (Livery), Gray & Aqua Knit Sneakers, Gray Karin Hoodie, Showflake (Wheel Mod), Purple Bigness Sleeveless Puffer, RT3000 - Atomic Motorsport (Livery), Black Crowex Retro Racing, Black Annis Noise T-Shirt, Giga Mesh (Wheel Mod), Purple Bigness Puffer, Jester RR - Yogarishima (Livery), Hiding Print Hoodie, Ubermacht Modern Racing, Mesh Meister (Wheel Mod), Ox Blood Leather Bomber, ZR350 - Kisama Chevrons (Livery), Dark Dinka Forwards Cap / Dark Dinka Backwards Cap, White & Pink Knit Sneakers
	unlock_packed_bools(31930, 31933) --Navy Vapid Ellie Hoodie, Warrener HKR - Classic Vulcar Alt (Livery), Green Aztec Sleeveless Puffer, Calico GTF - Disruption Rally (Livery)
	unlock_packed_bools(31935, 31938) --Blue Atomic Retro Racing, Remus - Annis Tech (Livery), Dark Dinka T-Shirt, Dominator GTT - Resto Mod Racer (Livery)
	unlock_packed_bools(31940, 31943) --Green Aztec Puffer, Tailgater S - Redwood (Livery), Life Binary Print Hoodie, Euros - King Scorpion (Livery)
	unlock_packed_bools(31945, 31948) --White Güffy Modern Racing, Futo GTX - Tandem Battle (Livery), Dark Nut Leather Bomber, RT3000 - Dinka Performance (Livery)
	unlock_packed_bools(31950, 31953) --White Güffy Forwards Cap / White Güffy Backwards Cap, Jester RR - Fuque (Livery), Gray & Yellow Knit Sneakers, ZR350 - Winning is Winning (Livery)
	unlock_packed_bools(31955, 31958) --Navy Karin Hoodie, Warrener HKR - Redwood Racing (Livery), Black Aztec Sleeveless Puffer, Calico GTF - Redwood Rally (Livery)
	unlock_packed_bools(31960, 31963) --Yellow Atomic Retro Racing, Remus - Atomic Motorsport (Livery), Light Vapid Ellie T-Shirt, Dominator GTT - Flame On (Livery)
	unlock_packed_bools(31965, 31968) --Black Aztec Puffer, Tailgater S - Disruption Logistics (Livery), Lucky Penny Print Hoodie, Euros - Sprunk Light (Livery)
	unlock_packed_bools(31970, 31973) --Black Güffy Modern Racing, Futo GTX - Itasha Drift (Livery), Navy Blue Leather Bomber, RT3000 - Shiny Wasabi Kitty (Livery)
	unlock_packed_bools(31975, 31978) --Black Güffy Forwards Cap / Black Güffy Backwards Cap, Jester RR - Xero Gas Rally (Livery), Grayscale Knit Sneakers, ZR350 - Annis Racing Tribal (Livery)
	unlock_packed_bools(31980, 31983) --Light Obey Hoodie, Warrener HKR - Vulcar Turbo (Livery), Cream Splinter Sleeveless Puffer, Calico GTF - Prolaps Rally (Livery)
	unlock_packed_bools(31985, 31988) --Blue Redwood Retro Racing, Remus - Shiny Wasabi Kitty (Livery), Dark Vapid Ellie T-Shirt, Dominator GTT - The Patriot (Livery)
	unlock_packed_bools(31990, 31993) --Cream Splinter Puffer, Tailgater S - Colored Camo Livery (Livery), Light Dinka Modern Racing, Euros - Candybox Gold (Livery)
	unlock_packed_bools(31995, 31998) --Dark Green Leather Bomber, Futo GTX - Stance Andreas (Livery), Hellion Forwards Cap / Hellion Backwards Cap, RT3000 - Total Fire (Livery)
	unlock_packed_bools(32000, 32003) --Gray & Cyan Knit Sneakers, Jester RR - Split Siberia (Livery), Black Ubermacht Hoodie, ZR350 - Annis Racing Tribal Alt (Livery)
	unlock_packed_bools(32005, 32008) --Dark Splinter Sleeveless Puffer, Warrener HKR - Vulcar Turbo Alt (Livery), White Logo Ruiner T-Shirt, Calico GTF - Xero Gas Rally (Livery)
	unlock_packed_bools(32010, 32013) --Dark Splinter Puffer, Remus - Fukaru Motorsport (Livery), Dark Dinka Modern Racing, Dominator GTT - 70s Street Machine (Livery)
	unlock_packed_bools(32015, 32018) --White Leather Bomber, Tailgater S - Army Camo Solid (Livery), Lampadati Forwards Cap / Lampadati Backwards Cap, Lilac Knit Sneakers
	unlock_packed_bools(32020, 32023) --Dark Obey Hoodie, Green Latin Sleeveless Puffer, Gray Vapid Truck T-Shirt, Green Latin Puffer
	unlock_packed_bools(32025, 32028) --Blue Bravado Modern Racing, Red Leather Bomber, White Knit Sneakers, Red Ubermacht Hoodie
	unlock_packed_bools(32030, 32033) --Black Latin Sleeveless Puffer, White Obey Omnis T-Shirt, Black Latin Puffer, Black Bravado Modern Racing
	unlock_packed_bools(32035, 32038) --Ice Knit Sneakers, Blue Annis Noise Hoodie, Orange Camo Sleeveless Puffer, Light Blue Vapid Truck T-Shirt
	unlock_packed_bools(32040, 32043) --Orange Camo Puffer, Imponte Modern Racing, Aqua Sole Knit Sneakers, Green Emperor Modern Hoodie
	unlock_packed_bools(32045, 32048) --Aqua Camo Sleeveless Puffer, Black Vapid USA T-Shirt, Aqua Camo Puffer, Xero Modern Racing
	unlock_packed_bools(32050, 32053) --Smoky Knit Sneakers, Gray Annis Noise Hoodie, Gradient Sleeveless Puffer, Red Obey Omnis T-Shirt
	unlock_packed_bools(32055, 32058) --Gradient Puffer, White & Gold Knit Sneakers, Dark Emperor Modern Hoodie, Red Logo Ruiner T-Shirt
	unlock_packed_bools(32060, 32063) --Orange Knit Sneakers, Light Dinka Hoodie, Blue Bravado Gauntlet T-Shirt, Pink Vibrant Knit Sneakers
	unlock_packed_bools(32065, 32074) --Gold Lampadati Hoodie, Black Bravado Gauntlet T-Shirt, Lime Highlight Knit Sneakers, Dark Dinka Hoodie, Pfister Pocket T-Shirt, Purple Fade Knit Sneakers, Karin 90s T-Shirt, Teal Knit Sneakers, Black & Lime Knit Sneakers, Cyan Fade Knit Sneakers
	unlock_packed_bools(32084, 32084) --Red Highlight Knit Sneakers
	unlock_packed_bools(32094, 32094) --Broker Forwards Cap / Broker Backwards Cap
	unlock_packed_bools(32104, 32104) --Annis Hellion 4x4 T-Shirt
	unlock_packed_bools(32114, 32114) --Pink Gradient Sleeveless Puffer
	unlock_packed_bools(32124, 32124) --Fade Broker Modern Racing
	unlock_packed_bools(32134, 32134) --Tricolor Lampadati Hoodie
	unlock_packed_bools(32144, 32144) --Mono Leather Bomber
	unlock_packed_bools(32154, 32154) --Pink Gradient Puffer
	unlock_packed_bools(32164, 32164) --Red Redwood Retro Racing
	unlock_packed_bools(32174, 32174) --Crash Out Print Hoodie
	unlock_packed_bools(32224, 32224) --Tuned For Speed Racing Suit
	unlock_packed_bools(32319, 32323) --police5 trade price
	unlock_packed_bools(34262, 34361) --LD Organics
	unlock_packed_bools(32273, 32273) --White Born x Raised T-Shirt
	unlock_packed_bools(32275, 32275) --Circoloco T-Shirt
	unlock_packed_bools(32287, 32287) --Dr. Dre
	unlock_packed_bools(32295, 32311) --Orange Goldfish, Purple Goldfish, Bronze Goldfish, Clownfish, Juvenile Gull, Sooty Gull, Black-headed Gull, Herring Gull, Brown Sea Lion, Dark Sea Lion, Spotted Sea Lion, Gray Sea Lion, Green Festive T-Shirt, Red Festive T-Shirt, Orange DJ Pooh T-Shirt, White WCC DJ Pooh T-Shirt, Blue WCC DJ Pooh T-Shirt
	unlock_packed_bools(32315, 32316) --Navy Coveralls, Gray Coveralls, Marathon Hoodie
	unlock_packed_bools(32366, 32366) --Declasse Draugur (Trade Price)
	unlock_packed_bools(32407, 32408) --Bottom Dollar Jacket, The Bottom Dollar
	unlock_packed_bools(34372, 34375) --Horror Pumpkin, Dinka Kanjo SJ (Trade Price), Dinka Postlude (Trade Price), Black LD Organics Cap / White LD Organics T-Shirt
	unlock_packed_bools(34378, 34411) --Junk Energy Chute Bag, Junk Energy Chute, Pumpkin T-Shirt, Pacific Standard Varsity, Pacific Standard Sweater, Cliffford Varsity, Cliffford Hoodie, The Diamond Casino Varsity, The Diamond Strike Vest, Strickler Hat, Sinsimito Cuban Shirt, CLO_E1M_O_MUM, Manor Geo Forwards Cap, Apricot Perseus Forwards Cap, Still Slipping Tie-dye Forwards Cap, Lemon Festive Beer Hat, Bigness Hand-drawn Dome, Grimy Stitched, Pale Stitched, Gray Cracked Puppet, Blushed Cracked Puppet, Green Emissive Lady Liberty, President, Gold Beat Off Earphones, White Spiked Gauntlet (L), Manor Geo Hoodie, Pumpkin Hoodie, LS Smoking Jacket, Hand-Drawn Biker Bomber, Have You Seen Me? Sweater, Still Slipping Tie-dye T-Shirt, Manor Geo Track Pants, Apricot Perseus Track Pants, Sasquatch
	unlock_packed_bools(34415, 34510) --Green Vintage Frank, Brown Vintage Frank, Gray Vintage Frank, Pale Vintage Mummy, Green Vintage Mummy, Weathered Vintage Mummy, Conquest, Death, Famine, War, Black Tech Demon, Gray Tech Demon, White Tech Demon, Green Tech Demon, Orange Tech Demon, Purple Tech Demon, Pink Tech Demon, Red Detail Tech Demon, Blue Detail Tech Demon, Yellow Detail Tech Demon, Green Detail Tech Demon, Pink Detail Tech Demon, Orange & Gray Tech Demon, Red Tech Demon, Camo Tech Demon, Aqua Camo Tech Demon, Brown Digital Tech Demon, Gold Tech Demon, Orange & Cream Tech Demon, Green & Yellow Tech Demon, Pink Floral Tech Demon, Black & Green Tech Demon, White & Red Tech Demon, Carbon Tech Demon, Carbon Teal Tech Demon, Black & White Tech Demon, Painted Tiger, Gray Painted Tiger, Gold Painted Tiger, Ornate Painted Tiger, Gray Yeti Flat Cap, Woodland Yeti Flat Cap, Green FB Flat Cap, Blue FB Flat Cap, Gray Lézard Flat Cap, Green Lézard Flat Cap, Light Plaid Lézard Flat Cap, Dark Plaid Lézard Flat Cap, White Striped Lézard Flat Cap, Red Striped Lézard Flat Cap, Brown Crevis Flat Cap, Gray Crevis Flat Cap, Black Broker Flat Cap, Burgundy Broker Flat Cap, White Beat Off Earphones, Yellow Beat Off Earphones, Salmon Beat Off Earphones, Orange Beat Off Earphones, Purple Beat Off Earphones, Pink Beat Off Earphones, Turquoise Beat Off Earphones, Blue Beat Off Earphones, Black Beat Off Earphones, Gray Beat Off Earphones, Teal Beat Off Earphones, Red Beat Off Earphones, Wild Striped Pool Sliders, Neon Striped Pool Sliders, Black SC Coin Pool Sliders, White SC Coin Pool Sliders, Black SC Pattern Pool Sliders, Pink SC Pattern Pool Sliders, Blue SC Pattern Pool Sliders, Camo Yeti Pool Sliders, Gray Camo Yeti Pool Sliders, Black Bigness Pool Sliders, Purple Bigness Pool Sliders, Camo Bigness Pool Sliders, Black Blagueurs Pool Sliders, White Blagueurs Pool Sliders, Pink Blagueurs Pool Sliders, Gray Cimicino Pool Sliders, Rouge Cimicino Pool Sliders, Navy DS Pool Sliders, Red DS Pool Sliders, Floral Güffy Pool Sliders, Green Güffy Pool Sliders, White Güffy Pool Sliders, Blue Heat Pool Sliders, Red ProLaps Pool Sliders, Black LD Organics T-Shirt, Green UFO Boxer Shorts, White UFO Boxer Shorts, Gray Believe Backwards Cap, Black Believe Backwards Cap, Glow Believe Backwards Cap
	unlock_packed_bools(34703, 34705) --White Vintage Vampire, Dark Green Vintage Vampire, Light Green Vintage Vampire
	unlock_packed_bools(34730, 34737) --Green Festive Beer Hat, Red Snowflake Beer Hat, Blue Snowflake Beer Hat, Red Holly Beer Hat, Pisswasser Festive Beer Hat, Blarneys Festive Beer Hat, Red Reindeer Beer Hat, Borfmas Beer Hat
	unlock_packed_bools(34761, 34761) --Gooch Outfit
	unlock_packed_bools(36630, 36654) --Snowman
	unlock_packed_bools(36699, 36770) --Ice Vinyl, Ice Vinyl Cut, Mustard Vinyl, Mustard Vinyl Cut, Dark Blue Vinyl, Dark Blue Vinyl Cut, Yellow SN Rooster Revere Collar, Red SC Dragon Revere Collar, Blue SC Dragon Revere Collar, Camo Roses Slab Denim, Orange Trickster Type Denim, Black VDG Cardigan, Blue DS Panthers Cardigan, Red DS Panthers Cardigan, Pink SC Baroque Cardigan, Downtown Cab Co. Revere Collar, Valentines Blazer, 420 Smoking Jacket, Yeti Year of the Rabbit T-Shirt, Gray Yeti Combat Shirt, Black Sprunk Festive, Dark Logger Festive, White Logger Festive, Green Logger Festive, Red Logger Festive, Blue Patriot Logo Festive, Black Patriot Logo Festive, Blue Patriot Festive, Red Patriot Festive, Red Pisswasser Festive, Gold Pisswasser Festive, Red Pisswasser Logo Festive, Gold Pisswasser Logo Festive, Green Pride Brew Festive, Yellow Pride Brew Festive, Yellow Holly Pride Festive, White Holly Pride Festive, Sprunk Snowflakes Festive, Broker Checkerboard T-Shirt, Yeti Ape Tucked T-Shirt, Black Bigness Ski, White Bigness Ski, Black Enema Flourish Ski, Teal Enema Flourish Ski, Magenta Enema Flourish Ski, Camo Roses Slab Forwards, Lime Leopard Slab Forwards, Red SC Dragon Embroidered, Classic DS Tiger Embroidered, Gray DS Tiger Embroidered, Black VDG Bandana Wide, Orange Trickster Type Wide, Gray Yeti Battle Pants, Broker Checkerboard Cargos, 420 Smoking Pants, Camo Roses Slab Canvas, Lime Leopard Slab Canvas, White Signs Squash Ugglies & Socks, Traditional Painted Rabbit, Twilight Painted Rabbit, Noh Painted Rabbit, Lime SC Coin Wraps, Pink SC Coin Wraps, Tan Bracelet Ensemble, Red Manor Round Brow Shades, Le Chien Whistle Necklace, Heartbreak Pendant, Rabbit, Budonk-adonk!, The Red-nosed, The Nutcracker, The GoPostal
	unlock_packed_bools(36774, 36788) --Johnny On The Spot Polo, The Gooch Mask, Snowman Outfit, Gold New Year Glasses, Silver New Year Glasses, Rainbow New Year Glasses, Yellow Holly Beer Hat, Green Reindeer Beer Hat, Zebra Dome, Purple Snakeskin Spiked, Manor Surano Jacket, Pistol Mk II - Season's Greetings (Livery), Pump Shotgun - Dildodude Camo (Livery), Micro SMG - Dildodude Camo (Livery)
	unlock_packed_bools(36809, 36809) --Nemesis T-Shirts
	unlock_packed_bools(41316, 41325) --Ghosts Exposed
	unlock_packed_bools(41593, 41593) --The Merryweather Outfit
	unlock_packed_bools(41656, 41659) --Squaddie (Trade Price), Suede Bucks Finish, Employee of the Month Finish, Uncle T Finish
	unlock_packed_bools(41671, 41671) --Manchez Scout (Trade Price)
	unlock_packed_bools(41802, 41802) --Johnny On The Spot Polo
	unlock_packed_bools(41894, 41894) --Hinterland Work T-Shirt
	unlock_packed_bools(41897, 41902) --Love Fist T-Shirt, San Andreas Federal Reserve T-Shirt, Los Santos, San Andreas T-Shirt, Heist Mask T-Shirt, Los Santos Map T-Shirt, PRB T-Shirt
	unlock_packed_bools(41915, 41980) --LS Pounders Cap, Vom Feuer Camo Cap, Western MC Cap, Red & White Ammu-Nation Cap, Santo Capra Cap, Alpine Hat, Alien Tracksuit Pants, Scarlet Vintage Devil Mask, Amber Vintage Devil Mask, Green Vintage Devil Mask, Green Vintage Witch Mask, Yellow Vintage Witch Mask, Orange Vintage Witch Mask, Green Vintage Skull Mask, White Vintage Skull Mask, Brown Vintage Skull Mask, Orange Vintage Werewolf Mask, Blue Vintage Werewolf Mask, Brown Vintage Werewolf Mask, Green Vintage Zombie Mask, Brown Vintage Zombie Mask, Teal Vintage Zombie Mask, Turkey Mask, Royal Calacas Mask, Maritime Calacas Mask, Romance Calacas Mask, Floral Calacas Mask, Stanier LE Cruiser (Trade Price), The Homie, The Retired Criminal, The Groupie, Black SC Ornate Mini Dress, Dark Manor Racing Suit, Bright Manor Racing Suit, Hinterland Bomber Jacket, Red Happy Moon T-Shirt, Black Happy Moon T-Shirt, White Happy Moon T-Shirt, Rockstar Says Relax Tucked T-Shirt, Trevor Heist Mask Tucked T-Shirt, Franklin Heist Mask Tucked T-Shirt, Michael Heist Mask Tucked T-Shirt, Bugstars Tucked T-Shirt, STD Contractors Tucked T-Shirt, Black Los Santos Tucked T-Shirt, San Andreas Republic Tucked T-Shirt, Go Go Space Monkey Tucked T-Shirt, Vom Feuer Camo Tucked T-Shirt, Black SC Ornate Tucked T-Shirt, Warstock Tucked T-Shirt, Western San Andreas Tucked T-Shirt, Ride or Die Tucked T-Shirt, Bourgeoix Tucked T-Shirt, Blêuter'd Tucked T-Shirt, Cherenkov Tucked T-Shirt, Moodymann Portrait Tucked T-Shirt, Rockstar Silver Jubilee Tucked T-Shirt, Rockstar NY Hoodie, Dollar Daggers Hoodie, Merryweather Hoodie, Go Go Space Monkey Hoodie, Rockstar Lion Crest T-Shirt, Ammu-Nation Baseball T-Shirt, Alien Hooded Tracksuit Top, Manor Benefactor Surano T-Shirt, LS Smoking Jacket
	unlock_packed_bools(41994, 41994) --Junk Energy Racing Suit
	unlock_packed_bools(41996, 41996) --??? T-Shirt
	unlock_packed_bools(42054, 42054) --Strapz Bandana
	unlock_packed_bools(42063, 42063) --The LS Panic
	unlock_packed_bools(42068, 42069) --Snowman Finish, Santa's Helper Finish
	unlock_packed_bools(42111, 42111) --The Coast Guard
	unlock_packed_bools(42119, 42123) --Yeti Outfit, Snowman Finish, Santa's Helper Finish, Skull Santa Finish, riot unlocked
	unlock_packed_bools(42125, 42125) --riot trade price
	unlock_packed_bools(42128, 42146) --eCola Festive Sweater, Sprunk Festive Sweater, 1 Party Hat, 2 Party Hat, 3 Party Hat, 4 Party Hat, 5 Party Hat, 6 Party Hat, 7 Party Hat, 8 Party Hat, 9 Party Hat, 10 Party Hat, 11 Party Hat, 12 Party Hat, 13 Party Hat, 14 Party Hat, 15 Party Hat, Bronze Party Outfit, Silver Party Outfit
	unlock_packed_bools(42148, 42149) --Snowball Launcher, DâM-FunK - Even the Score
	unlock_packed_bools(42152, 42190) --The LSDS, The McTony Security, Wooden Dragon Mask, Contrast Dragon Mask, Regal Dragon Mask, Midnight Dragon Mask, Pink Heart Shades, Red Heart Shades, Orange Heart Shades, Yellow Heart Shades, Green Heart Shades, Blue Heart Shades, Purple Heart Shades, Black Heart Shades, Fireworks Bucket Hat, Stars and Stripes Bucket Hat, Lady Liberty Bucket Hat, Green Festive Tree Hat, Red Festive Tree Hat, Brown Festive Reindeer Hat, White Festive Reindeer Hat, Bronze New Year's Hat, Gold New Year's Hat, Silver New Year's Hat, Sprunk x eCola Bodysuit, Rockstar Racing Suit, Rockstar Helmet, Coil Earth Day Tee, IR Earth Day Tee, White High Brass Tee, Black High Brass Tee, Black Lunar New Year Tee, Bigness Carnival Sports Tee, Green 420 Dress, Red Lunar New Year Dress, Carnival Sun Dress, Carnival Bandana, Bigness Carnival Bucket Hat, Black 420 Forwards Cap
	unlock_packed_bools(42217, 42217) --Cluckin' Bell Forwards Cap
	unlock_packed_bools(42233, 42234) --BOXVILLE6, BENSON2
	unlock_packed_bools(42239, 42242) --CAVALCADE3, IMPALER5, POLGAUNTLET, DORADO
	unlock_packed_bools(42244, 42247) --BALLER8, TERMINUS, BOXVILLE6, BENSON2
	unlock_packed_bools(42249, 42249) --Candy Cane
	unlock_packed_bools(42280, 42284) --Unlock pizzaboy, poldominator10, poldorado, polimpaler5, polimpaler6 trade price.
	unlock_packed_bools(42257, 42268) --The Street Artist, Ghosts Exposed 2024, Ghosts Exposed Outfit
	unlock_packed_bools(42286, 42287) --Ludendorff Survivor, Pizza This... Forwards Cap, Pizza This... Backwards Cap, Pizza This... Outfit
	unlock_packed_bools(51189, 51189) -- Spray Can
	unlock_packed_bools(51196, 51197) --The Shocker, Bottom Dollar Bail Enforcement tint for Stungun
	unlock_packed_bools(51215, 51258) --Alpine Outfit, Brown Alpine Hat, Pisswasser Good Time Tee, Gold Pisswasser Shorts, Mid Autumn Festival Shirt, Mid Autumn Festival Sundress (female), Día de Muertos Tee, Halloween Spooky Tee, Black Demon Goat Mask, Red Demon Goat Mask, Tan Demon Goat Mask, Black Creepy Cat Mask, Gray Creepy Cat Mask, Brown Creepy Cat Mask, Gray Hooded Skull Mask, Red Hooded Skull Mask, Blue Hooded Skull Mask, Red Flaming Skull Mask, Green Flaming Skull Mask, Orange Flaming Skull Mask, Orange Glow Skeleton Onesie, Purple Glow Skeleton Onesie, Green Glow Skeleton Onesie, Tan Turkey, Brown Turkey, Rockstar Red Logo Sweater, Silver Gun Necklace, Black Gun Necklace, Gold Gun Necklace, Rose Gun Necklace, Bronze Gun Necklace, Black Yeti Fall Sweater, White Yeti Fall Sweater, Red Yeti Fall Sweater, The Diamond Jackpot Tee, Cobalt Jackal Racing Jersey, Cobalt Jackal Racing Pants, Khaki 247 Chino Pants, Demon Biker Jacket, Purple Güffy Cardigan, SA Denim Biker Jacket, Green 247 Shirt, Barbed Wire Shirt, Ride or Die Gaiter, Pizza This... Tee
	if is_player_male then
		unlock_packed_bools(3483, 3492) --Death Defying T-Shirt (Male), For Hire T-Shirt (Male), Gimme That T-Shirt (Male), Asshole T-Shirt (Male), Can't Touch This T-Shirt (Male), Decorated T-Shirt (Male), Psycho Killer T-Shirt (Male), One Man Army T-Shirt (Male), Shot Caller T-Shirt (Male), Showroom T-Shirt (Male)
		unlock_packed_bools(6082, 6083) --Black Benny's T-Shirt, White Benny's T-Shirt
		unlock_packed_bools(6097, 6097) --I Heart LC (T-Shirt) (Male)
		unlock_packed_bools(6169, 6169) --DCTL T-Shirt (Male)
		unlock_packed_bools(6303, 6304) --Crosswalk Tee (Male), R* Crosswalk Tee (Male)
		unlock_packed_bools(15708, 15708) --Black The Black Madonna Emb. Tee (Male)
		unlock_packed_bools(15710, 15710) --The Black Madonna Star Tee (Male)
		unlock_packed_bools(15717, 15717) --White Dixon Repeated Logo Tee (Male)
		unlock_packed_bools(15720, 15720) --Black Dixon Wilderness Tee (Male)
		unlock_packed_bools(15724, 15724) --Tale Of Us Black Box Tee (Male)
		unlock_packed_bools(15728, 15728) --Black Tale Of Us Emb. Tee (Male)
		unlock_packed_bools(15730, 15730) --Black Solomun Yellow Logo Tee (Male)
		unlock_packed_bools(15732, 15732) --White Solomun Tee (Male)
		unlock_packed_bools(15737, 15737) --??? (Tattoo) (Male)
		unlock_packed_bools(15887, 15887) --Lucky 7s (Tattoo) (Male)
		unlock_packed_bools(15894, 15894) --The Royals (Tattoo) (Male)
		unlock_packed_bools(28393, 28416) --Badlands Revenge II Retro Tee (Male), Badlands Revenge II Pixtro Tee (Male), Degenatron Glitch Tee (Male), Degenatron Logo Tee (Male), The Wizard's Ruin Rescue Tee (Male), The Wizard's Ruin Vow Tee (Male), Space Monkey Art Tee (Male), Crotch Rockets Tee (Male), Street Legal Tee (Male), Get Truckin' Tee (Male), Arcade Trophy Tee (Male), Videogeddon Tee (Male), Insert Coin Tee (Male), Plushie Princess Tee (Male), Plushie Wasabi Kitty Tee (Male), Plushie Master Tee (Male), Plushie Muffy Tee (Male), Plushie Humpy Tee (Male), Plushie Saki Tee (Male), Plushie Grindy Tee (Male), Plushie Poopie Tee (Male), Plushie Smoker Tee (Male), Shiny Wasabi Kitty Claw Tee (Male), Nazar Speaks Tee (Male)
		unlock_packed_bools(28447, 28451) --11 11 Tee (Male), King Of QUB3D Tee (Male), Qubism Tee (Male), God Of QUB3D Tee (Male), QUB3D Boxart Tee (Male)
		unlock_packed_bools(28452, 28478) --Channel X Aged Tee (Male), Rebel Radio Aged Tee (Male), LSUR Aged Tee (Male), Steel Horse Solid Logo Aged Tee (Male), Black Western Logo Aged Tee (Male), White Nagasaki Aged Tee (Male), Black Principe Aged Tee (Male), Albany Vintage Aged Tee (Male), Benefactor Aged Tee (Male), Bravado Aged Tee (Male), Declasse Aged Tee (Male), Dinka Aged Tee (Male), Grotti Aged Tee (Male), Lampadati Aged Tee (Male), Ocelot Aged Tee (Male), Overflod Aged Tee (Male), Pegassi Aged Tee (Male), Pfister Aged Tee (Male), Vapid Aged Tee (Male), Weeny Aged Tee (Male), Toe Shoes Aged T-Shirt (Male), Vanilla Unicorn Aged T-Shirt (Male), Fake Vapid Aged T-Shirt (Male), I Married My Dad Aged T-Shirt (Male), White Rockstar Camo Aged Tee (Male), Razor Aged T-Shirt (Male), Noise Rockstar Logo Aged Tee (Male)
		unlock_packed_bools(30355, 30361) --Noise Aged Tee (Male), Emotion 98.3 Aged T-Shirt (Male), KDST Aged T-Shirt (Male), KJAH Radio Aged T-Shirt (Male), Bounce FM Aged T-Shirt (Male), K-Rose Aged T-Shirt (Male), Blue The Diamond Resort LS Aged Tee (Male)
		unlock_packed_bools(30407, 30410) --White Keinemusik Tee (Male), Blue Keinemusik Tee (Male), Moodymann Tee (Male), Palms Trax Tee (Male)
		unlock_packed_bools(30418, 30422) --Faces of Death Tee (Male), Straight to Video Tee (Male), Monkey See Monkey Die Tee (Male), Trained to Kill Tee (Male), The Director Tee (Male)
		unlock_packed_bools(41273, 41284) --Monkey (Tattoo) (Male), Dragon (Tattoo) (Male), Snake (Tattoo) (Male), Goat (Tattoo) (Male), Rat (Tattoo) (Male), Rabbit (Tattoo) (Male), Ox (Tattoo) (Male), Pig (Tattoo) (Male), Rooster (Tattoo) (Male), Dog (Tattoo) (Male), Horse (Tattoo) (Male), Tiger (Tattoo) (Male)
		unlock_packed_bools(41293, 41293) --Hinterland Work T-Shirt (Male)
	else
		unlock_packed_bools(3496, 3505) --Death Defying Top (Female), For Hire Top (Female), Gimme That Top (Female), Asshole Top (Female), Can't Touch This Top (Female), Decorated Top (Female), Psycho Killer Top (Female), One Man Army Top (Female), Shot Caller Top (Female), Showroom Top (Female)
		unlock_packed_bools(6091, 6092) --Black Benny's T-Shirt, White Benny's T-Shirt
		unlock_packed_bools(6106, 6106) --I Heart LC (T-Shirt) (Female)
		unlock_packed_bools(6181, 6181) --DCTL T-Shirt (Female)
		unlock_packed_bools(6316, 6317) --Crosswalk Tee (Female), R* Crosswalk Tee (Female)
		unlock_packed_bools(15719, 15719) --Black The Black Madonna Emb. Tee (Female)
		unlock_packed_bools(15721, 15721) --The Black Madonna Star Tee (Female)
		unlock_packed_bools(15728, 15728) --White Dixon Repeated Logo Tee (Female)
		unlock_packed_bools(15731, 15731) --Black Dixon Wilderness Tee (Female)
		unlock_packed_bools(15735, 15735) --Tale Of Us Black Box Tee (Female)
		unlock_packed_bools(15739, 15739) --Black Tale Of Us Emb. Tee (Female)
		unlock_packed_bools(15741, 15741) --Black Solomun Yellow Logo Tee (Female)
		unlock_packed_bools(15743, 15743) --White Solomun Tee (Female)
		unlock_packed_bools(15748, 15748) --??? (Tattoo) (Female)
		unlock_packed_bools(15898, 15898) --Lucky 7s (Tattoo) (Female)
		unlock_packed_bools(15905, 15905) --The Royals (Tattoo) (Female)
		unlock_packed_bools(28404, 28427) --Badlands Revenge II Retro Tee (Female), Badlands Revenge II Pixtro Tee (Female), Degenatron Glitch Tee (Female), Degenatron Logo Tee (Female), The Wizard's Ruin Rescue Tee (Female), The Wizard's Ruin Vow Tee (Female), Space Monkey Art Tee (Female), Crotch Rockets Tee (Female), Street Legal Tee (Female), Get Truckin' Tee (Female), Arcade Trophy Tee (Female), Videogeddon Tee (Female), Insert Coin Tee (Female), Plushie Princess Tee (Female), Plushie Wasabi Kitty Tee (Female), Plushie Master Tee (Female), Plushie Muffy Tee (Female), Plushie Humpy Tee (Female), Plushie Saki Tee (Female), Plushie Grindy Tee (Female), Plushie Poopie Tee (Female), Plushie Smoker Tee (Female), Shiny Wasabi Kitty Claw Tee (Female), Nazar Speaks Tee (Female)
		unlock_packed_bools(28458, 28462) --11 11 Tee (Female), King Of QUB3D Tee (Female), Qubism Tee (Female), God Of QUB3D Tee (Female), QUB3D Boxart Tee (Female)
		unlock_packed_bools(28463, 28478) --Channel X Aged Tee (Female), Rebel Radio Aged Tee (Female), LSUR Aged Tee (Female), Steel Horse Solid Logo Aged Tee (Female), Black Western Logo Aged Tee (Female), White Nagasaki Aged Tee (Female), Black Principe Aged Tee (Female), Albany Vintage Aged Tee (Female), Benefactor Aged Tee (Female), Bravado Aged Tee (Female), Declasse Aged Tee (Female), Dinka Aged Tee (Female), Grotti Aged Tee (Female), Lampadati Aged Tee (Female), Ocelot Aged Tee (Female), Overflod Aged Tee (Female)
		unlock_packed_bools(30418, 30421) --White Keinemusik Tee (Female), Blue Keinemusik Tee (Female), Moodymann Tee (Female), Palms Trax Tee (Female)
		unlock_packed_bools(30355, 30372) --Pegassi Aged Tee (Female), Pfister Aged Tee (Female), Vapid Aged Tee (Female), Weeny Aged Tee (Female), Toe Shoes Aged T-Shirt (Female), Vanilla Unicorn Aged T-Shirt (Female), Fake Vapid Aged T-Shirt (Female), I Married My Dad Aged T-Shirt (Female), White Rockstar Camo Aged Tee (Female), Razor Aged T-Shirt (Female), Noise Rockstar Logo Aged Tee (Female), Noise Aged Tee (Female), Emotion 98.3 Aged T-Shirt (Female), KDST Aged T-Shirt (Female), KJAH Radio Aged T-Shirt (Female), Bounce FM Aged T-Shirt (Female), K-Rose Aged T-Shirt (Female), Blue The Diamond Resort LS Aged Tee (Female)
		unlock_packed_bools(30429, 30433) --Faces of Death Tee (Female), Straight to Video Tee (Female), Monkey See Monkey Die Tee (Female), Trained to Kill Tee (Female), The Director Tee (Female)
		unlock_packed_bools(41285, 41296) --Monkey (Tattoo) (Female), Dragon (Tattoo) (Female), Snake (Tattoo) (Female), Goat (Tattoo) (Female), Rat (Tattoo) (Female), Rabbit (Tattoo) (Female), Ox (Tattoo) (Female), Pig (Tattoo) (Female), Rooster (Tattoo) (Female), Dog (Tattoo) (Female), Horse (Tattoo) (Female), Tiger (Tattoo) (Female)
		unlock_packed_bools(41304, 41304) --Hinterland Work T-Shirt (Female)
	end
	stats.set_int(MPX() .. "GANGOPS_FLOW_MISSION_PROG", 240)
	stats.set_int(MPX() .. "GANGOPS_HEIST_STATUS", 229378)
	stats.set_int(MPX() .. "GANGOPS_FLOW_NOTIFICATIONS", 1557)
	stats.set_int(MPX() .. "GANGOPS_FLOW_MISSION_PROG", 240)
	stats.set_int(MPX() .. "GANGOPS_HEIST_STATUS", 229378)
	stats.set_int(MPX() .. "GANGOPS_FLOW_NOTIFICATIONS", 1557)
	stats.set_int(MPX() .. "GANGOPS_FLOW_MISSION_PROG", 16368)
	stats.set_int(MPX() .. "GANGOPS_HEIST_STATUS", 229380)
	stats.set_int(MPX() .. "GANGOPS_FLOW_NOTIFICATIONS", 1557)
	stats.set_int(MPX() .. "FIXER_GENERAL_BS", -1)
	stats.set_int(MPX() .. "FIXER_COMPLETED_BS", -1)
	stats.set_int(MPX() .. "FIXER_STORY_BS", -1)
	stats.set_int(MPX() .. "FIXER_STORY_STRAND", -1)
	stats.set_int(MPX() .. "FIXER_STORY_COOLDOWN", -1)
	stats.set_int(MPX() .. "FIXER_SC_VEH_RECOVERED", 100)
	stats.set_int(MPX() .. "FIXER_SC_VAL_RECOVERED", 100)
	stats.set_int(MPX() .. "FIXER_SC_GANG_TERMINATED", 100)
	stats.set_int(MPX() .. "FIXER_SC_VIP_RESCUED", 100)
	stats.set_int(MPX() .. "FIXER_SC_ASSETS_PROTECTED", 100)
	stats.set_int(MPX() .. "FIXER_SC_EQ_DESTROYED", 100)
	stats.set_int(MPX() .. "FIXER_COUNT", 500)
	stats.set_int(MPX() .. "FIXER_EARNINGS", 26340756)
	stats.set_int(MPX() .. "PAYPHONE_BONUS_KILL_METHOD", -1)
	stats.set_int("MPPLY_XMASLIVERIES0", -1)
	stats.set_int("MPPLY_XMASLIVERIES1", -1)
	stats.set_int("MPPLY_XMASLIVERIES2", -1)
	stats.set_int("MPPLY_XMASLIVERIES3", -1)
	stats.set_int("MPPLY_XMASLIVERIES5", -1)
	stats.set_int("MPPLY_XMASLIVERIES6", -1)
	stats.set_int("MPPLY_XMASLIVERIES7", -1)
	stats.set_int("MPPLY_XMASLIVERIES8", -1)
	stats.set_int("MPPLY_XMASLIVERIES9", -1)
	stats.set_int("MPPLY_XMASLIVERIES10", -1)
	stats.set_int("MPPLY_XMASLIVERIES11", -1)
	stats.set_int("MPPLY_XMASLIVERIES12", -1)
	stats.set_int("MPPLY_XMASLIVERIES13", -1)
	stats.set_int("MPPLY_XMASLIVERIES14", -1)
	stats.set_int("MPPLY_XMASLIVERIES15", -1)
	stats.set_int("MPPLY_XMASLIVERIES16", -1)
	stats.set_int("MPPLY_XMASLIVERIES17", -1)
	stats.set_int("MPPLY_XMASLIVERIES18", -1)
	stats.set_int("MPPLY_XMASLIVERIES19", -1)
	stats.set_int("MPPLY_XMASLIVERIES20", -1)
	stats.set_int(MPX() .. "AWD_WATCH_YOUR_STEP", 15)
	stats.set_int(MPX() .. "AWD_TOWER_OFFENSE", 15)
	stats.set_int(MPX() .. "AWD_READY_FOR_WAR", 60)
	stats.set_int(MPX() .. "AWD_THROUGH_A_LENS", 60)
	stats.set_int(MPX() .. "AWD_SPINNER", 60)
	stats.set_int(MPX() .. "AWD_YOUMEANBOOBYTRAPS", 15)
	stats.set_int(MPX() .. "AWD_MASTER_BANDITO", 12)
	stats.set_int(MPX() .. "AWD_SITTING_DUCK", 60)
	stats.set_int(MPX() .. "AWD_CROWDPARTICIPATION", 60)
	stats.set_int(MPX() .. "AWD_KILL_OR_BE_KILLED", 60)
	stats.set_int(MPX() .. "AWD_MASSIVE_SHUNT", 60)
	stats.set_int(MPX() .. "AWD_YOURE_OUTTA_HERE", 110)
	stats.set_int(MPX() .. "AWD_WEVE_GOT_ONE", 52)
	stats.set_int(MPX() .. "AWD_TIME_SERVED", 110)
	stats.set_int(MPX() .. "AWD_CAREER_WINNER", 110)
	stats.set_int(MPX() .. "AWD_ARENA_WAGEWORKER", 1100000)
	stats.set_int(MPX() .. "CH_ARC_CAB_CLAW_TROPHY", -1)
	stats.set_int(MPX() .. "CH_ARC_CAB_LOVE_TROPHY", -1)
	stats.set_int(MPX() .. "AWD_PREPARATION", 40)
	stats.set_int(MPX() .. "AWD_ASLEEPONJOB", 20)
	stats.set_int(MPX() .. "AWD_DAICASHCRAB", 100000)
	stats.set_int(MPX() .. "AWD_BIGBRO", 40)
	stats.set_int(MPX() .. "AWD_SHARPSHOOTER", 40)
	stats.set_int(MPX() .. "AWD_RACECHAMP", 40)
	stats.set_int(MPX() .. "AWD_BATSWORD", 1000000)
	stats.set_int(MPX() .. "AWD_COINPURSE", 950000)
	stats.set_int(MPX() .. "AWD_ASTROCHIMP", 3000000)
	stats.set_int(MPX() .. "AWD_MASTERFUL", 40000)
	stats.set_int(MPX() .. "SCGW_NUM_WINS_GANG_0", 50)
	stats.set_int(MPX() .. "SCGW_NUM_WINS_GANG_1", 50)
	stats.set_int(MPX() .. "SCGW_NUM_WINS_GANG_2", 50)
	stats.set_int(MPX() .. "SCGW_NUM_WINS_GANG_3", 50)
	stats.set_int(MPX() .. "IAP_MA0_MOON_DIST", 2147483647)
	stats.set_int(MPX() .. "AWD_FACES_OF_DEATH", 50)
	stats.set_int(MPX() .. "HEIST_PLANNING_STAGE", -1)
	stats.set_int(MPX() .. "LIFETIME_BKR_SELL_EARNINGS5", 50000000)
	stats.set_int(MPX() .. "VCM_FLOW_PROGRESS", -1)
	stats.set_int(MPX() .. "VCM_STORY_PROGRESS", -1)
	stats.set_int(MPX() .. "MKRIFLE_MK2_KILLS", 500)
	stats.set_int(MPX() .. "MKRIFLE_MK2_DEATHS", 100)
	stats.set_int(MPX() .. "MKRIFLE_MK2_SHOTS", 500)
	stats.set_int(MPX() .. "MKRIFLE_MK2_HITS", 500)
	stats.set_int(MPX() .. "MKRIFLE_MK2_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MKRIFLE_MK2_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MKRIFLE_MK2_DB_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MKRIFLE_MK2_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "AWD_ODD_JOBS", 52)
	stats.set_int(MPX() .. "AWD_PREPARATION", 50)
	stats.set_int(MPX() .. "AWD_ASLEEPONJOB", 20)
	stats.set_int(MPX() .. "AWD_DAICASHCRAB", 100000)
	stats.set_int(MPX() .. "AWD_BIGBRO", 40)
	stats.set_int(MPX() .. "HIGHEST_SKITTLES", 900)
	stats.set_int(MPX() .. "NUMBER_NEAR_MISS", 1000)
	stats.set_int(MPX() .. "LAP_DANCED_BOUGHT", 100)
	stats.set_int(MPX() .. "CARS_EXPLODED", 500)
	stats.set_int(MPX() .. "CARS_COPS_EXPLODED", 300)
	stats.set_int(MPX() .. "BIKES_EXPLODED", 100)
	stats.set_int(MPX() .. "BOATS_EXPLODED", 168)
	stats.set_int(MPX() .. "HELIS_EXPLODED", 98)
	stats.set_int(MPX() .. "PLANES_EXPLODED", 138)
	stats.set_int(MPX() .. "QUADBIKE_EXPLODED", 50)
	stats.set_int(MPX() .. "BICYCLE_EXPLODED", 48)
	stats.set_int(MPX() .. "SUBMARINE_EXPLODED", 28)
	stats.set_int(MPX() .. "DEATHS", 499)
	stats.set_int(MPX() .. "DIED_IN_DROWNING", 833)
	stats.set_int(MPX() .. "DIED_IN_DROWNINGINVEHICLE", 833)
	stats.set_int(MPX() .. "DIED_IN_EXPLOSION", 833)
	stats.set_int(MPX() .. "DIED_IN_FALL", 833)
	stats.set_int(MPX() .. "DIED_IN_FIRE", 833)
	stats.set_int(MPX() .. "DIED_IN_ROAD", 833)
	stats.set_int(MPX() .. "NO_PHOTOS_TAKEN", 100)
	stats.set_int(MPX() .. "PROSTITUTES_FREQUENTED", 100)
	stats.set_int(MPX() .. "BOUNTSONU", 200)
	stats.set_int(MPX() .. "BOUNTPLACED", 500)
	stats.set_int(MPX() .. "PASS_DB_KILLS", 300)
	stats.set_int(MPX() .. "PASS_DB_PLAYER_KILLS", 300)
	stats.set_int(MPX() .. "PASS_DB_SHOTS", 300)
	stats.set_int(MPX() .. "PASS_DB_HITS", 300)
	stats.set_int(MPX() .. "PASS_DB_HITS_PEDS_VEHICLES", 300)
	stats.set_int(MPX() .. "PASS_DB_HEADSHOTS", 300)
	stats.set_int(MPX() .. "TIRES_POPPED_BY_GUNSHOT", 500)
	stats.set_int(MPX() .. "NUMBER_CRASHES_CARS", 300)
	stats.set_int(MPX() .. "NUMBER_CRASHES_BIKES", 300)
	stats.set_int(MPX() .. "BAILED_FROM_VEHICLE", 300)
	stats.set_int(MPX() .. "NUMBER_CRASHES_QUADBIKES", 300)
	stats.set_int(MPX() .. "NUMBER_STOLEN_COP_VEHICLE", 300)
	stats.set_int(MPX() .. "NUMBER_STOLEN_CARS", 300)
	stats.set_int(MPX() .. "NUMBER_STOLEN_BIKES", 300)
	stats.set_int(MPX() .. "NUMBER_STOLEN_BOATS", 300)
	stats.set_int(MPX() .. "NUMBER_STOLEN_HELIS", 300)
	stats.set_int(MPX() .. "NUMBER_STOLEN_PLANES", 300)
	stats.set_int(MPX() .. "NUMBER_STOLEN_QUADBIKES", 300)
	stats.set_int(MPX() .. "NUMBER_STOLEN_BICYCLES", 300)
	stats.set_int(MPX() .. "FAVOUTFITBIKETIMECURRENT", 884483972)
	stats.set_int(MPX() .. "FAVOUTFITBIKETIME1ALLTIME", 884483972)
	stats.set_int(MPX() .. "FAVOUTFITBIKETYPECURRENT", 884483972)
	stats.set_int(MPX() .. "FAVOUTFITBIKETYPEALLTIME", 884483972)
	stats.set_int(MPX() .. "MC_CONTRIBUTION_POINTS", 1000)
	stats.set_int(MPX() .. "MEMBERSMARKEDFORDEATH", 700)
	stats.set_int(MPX() .. "MCKILLS", 500)
	stats.set_int(MPX() .. "MCDEATHS", 700)
	stats.set_int(MPX() .. "RIVALPRESIDENTKILLS", 700)
	stats.set_int(MPX() .. "RIVALCEOANDVIPKILLS", 700)
	stats.set_int(MPX() .. "MELEEKILLS", 700)
	stats.set_int(MPX() .. "CLUBHOUSECONTRACTSCOMPLETE", 700)
	stats.set_int(MPX() .. "CLUBHOUSECONTRACTEARNINGS", 32698547)
	stats.set_int(MPX() .. "CLUBCHALLENGESCOMPLETED", 700)
	stats.set_int(MPX() .. "MEMBERCHALLENGESCOMPLETED", 700)
	stats.set_int(MPX() .. "HITS", 100000)
	stats.set_int(MPX() .. "MKRIFLE_KILLS", 500)
	stats.set_int(MPX() .. "MKRIFLE_DEATHS", 100)
	stats.set_int(MPX() .. "MKRIFLE_SHOTS", 500)
	stats.set_int(MPX() .. "MKRIFLE_HITS", 500)
	stats.set_int(MPX() .. "MKRIFLE_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MKRIFLE_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MKRIFLE_DB_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MKRIFLE_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BETAMOUNT", 500)
	stats.set_int(MPX() .. "GHKILLS", 500)
	stats.set_int(MPX() .. "HORDELVL", 10)
	stats.set_int(MPX() .. "HORDKILLS", 500)
	stats.set_int(MPX() .. "UNIQUECRATES", 500)
	stats.set_int(MPX() .. "BJWINS", 500)
	stats.set_int(MPX() .. "HORDEWINS", 500)
	stats.set_int(MPX() .. "MCMWINS", 500)
	stats.set_int(MPX() .. "GANGHIDWINS", 500)
	stats.set_int(MPX() .. "KILLS", 800)
	stats.set_int(MPX() .. "HITS_PEDS_VEHICLES", 100)
	stats.set_int(MPX() .. "SHOTS", 1000)
	stats.set_int(MPX() .. "HEADSHOTS", 100)
	stats.set_int(MPX() .. "KILLS_ARMED", 650)
	stats.set_int(MPX() .. "SUCCESSFUL_COUNTERS", 100)
	stats.set_int(MPX() .. "KILLS_PLAYERS", 3593)
	stats.set_int(MPX() .. "DEATHS_PLAYER", 1002)
	stats.set_int(MPX() .. "KILLS_STEALTH", 100)
	stats.set_int(MPX() .. "KILLS_INNOCENTS", 500)
	stats.set_int(MPX() .. "KILLS_ENEMY_GANG_MEMBERS", 100)
	stats.set_int(MPX() .. "KILLS_FRIENDLY_GANG_MEMBERS", 100)
	stats.set_int(MPX() .. "KILLS_BY_OTHERS", 100)
	stats.set_int(MPX() .. "HITS", 600)
	stats.set_int(MPX() .. "BIGGEST_VICTIM_KILLS", 500)
	stats.set_int(MPX() .. "ARCHENEMY_KILLS", 500)
	stats.set_int(MPX() .. "CRARMWREST", 500)
	stats.set_int(MPX() .. "CRBASEJUMP", 500)
	stats.set_int(MPX() .. "CRDARTS", 500)
	stats.set_int(MPX() .. "CRDM", 500)
	stats.set_int(MPX() .. "CRGANGHIDE", 500)
	stats.set_int(MPX() .. "CRGOLF", 500)
	stats.set_int(MPX() .. "CRHORDE", 500)
	stats.set_int(MPX() .. "CRMISSION", 500)
	stats.set_int(MPX() .. "CRSHOOTRNG", 500)
	stats.set_int(MPX() .. "CRTENNIS", 500)
	stats.set_int(MPX() .. "TOTAL_TIME_CINEMA", 2147483647)
	stats.set_int(MPX() .. "NO_TIMES_CINEMA", 500)
	stats.set_int(MPX() .. "TIME_AS_A_PASSENGER", 2147483647)
	stats.set_int(MPX() .. "TIME_AS_A_DRIVER", 2147483647)
	stats.set_int(MPX() .. "TIME_SPENT_FLYING", 2147483647)
	stats.set_int(MPX() .. "TIME_IN_CAR", 2147483647)
	stats.set_int(MPX() .. "LIFETIME_BKR_SELL_UNDERTABC", 500)
	stats.set_int(MPX() .. "LIFETIME_BKR_SELL_COMPLETBC", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S1_0", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S2_0", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S3_0", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_BUY_UNDERTA1", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_BUY_COMPLET1", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_SELL_UNDERTA1", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_SELL_COMPLET1", 500)
	stats.set_int(MPX() .. "LIFETIME_BKR_SEL_UNDERTABC1", 500)
	stats.set_int(MPX() .. "LIFETIME_BKR_SEL_COMPLETBC1", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S1_1", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S2_1", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S3_1", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_BUY_UNDERTA2", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_BUY_COMPLET2", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_SELL_UNDERTA2", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_SELL_COMPLET2", 500)
	stats.set_int(MPX() .. "LIFETIME_BKR_SEL_UNDERTABC2", 500)
	stats.set_int(MPX() .. "LIFETIME_BKR_SEL_COMPLETBC2", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S1_2", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S2_2", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S3_2", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_BUY_UNDERTA3", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_BUY_COMPLET3", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_SELL_UNDERTA3", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_SELL_COMPLET3", 500)
	stats.set_int(MPX() .. "LIFETIME_BKR_SEL_UNDERTABC3", 500)
	stats.set_int(MPX() .. "LIFETIME_BKR_SEL_COMPLETBC3", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S1_3", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S2_3", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S3_3", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_BUY_UNDERTA4", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_BUY_COMPLET4", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_SELL_UNDERTA4", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_SELL_COMPLET4", 500)
	stats.set_int(MPX() .. "LIFETIME_BKR_SEL_UNDERTABC4", 500)
	stats.set_int(MPX() .. "LIFETIME_BKR_SEL_COMPLETBC4", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S1_4", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S2_4", 500)
	stats.set_int(MPX() .. "BKR_PROD_STOP_COUT_S3_4", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_BUY_UNDERTA5", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_BUY_COMPLET5", 500)
	stats.set_int(MPX() .. "LIFETIME_BKR_SEL_UNDERTABC5", 500)
	stats.set_int(MPX() .. "LIFETIME_BKR_SEL_COMPLETBC5", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_SELL_UNDERTA5", 500)
	stats.set_int(MPX() .. "LFETIME_BIKER_SELL_COMPLET5", 500)
	stats.set_int(MPX() .. "BUNKER_UNITS_MANUFAC", 500)
	stats.set_int(MPX() .. "LFETIME_HANGAR_BUY_UNDETAK", 500)
	stats.set_int(MPX() .. "LFETIME_HANGAR_BUY_COMPLET", 500)
	stats.set_int(MPX() .. "LFETIME_HANGAR_SEL_UNDETAK", 500)
	stats.set_int(MPX() .. "LFETIME_HANGAR_SEL_COMPLET", 500)
	stats.set_int(MPX() .. "LFETIME_HANGAR_EARNINGS", 29654123)
	stats.set_int(MPX() .. "LFETIME_HANGAR_EARN_BONUS", 15987456)
	stats.set_int(MPX() .. "RIVAL_HANGAR_CRATES_STOLEN", 500)
	stats.set_int(MPX() .. "LFETIME_IE_STEAL_STARTED", 500)
	stats.set_int(MPX() .. "LFETIME_IE_EXPORT_STARTED", 500)
	stats.set_int(MPX() .. "LFETIME_IE_EXPORT_COMPLETED", 500)
	stats.set_int(MPX() .. "LFETIME_IE_MISSION_EARNINGS", 59654897)
	stats.set_int(MPX() .. "AT_FLOW_IMPEXP_NUM", 500)
	stats.set_int(MPX() .. "CLUB_POPULARITY", 1000)
	stats.set_int(MPX() .. "NIGHTCLUB_VIP_APPEAR", 300)
	stats.set_int(MPX() .. "NIGHTCLUB_JOBS_DONE", 500)
	stats.set_int(MPX() .. "NIGHTCLUB_EARNINGS", 39856412)
	stats.set_int(MPX() .. "HUB_SALES_COMPLETED", 500)
	stats.set_int(MPX() .. "HUB_EARNINGS", 29865423)
	stats.set_int(MPX() .. "DANCE_COMBO_DURATION_MINS", 86400000)
	stats.set_int(MPX() .. "NIGHTCLUB_PLAYER_APPEAR", 500)
	stats.set_int(MPX() .. "LIFETIME_HUB_GOODS_SOLD", 500)
	stats.set_int(MPX() .. "LIFETIME_HUB_GOODS_MADE", 500)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_1", -1)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_10", -1)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_11", -1)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_12", -1)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_2", -1)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_3", -1)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_4", -1)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_5", -1)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_6", -1)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_7", -1)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_8", -1)
	stats.set_int(MPX() .. "ADMIN_CLOTHES_GV_BS_9", -1)
	stats.set_int(MPX() .. "ADMIN_WEAPON_GV_BS_1", -1)
	stats.set_int(MPX() .. "AIR_LAUNCHES_OVER_40M", 25)
	stats.set_int(MPX() .. "AWD_5STAR_WANTED_AVOIDANCE", 50)
	stats.set_int(MPX() .. "AWD_CAR_BOMBS_ENEMY_KILLS", 25)
	stats.set_int(MPX() .. "AWD_CARS_EXPORTED", 50)
	stats.set_int(MPX() .. "AWD_CONTROL_CROWDS", 25)
	stats.set_int(MPX() .. "AWD_DAILYOBJCOMPLETED", 100)
	stats.set_int(MPX() .. "AWD_DO_HEIST_AS_MEMBER", 25)
	stats.set_int(MPX() .. "AWD_DO_HEIST_AS_THE_LEADER", 25)
	stats.set_int(MPX() .. "AWD_DROPOFF_CAP_PACKAGES", 100)
	stats.set_int(MPX() .. "AWD_FINISH_HEIST_SETUP_JOB", 50)
	stats.set_int(MPX() .. "AWD_FINISH_HEISTS", 50)
	stats.set_int(MPX() .. "AWD_FM_DM_3KILLSAMEGUY", 50)
	stats.set_int(MPX() .. "AWD_FM_DM_KILLSTREAK", 100)
	stats.set_int(MPX() .. "AWD_FM_DM_STOLENKILL", 50)
	stats.set_int(MPX() .. "AWD_FM_DM_TOTALKILLS", 500)
	stats.set_int(MPX() .. "AWD_FM_DM_WINS", 50)
	stats.set_int(MPX() .. "AWD_FM_GOLF_HOLE_IN_1", 300)
	stats.set_int(MPX() .. "AWD_FM_GOLF_BIRDIES", 25)
	stats.set_int(MPX() .. "AWD_FM_GOLF_WON", 25)
	stats.set_int(MPX() .. "AWD_FM_GTA_RACES_WON", 50)
	stats.set_int(MPX() .. "AWD_FM_RACE_LAST_FIRST", 25)
	stats.set_int(MPX() .. "AWD_FM_RACES_FASTEST_LAP", 50)
	stats.set_int(MPX() .. "AWD_FM_SHOOTRANG_CT_WON", 25)
	stats.set_int(MPX() .. "AWD_FM_SHOOTRANG_RT_WON", 25)
	stats.set_int(MPX() .. "AWD_FM_SHOOTRANG_TG_WON", 25)
	stats.set_int(MPX() .. "AWD_FM_TDM_MVP", 50)
	stats.set_int(MPX() .. "AWD_FM_TDM_WINS", 50)
	stats.set_int(MPX() .. "AWD_FM_TENNIS_ACE", 25)
	stats.set_int(MPX() .. "AWD_FM_TENNIS_WON", 25)
	stats.set_int(MPX() .. "AWD_FMBASEJMP", 25)
	stats.set_int(MPX() .. "AWD_FMBBETWIN", 50000)
	stats.set_int(MPX() .. "AWD_FMCRATEDROPS", 25)
	stats.set_int(MPX() .. "AWD_FMDRIVEWITHOUTCRASH", 30)
	stats.set_int(MPX() .. "AWD_FMHORDWAVESSURVIVE", 10)
	stats.set_int(MPX() .. "AWD_FMKILLBOUNTY", 25)
	stats.set_int(MPX() .. "AWD_FMRALLYWONDRIVE", 25)
	stats.set_int(MPX() .. "AWD_FMRALLYWONNAV", 25)
	stats.set_int(MPX() .. "AWD_FMREVENGEKILLSD", 50)
	stats.set_int(MPX() .. "AWD_FMSHOOTDOWNCOPHELI", 25)
	stats.set_int(MPX() .. "AWD_FMWINAIRRACE", 25)
	stats.set_int(MPX() .. "AWD_FMWINRACETOPOINTS", 25)
	stats.set_int(MPX() .. "AWD_FMWINSEARACE", 25)
	stats.set_int(MPX() .. "AWD_HOLD_UP_SHOPS", 20)
	stats.set_int(MPX() .. "AWD_KILL_CARRIER_CAPTURE", 100)
	stats.set_int(MPX() .. "AWD_KILL_PSYCHOPATHS", 100)
	stats.set_int(MPX() .. "AWD_KILL_TEAM_YOURSELF_LTS", 25)
	stats.set_int(MPX() .. "AWD_LAPDANCES", 25)
	stats.set_int(MPX() .. "AWD_LESTERDELIVERVEHICLES", 25)
	stats.set_int(MPX() .. "AWD_MENTALSTATE_TO_NORMAL", 50)
	stats.set_int(MPX() .. "AWD_NIGHTVISION_KILLS", 100)
	stats.set_int(MPX() .. "AWD_NO_HAIRCUTS", 25)
	stats.set_int(MPX() .. "AWD_ODISTRACTCOPSNOEATH", 25)
	stats.set_int(MPX() .. "AWD_ONLY_PLAYER_ALIVE_LTS", 50)
	stats.set_int(MPX() .. "AWD_PARACHUTE_JUMPS_20M", 25)
	stats.set_int(MPX() .. "AWD_PARACHUTE_JUMPS_50M", 25)
	stats.set_int(MPX() .. "AWD_PASSENGERTIME", 4)
	stats.set_int(MPX() .. "AWD_PICKUP_CAP_PACKAGES", 100)
	stats.set_int(MPX() .. "AWD_RACES_WON", 50)
	stats.set_int(MPX() .. "AWD_SECURITY_CARS_ROBBED", 25)
	stats.set_int(MPX() .. "AWD_TAKEDOWNSMUGPLANE", 50)
	stats.set_int(MPX() .. "AWD_TIME_IN_HELICOPTER", 4)
	stats.set_int(MPX() .. "AWD_TRADE_IN_YOUR_PROPERTY", 25)
	stats.set_int(MPX() .. "AWD_VEHICLES_JACKEDR", 500)
	stats.set_int(MPX() .. "AWD_WIN_AT_DARTS", 25)
	stats.set_int(MPX() .. "AWD_WIN_CAPTURE_DONT_DYING", 25)
	stats.set_int(MPX() .. "AWD_WIN_CAPTURES", 50)
	stats.set_int(MPX() .. "AWD_WIN_GOLD_MEDAL_HEISTS", 25)
	stats.set_int(MPX() .. "AWD_WIN_LAST_TEAM_STANDINGS", 50)
	stats.set_int(MPX() .. "BOTTLE_IN_POSSESSION", -1)
	stats.set_int(MPX() .. "CHAR_FM_CARMOD_1_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CARMOD_2_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CARMOD_3_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CARMOD_4_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CARMOD_5_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CARMOD_6_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CARMOD_7_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_VEHICLE_1_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_VEHICLE_2_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_1_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_2_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_3_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_4_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_5_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_UNLOCKED", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_UNLOCKED2", -1)
	stats.set_int(MPX() .. "CHAR_KIT_1_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_2_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_3_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_4_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_5_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_6_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_7_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_8_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_9_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_10_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_11_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_12_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_13_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_14_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_15_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_16_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_17_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_18_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_19_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_20_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_21_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_22_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_23_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_24_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_25_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_26_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_27_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_28_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_29_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_30_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_30_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_31_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_32_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_33_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_34_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_35_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_36_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_37_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_38_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_39_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_40_FM_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_KIT_41_FM_UNLCK", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_0", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_1", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_2", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_3", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_4", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_5", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_6", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_7", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_8", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_9", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_10", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_11", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_12", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_13", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_14", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_15", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_16", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_17", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_18", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_19", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_20", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_21", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_22", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_23", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_24", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_25", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_26", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_27", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_28", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_29", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_30", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_31", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_32", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_33", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_34", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_35", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_36", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_37", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_38", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_39", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_40", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_41", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_42", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_43", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_44", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_45", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_46", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_47", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_48", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_49", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_50", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_51", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_52", -1)
	stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_53", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE10", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE11", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE12", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE2", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE3", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE4", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE5", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE6", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE7", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE8", -1)
	stats.set_int(MPX() .. "CHAR_KIT_FM_PURCHASE9", -1)
	stats.set_int(MPX() .. "CHAR_WANTED_LEVEL_TIME5STAR", -1)
	stats.set_int(MPX() .. "CHAR_WEAP_FM_PURCHASE", -1)
	stats.set_int(MPX() .. "CHAR_WEAP_FM_PURCHASE2", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_BERD", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_BERD_1", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_BERD_2", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_BERD_3", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_BERD_4", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_BERD_5", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_BERD_6", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_DECL", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_FEET", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_FEET_1", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_FEET_2", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_FEET_3", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_FEET_4", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_FEET_5", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_FEET_6", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_FEET_7", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_JBIB", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_JBIB_1", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_JBIB_2", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_JBIB_3", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_JBIB_4", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_JBIB_5", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_JBIB_6", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_JBIB_7", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_LEGS", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_LEGS_1", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_LEGS_2", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_LEGS_3", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_LEGS_4", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_LEGS_5", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_LEGS_6", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_LEGS_7", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_OUTFIT", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_PROPS", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_PROPS_1", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_PROPS_10", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_PROPS_2", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_PROPS_3", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_PROPS_4", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_PROPS_5", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_PROPS_6", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_PROPS_7", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_PROPS_8", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_PROPS_9", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_SPECIAL", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_SPECIAL2", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_SPECIAL2_1", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_SPECIAL_1", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_SPECIAL_2", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_SPECIAL_3", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_SPECIAL_4", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_SPECIAL_5", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_SPECIAL_6", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_SPECIAL_7", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_TEETH", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_TEETH_1", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_TEETH_2", -1)
	stats.set_int(MPX() .. "CLTHS_ACQUIRED_TORSO", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_BERD", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_BERD_1", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_BERD_2", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_BERD_3", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_BERD_4", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_BERD_5", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_BERD_6", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_BERD_7", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_DECL", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_FEET", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_FEET_1", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_FEET_2", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_FEET_3", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_FEET_4", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_FEET_5", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_FEET_6", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_FEET_7", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_HAIR", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_HAIR_1", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_HAIR_2", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_HAIR_3", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_HAIR_4", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_HAIR_5", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_HAIR_6", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_HAIR_7", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_JBIB", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_JBIB_1", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_JBIB_2", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_JBIB_3", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_JBIB_4", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_JBIB_5", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_JBIB_6", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_JBIB_7", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_LEGS", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_LEGS_1", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_LEGS_2", -1)
	stats.set_int(MPX() .. "CHAR_CREWUNLOCK_1_FM_EQUIP", -1)
	stats.set_int(MPX() .. "CHAR_CREWUNLOCK_2_FM_EQUIP", -1)
	stats.set_int(MPX() .. "CHAR_CREWUNLOCK_3_FM_EQUIP", -1)
	stats.set_int(MPX() .. "CHAR_CREWUNLOCK_4_FM_EQUIP", -1)
	stats.set_int(MPX() .. "CHAR_CREWUNLOCK_5_FM_EQUIP", -1)
	stats.set_int(MPX() .. "CHAR_FM_CLOTHES_1_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CLOTHES_2_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CLOTHES_3_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CLOTHES_4_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CLOTHES_5_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CLOTHES_6_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CLOTHES_7_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CLOTHES_8_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CLOTHES_9_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CLOTHES_10_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_CLOTHES_11_UNLCK", -1)
	stats.set_int(MPX() .. "SAVESTRA_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SAVESTRA_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "STROMBERG_MG_KILLS", 500)
	stats.set_int(MPX() .. "STROMBERG_MG_DEATHS", 100)
	stats.set_int(MPX() .. "STROMBERG_MG_SHOTS", 500)
	stats.set_int(MPX() .. "STROMBERG_MG_HITS", 500)
	stats.set_int(MPX() .. "STROMBERG_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "STROMBERG_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "STROMBERG_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "STROMBERG_MISS_KILLS", 500)
	stats.set_int(MPX() .. "STROMBERG_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "STROMBERG_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "STROMBERG_MISS_HITS", 500)
	stats.set_int(MPX() .. "STROMBERG_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "STROMBERG_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "STROMBERG_TORP_KILLS", 500)
	stats.set_int(MPX() .. "STROMBERG_TORP_DEATHS", 100)
	stats.set_int(MPX() .. "STROMBERG_TORP_SHOTS", 500)
	stats.set_int(MPX() .. "STROMBERG_TORP_HITS", 500)
	stats.set_int(MPX() .. "STROMBERG_TORP_HELDTIME", 5963259)
	stats.set_int(MPX() .. "STROMBERG_TORP_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "THRUSTER_MG_KILLS", 500)
	stats.set_int(MPX() .. "THRUSTER_MG_DEATHS", 100)
	stats.set_int(MPX() .. "THRUSTER_MG_SHOTS", 500)
	stats.set_int(MPX() .. "THRUSTER_MG_HITS", 500)
	stats.set_int(MPX() .. "THRUSTER_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "THRUSTER_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "THRUSTER_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "THRUSTER_MISS_KILLS", 500)
	stats.set_int(MPX() .. "THRUSTER_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "THRUSTER_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "THRUSTER_MISS_HITS", 500)
	stats.set_int(MPX() .. "THRUSTER_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "THRUSTER_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VISERIS_MG_KILLS", 500)
	stats.set_int(MPX() .. "VISERIS_MG_DEATHS", 100)
	stats.set_int(MPX() .. "VISERIS_MG_SHOTS", 500)
	stats.set_int(MPX() .. "VISERIS_MG_HITS", 500)
	stats.set_int(MPX() .. "VISERIS_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "VISERIS_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "VISERIS_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VOLATOL_MG_KILLS", 500)
	stats.set_int(MPX() .. "VOLATOL_MG_DEATHS", 100)
	stats.set_int(MPX() .. "VOLATOL_MG_SHOTS", 500)
	stats.set_int(MPX() .. "VOLATOL_MG_HITS", 500)
	stats.set_int(MPX() .. "VOLATOL_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "VOLATOL_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "VOLATOL_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MULE4_MG_KILLS", 500)
	stats.set_int(MPX() .. "MULE4_MG_DEATHS", 100)
	stats.set_int(MPX() .. "MULE4_MG_SHOTS", 500)
	stats.set_int(MPX() .. "MULE4_MG_HITS", 500)
	stats.set_int(MPX() .. "MULE4_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MULE4_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MULE4_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MULE4_MISS_KILLS", 500)
	stats.set_int(MPX() .. "MULE4_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "MULE4_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "MULE4_MISS_HITS", 500)
	stats.set_int(MPX() .. "MULE4_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MULE4_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MULE4_GL_KILLS", 500)
	stats.set_int(MPX() .. "MULE4_GL_DEATHS", 100)
	stats.set_int(MPX() .. "MULE4_GL_SHOTS", 500)
	stats.set_int(MPX() .. "MULE4_GL_HITS", 500)
	stats.set_int(MPX() .. "MULE4_GL_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MULE4_GL_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MENACER_MG_KILLS", 500)
	stats.set_int(MPX() .. "MENACER_MG_DEATHS", 100)
	stats.set_int(MPX() .. "MENACER_MG_SHOTS", 500)
	stats.set_int(MPX() .. "MENACER_MG_HITS", 500)
	stats.set_int(MPX() .. "MENACER_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MENACER_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MENACER_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MENACER_TURR_KILLS", 500)
	stats.set_int(MPX() .. "MENACER_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "MENACER_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "MENACER_TURR_HITS", 500)
	stats.set_int(MPX() .. "MENACER_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MENACER_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MENACER_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MENACER_MINI_KILLS", 500)
	stats.set_int(MPX() .. "MENACER_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "MENACER_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "MENACER_MINI_HITS", 500)
	stats.set_int(MPX() .. "MENACER_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MENACER_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MENACER_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_MG_KILLS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_MG_DEATHS", 100)
	stats.set_int(MPX() .. "OPPRESSOR2_MG_SHOTS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_MG_HITS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "OPPRESSOR2_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_CANN_KILLS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_CANN_DEATHS", 100)
	stats.set_int(MPX() .. "OPPRESSOR2_CANN_SHOTS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_CANN_HITS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_CANN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "OPPRESSOR2_CANN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_MISS_KILLS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "OPPRESSOR2_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_MISS_HITS", 500)
	stats.set_int(MPX() .. "OPPRESSOR2_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "OPPRESSOR2_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BRUISER_MG50_KILLS", 500)
	stats.set_int(MPX() .. "BRUISER_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "BRUISER_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "BRUISER_MG50_HITS", 500)
	stats.set_int(MPX() .. "BRUISER_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BRUISER_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BRUISER_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BRUISER2_MG50_KILLS", 500)
	stats.set_int(MPX() .. "BRUISER2_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "BRUISER2_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "BRUISER2_MG50_HITS", 500)
	stats.set_int(MPX() .. "BRUISER2_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BRUISER2_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BRUISER2_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BRUISER2_LAS_KILLS", 500)
	stats.set_int(MPX() .. "BRUISER2_LAS_DEATHS", 100)
	stats.set_int(MPX() .. "BRUISER2_LAS_SHOTS", 500)
	stats.set_int(MPX() .. "BRUISER2_LAS_HITS", 500)
	stats.set_int(MPX() .. "BRUISER2_LAS_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BRUISER2_LAS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BRUISER2_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BRUISER3_MG50_KILLS", 500)
	stats.set_int(MPX() .. "BRUISER3_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "BRUISER3_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "BRUISER3_MG50_HITS", 500)
	stats.set_int(MPX() .. "BRUISER3_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BRUISER3_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BRUISER3_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BRUTUS_MG50_KILLS", 500)
	stats.set_int(MPX() .. "BRUTUS_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "BRUTUS_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "BRUTUS_MG50_HITS", 500)
	stats.set_int(MPX() .. "BRUTUS_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BRUTUS_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BRUTUS2_MG50_KILLS", 500)
	stats.set_int(MPX() .. "BRUTUS2_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "BRUTUS2_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "BRUTUS2_MG50_HITS", 500)
	stats.set_int(MPX() .. "BRUTUS2_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BRUTUS2_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BRUTUS2_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BRUTUS2_LAS_KILLS", 500)
	stats.set_int(MPX() .. "BRUTUS2_LAS_DEATHS", 100)
	stats.set_int(MPX() .. "BRUTUS2_LAS_SHOTS", 500)
	stats.set_int(MPX() .. "BRUTUS2_LAS_HITS", 500)
	stats.set_int(MPX() .. "BRUTUS2_LAS_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BRUTUS2_LAS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BRUTUS2_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BRUTUS3_MG50_KILLS", 500)
	stats.set_int(MPX() .. "BRUTUS3_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "BRUTUS3_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "BRUTUS3_MG50_HITS", 500)
	stats.set_int(MPX() .. "BRUTUS3_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BRUTUS3_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BRUTUS3_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "CERBERUS_FLAME_KILLS", 500)
	stats.set_int(MPX() .. "CERBERUS_FLAME_DEATHS", 100)
	stats.set_int(MPX() .. "CERBERUS_FLAME_SHOTS", 500)
	stats.set_int(MPX() .. "CERBERUS_FLAME_HITS", 500)
	stats.set_int(MPX() .. "CERBERUS_FLAME_HEADSHOTS", 500)
	stats.set_int(MPX() .. "CERBERUS_FLAME_HELDTIME", 5963259)
	stats.set_int(MPX() .. "CERBERUS_FLAME_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "CERBERUS2_FLAME_KILLS", 500)
	stats.set_int(MPX() .. "CERBERUS2_FLAME_DEATHS", 100)
	stats.set_int(MPX() .. "CERBERUS2_FLAME_SHOTS", 500)
	stats.set_int(MPX() .. "CERBERUS2_FLAME_HITS", 500)
	stats.set_int(MPX() .. "CERBERUS2_FLAME_HEADSHOTS", 500)
	stats.set_int(MPX() .. "CERBERUS2_FLAME_HELDTIME", 5963259)
	stats.set_int(MPX() .. "CERBERUS2_FLAME_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "CERBERUS3_FLAME_KILLS", 500)
	stats.set_int(MPX() .. "CERBERUS3_FLAME_DEATHS", 100)
	stats.set_int(MPX() .. "CERBERUS3_FLAME_SHOTS", 500)
	stats.set_int(MPX() .. "CERBERUS3_FLAME_HITS", 500)
	stats.set_int(MPX() .. "CERBERUS3_FLAME_HEADSHOTS", 500)
	stats.set_int(MPX() .. "CERBERUS3_FLAME_HELDTIME", 5963259)
	stats.set_int(MPX() .. "CERBERUS3_FLAME_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DEATHBIKE_MINI_KILLS", 500)
	stats.set_int(MPX() .. "DEATHBIKE_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "DEATHBIKE_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "DEATHBIKE_MINI_HITS", 500)
	stats.set_int(MPX() .. "DEATHBIKE_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "DEATHBIKE_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DEATHBIKE_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DEATHBIKE2_LAS_KILLS", 500)
	stats.set_int(MPX() .. "DEATHBIKE2_LAS_DEATHS", 100)
	stats.set_int(MPX() .. "DEATHBIKE2_LAS_SHOTS", 500)
	stats.set_int(MPX() .. "DEATHBIKE2_LAS_HITS", 500)
	stats.set_int(MPX() .. "DEATHBIKE2_LAS_HEADSHOTS", 500)
	stats.set_int(MPX() .. "DEATHBIKE2_LAS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DEATHBIKE2_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DEATHBIKE3_MINI_KILLS", 500)
	stats.set_int(MPX() .. "DEATHBIKE3_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "DEATHBIKE3_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "DEATHBIKE3_MINI_HITS", 500)
	stats.set_int(MPX() .. "DEATHBIKE3_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "DEATHBIKE3_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DEATHBIKE3_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DOMINATOR4_MG50_KILLS", 500)
	stats.set_int(MPX() .. "DOMINATOR4_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "DOMINATOR4_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "DOMINATOR4_MG50_HITS", 500)
	stats.set_int(MPX() .. "DOMINATOR4_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "DOMINATOR4_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DOMINATOR4_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DOMINATOR5_MG50_KILLS", 500)
	stats.set_int(MPX() .. "DOMINATOR5_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "DOMINATOR5_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "DOMINATOR5_MG50_HITS", 500)
	stats.set_int(MPX() .. "DOMINATOR5_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "DOMINATOR5_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DOMINATOR5_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DOMINATOR5_LAS_KILLS", 500)
	stats.set_int(MPX() .. "DOMINATOR5_LAS_DEATHS", 100)
	stats.set_int(MPX() .. "DOMINATOR5_LAS_SHOTS", 500)
	stats.set_int(MPX() .. "DOMINATOR5_LAS_HITS", 500)
	stats.set_int(MPX() .. "DOMINATOR5_LAS_HEADSHOTS", 500)
	stats.set_int(MPX() .. "DOMINATOR5_LAS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DOMINATOR5_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DOMINATOR6_MG50_KILLS", 500)
	stats.set_int(MPX() .. "DOMINATOR6_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "DOMINATOR6_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "DOMINATOR6_MG50_HITS", 500)
	stats.set_int(MPX() .. "DOMINATOR6_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "DOMINATOR6_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DOMINATOR6_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "IMPALER2_MG50_KILLS", 500)
	stats.set_int(MPX() .. "IMPALER2_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "IMPALER2_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "IMPALER2_MG50_HITS", 500)
	stats.set_int(MPX() .. "IMPALER2_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "IMPALER2_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "IMPALER2_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "IMPALER3_MG50_KILLS", 500)
	stats.set_int(MPX() .. "IMPALER3_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "IMPALER3_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "IMPALER3_MG50_HITS", 500)
	stats.set_int(MPX() .. "IMPALER3_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "IMPALER3_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "IMPALER3_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "IMPALER3_LAS_KILLS", 500)
	stats.set_int(MPX() .. "IMPALER3_LAS_DEATHS", 100)
	stats.set_int(MPX() .. "IMPALER3_LAS_SHOTS", 500)
	stats.set_int(MPX() .. "IMPALER3_LAS_HITS", 500)
	stats.set_int(MPX() .. "IMPALER3_LAS_HEADSHOTS", 500)
	stats.set_int(MPX() .. "IMPALER3_LAS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "IMPALER3_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "IMPALER4_MG50_KILLS", 500)
	stats.set_int(MPX() .. "IMPALER4_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "IMPALER4_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "IMPALER4_MG50_HITS", 500)
	stats.set_int(MPX() .. "IMPALER4_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "IMPALER4_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "IMPALER4_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR_MG50_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "IMPERATOR_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "IMPERATOR_MG50_HITS", 500)
	stats.set_int(MPX() .. "IMPERATOR_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "IMPERATOR_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "IMPERATOR_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR_KIN_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR_KIN_DEATHS", 100)
	stats.set_int(MPX() .. "IMPERATOR_KIN_SHOTS", 500)
	stats.set_int(MPX() .. "IMPERATOR_KIN_HITS", 500)
	stats.set_int(MPX() .. "IMPERATOR_KIN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "IMPERATOR_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_MG50_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "IMPERATOR2_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_MG50_HITS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "IMPERATOR2_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_KIN_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_KIN_DEATHS", 100)
	stats.set_int(MPX() .. "IMPERATOR2_KIN_SHOTS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_KIN_HITS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_KIN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "IMPERATOR2_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_LAS_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_LAS_DEATHS", 100)
	stats.set_int(MPX() .. "IMPERATOR2_LAS_SHOTS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_LAS_HITS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_LAS_HEADSHOTS", 500)
	stats.set_int(MPX() .. "IMPERATOR2_LAS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "IMPERATOR2_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR3_MG50_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR3_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "IMPERATOR3_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "IMPERATOR3_MG50_HITS", 500)
	stats.set_int(MPX() .. "IMPERATOR3_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "IMPERATOR3_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "IMPERATOR3_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR3_KIN_KILLS", 500)
	stats.set_int(MPX() .. "IMPERATOR3_KIN_DEATHS", 100)
	stats.set_int(MPX() .. "IMPERATOR3_KIN_SHOTS", 500)
	stats.set_int(MPX() .. "IMPERATOR3_KIN_HITS", 500)
	stats.set_int(MPX() .. "IMPERATOR3_KIN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "IMPERATOR3_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VALKYRIE_CANNON_KILLS", 500)
	stats.set_int(MPX() .. "VALKYRIE_CANNON_DEATHS", 100)
	stats.set_int(MPX() .. "VALKYRIE_CANNON_SHOTS", 500)
	stats.set_int(MPX() .. "VALKYRIE_CANNON_HITS", 500)
	stats.set_int(MPX() .. "VALKYRIE_CANNON_HEADSHOTS", 500)
	stats.set_int(MPX() .. "VALKYRIE_CANNON_HELDTIME", 5963259)
	stats.set_int(MPX() .. "VALKYRIE_CANNON_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VALKYRIE_TURR_KILLS", 500)
	stats.set_int(MPX() .. "VALKYRIE_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "VALKYRIE_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "VALKYRIE_TURR_HITS", 500)
	stats.set_int(MPX() .. "VALKYRIE_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "VALKYRIE_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "VALKYRIE_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "JB7002_MG_KILLS", 500)
	stats.set_int(MPX() .. "JB7002_MG_DEATHS", 100)
	stats.set_int(MPX() .. "JB7002_MG_SHOTS", 500)
	stats.set_int(MPX() .. "JB7002_MG_HITS", 500)
	stats.set_int(MPX() .. "JB7002_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "JB7002_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "JB7002_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MINITANK_MG_KILLS", 500)
	stats.set_int(MPX() .. "MINITANK_MG_DEATHS", 100)
	stats.set_int(MPX() .. "MINITANK_MG_SHOTS", 500)
	stats.set_int(MPX() .. "MINITANK_MG_HITS", 500)
	stats.set_int(MPX() .. "MINITANK_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MINITANK_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MINITANK_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MINITANK_FL_KILLS", 500)
	stats.set_int(MPX() .. "MINITANK_FL_DEATHS", 100)
	stats.set_int(MPX() .. "MINITANK_FL_SHOTS", 500)
	stats.set_int(MPX() .. "MINITANK_FL_HITS", 500)
	stats.set_int(MPX() .. "MINITANK_FL_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MINITANK_FL_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MINITANK_RK_KILLS", 500)
	stats.set_int(MPX() .. "MINITANK_RK_DEATHS", 100)
	stats.set_int(MPX() .. "MINITANK_RK_SHOTS", 500)
	stats.set_int(MPX() .. "MINITANK_RK_HITS", 500)
	stats.set_int(MPX() .. "MINITANK_RK_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MINITANK_RK_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MINITANK_LZ_KILLS", 500)
	stats.set_int(MPX() .. "MINITANK_LZ_DEATHS", 100)
	stats.set_int(MPX() .. "MINITANK_LZ_SHOTS", 500)
	stats.set_int(MPX() .. "MINITANK_LZ_HITS", 500)
	stats.set_int(MPX() .. "MINITANK_LZ_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MINITANK_LZ_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MINITANK_LZ_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "FLAREGUN_KILLS", 500)
	stats.set_int(MPX() .. "FLAREGUN_DEATHS", 100)
	stats.set_int(MPX() .. "FLAREGUN_SHOTS", 500)
	stats.set_int(MPX() .. "FLAREGUN_HITS", 500)
	stats.set_int(MPX() .. "FLAREGUN_HEADSHOTS", 500)
	stats.set_int(MPX() .. "FLAREGUN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "FLAREGUN_DB_HELDTIME", 5963259)
	stats.set_int(MPX() .. "FLAREGUN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "INSURGENT_TURR_KILLS", 500)
	stats.set_int(MPX() .. "INSURGENT_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "INSURGENT_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "INSURGENT_TURR_HITS", 500)
	stats.set_int(MPX() .. "INSURGENT_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "INSURGENT_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "INSURGENT_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SAVAGE_ROCKET_KILLS", 500)
	stats.set_int(MPX() .. "SAVAGE_ROCKET_DEATHS", 100)
	stats.set_int(MPX() .. "SAVAGE_ROCKET_SHOTS", 500)
	stats.set_int(MPX() .. "SAVAGE_ROCKET_HITS", 500)
	stats.set_int(MPX() .. "SAVAGE_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SAVAGE_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SAVAGE_BULLET_KILLS", 500)
	stats.set_int(MPX() .. "SAVAGE_BULLET_DEATHS", 100)
	stats.set_int(MPX() .. "SAVAGE_BULLET_SHOTS", 500)
	stats.set_int(MPX() .. "SAVAGE_BULLET_HITS", 500)
	stats.set_int(MPX() .. "SAVAGE_BULLET_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SAVAGE_BULLET_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SAVAGE_BULLET_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TECHNICAL_TURR_KILLS", 500)
	stats.set_int(MPX() .. "TECHNICAL_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "TECHNICAL_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "TECHNICAL_TURR_HITS", 500)
	stats.set_int(MPX() .. "TECHNICAL_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "TECHNICAL_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TECHNICAL_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VEHBOMB_KILLS", 500)
	stats.set_int(MPX() .. "VEHBOMB_DEATHS", 100)
	stats.set_int(MPX() .. "VEHBOMB_SHOTS", 500)
	stats.set_int(MPX() .. "VEHBOMB_HITS", 500)
	stats.set_int(MPX() .. "VEHBOMB_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VEHBOMB_C_KILLS", 500)
	stats.set_int(MPX() .. "VEHBOMB_C_DEATHS", 100)
	stats.set_int(MPX() .. "VEHBOMB_C_SHOTS", 500)
	stats.set_int(MPX() .. "VEHBOMB_C_HITS", 500)
	stats.set_int(MPX() .. "VEHBOMB_C_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VEHBOMB_G_KILLS", 500)
	stats.set_int(MPX() .. "VEHBOMB_G_DEATHS", 100)
	stats.set_int(MPX() .. "VEHBOMB_G_SHOTS", 500)
	stats.set_int(MPX() .. "VEHBOMB_G_HITS", 500)
	stats.set_int(MPX() .. "VEHBOMB_G_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VEHBOMB_I_KILLS", 500)
	stats.set_int(MPX() .. "VEHBOMB_I_DEATHS", 100)
	stats.set_int(MPX() .. "VEHBOMB_I_SHOTS", 500)
	stats.set_int(MPX() .. "VEHBOMB_I_HITS", 500)
	stats.set_int(MPX() .. "VEHBOMB_I_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BOMBUSHKA_CANN_KILLS", 500)
	stats.set_int(MPX() .. "BOMBUSHKA_CANN_DEATHS", 100)
	stats.set_int(MPX() .. "BOMBUSHKA_CANN_SHOTS", 500)
	stats.set_int(MPX() .. "BOMBUSHKA_CANN_HITS", 500)
	stats.set_int(MPX() .. "BOMBUSHKA_CANN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BOMBUSHKA_CANN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BOMBUSHKA_DUAL_KILLS", 500)
	stats.set_int(MPX() .. "BOMBUSHKA_DUAL_DEATHS", 100)
	stats.set_int(MPX() .. "BOMBUSHKA_DUAL_SHOTS", 500)
	stats.set_int(MPX() .. "BOMBUSHKA_DUAL_HITS", 500)
	stats.set_int(MPX() .. "BOMBUSHKA_DUAL_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BOMBUSHKA_DUAL_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BOMBUSHKA_DUAL_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "HAVOK_MINI_KILLS", 500)
	stats.set_int(MPX() .. "HAVOK_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "HAVOK_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "HAVOK_MINI_HITS", 500)
	stats.set_int(MPX() .. "HAVOK_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "HAVOK_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "HAVOK_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "HUNTER_BARR_KILLS", 500)
	stats.set_int(MPX() .. "HUNTER_BARR_DEATHS", 100)
	stats.set_int(MPX() .. "HUNTER_BARR_SHOTS", 500)
	stats.set_int(MPX() .. "HUNTER_BARR_HITS", 500)
	stats.set_int(MPX() .. "HUNTER_BARR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "HUNTER_BARR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "HUNTER_CANNON_KILLS", 500)
	stats.set_int(MPX() .. "HUNTER_CANNON_DEATHS", 100)
	stats.set_int(MPX() .. "HUNTER_CANNON_SHOTS", 500)
	stats.set_int(MPX() .. "HUNTER_CANNON_HITS", 500)
	stats.set_int(MPX() .. "HUNTER_CANNON_HELDTIME", 5963259)
	stats.set_int(MPX() .. "HUNTER_CANNON_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MICROLIGHT_MG_KILLS", 500)
	stats.set_int(MPX() .. "MICROLIGHT_MG_DEATHS", 100)
	stats.set_int(MPX() .. "MICROLIGHT_MG_SHOTS", 500)
	stats.set_int(MPX() .. "MICROLIGHT_MG_HITS", 500)
	stats.set_int(MPX() .. "MICROLIGHT_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MICROLIGHT_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MICROLIGHT_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MOGUL_NOSE_KILLS", 500)
	stats.set_int(MPX() .. "MOGUL_NOSE_DEATHS", 100)
	stats.set_int(MPX() .. "MOGUL_NOSE_SHOTS", 500)
	stats.set_int(MPX() .. "MOGUL_NOSE_HITS", 500)
	stats.set_int(MPX() .. "MOGUL_NOSE_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MOGUL_NOSE_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MOGUL_NOSE_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MOGUL_DNOSE_KILLS", 500)
	stats.set_int(MPX() .. "MOGUL_DNOSE_DEATHS", 100)
	stats.set_int(MPX() .. "MOGUL_DNOSE_SHOTS", 500)
	stats.set_int(MPX() .. "MOGUL_DNOSE_HITS", 500)
	stats.set_int(MPX() .. "MOGUL_DNOSE_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MOGUL_DNOSE_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MOGUL_DNOSE_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MOGUL_TURR_KILLS", 500)
	stats.set_int(MPX() .. "MOGUL_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "MOGUL_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "MOGUL_TURR_HITS", 500)
	stats.set_int(MPX() .. "MOGUL_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MOGUL_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MOGUL_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MOGUL_DTURR_KILLS", 500)
	stats.set_int(MPX() .. "MOGUL_DTURR_DEATHS", 100)
	stats.set_int(MPX() .. "MOGUL_DTURR_SHOTS", 500)
	stats.set_int(MPX() .. "MOGUL_DTURR_HITS", 500)
	stats.set_int(MPX() .. "MOGUL_DTURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MOGUL_DTURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MOGUL_DTURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MOLOTOK_MG_KILLS", 500)
	stats.set_int(MPX() .. "MOLOTOK_MG_DEATHS", 100)
	stats.set_int(MPX() .. "MOLOTOK_MG_SHOTS", 500)
	stats.set_int(MPX() .. "MOLOTOK_MG_HITS", 500)
	stats.set_int(MPX() .. "MOLOTOK_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "MOLOTOK_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MOLOTOK_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MOLOTOK_MISS_KILLS", 500)
	stats.set_int(MPX() .. "MOLOTOK_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "MOLOTOK_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "MOLOTOK_MISS_HITS", 500)
	stats.set_int(MPX() .. "MOLOTOK_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MOLOTOK_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "NOKOTA_MG_KILLS", 500)
	stats.set_int(MPX() .. "NOKOTA_MG_DEATHS", 100)
	stats.set_int(MPX() .. "NOKOTA_MG_SHOTS", 500)
	stats.set_int(MPX() .. "NOKOTA_MG_HITS", 500)
	stats.set_int(MPX() .. "NOKOTA_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "NOKOTA_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "NOKOTA_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "NOKOTA_MISS_KILLS", 500)
	stats.set_int(MPX() .. "NOKOTA_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "NOKOTA_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "NOKOTA_MISS_HITS", 500)
	stats.set_int(MPX() .. "NOKOTA_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "NOKOTA_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "PYRO_MG_KILLS", 500)
	stats.set_int(MPX() .. "PYRO_MG_DEATHS", 100)
	stats.set_int(MPX() .. "PYRO_MG_SHOTS", 500)
	stats.set_int(MPX() .. "PYRO_MG_HITS", 500)
	stats.set_int(MPX() .. "PYRO_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "PYRO_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "PYRO_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "PYRO_MISS_KILLS", 500)
	stats.set_int(MPX() .. "PYRO_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "PYRO_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "PYRO_MISS_HITS", 500)
	stats.set_int(MPX() .. "PYRO_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "PYRO_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ROGUE_MG_KILLS", 500)
	stats.set_int(MPX() .. "ROGUE_MG_DEATHS", 100)
	stats.set_int(MPX() .. "ROGUE_MG_SHOTS", 500)
	stats.set_int(MPX() .. "ROGUE_MG_HITS", 500)
	stats.set_int(MPX() .. "ROGUE_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "ROGUE_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ROGUE_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ROGUE_CANN_KILLS", 500)
	stats.set_int(MPX() .. "ROGUE_CANN_DEATHS", 100)
	stats.set_int(MPX() .. "ROGUE_CANN_SHOTS", 500)
	stats.set_int(MPX() .. "ROGUE_CANN_HITS", 500)
	stats.set_int(MPX() .. "ROGUE_CANN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ROGUE_CANN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ROGUE_MISS_KILLS", 500)
	stats.set_int(MPX() .. "ROGUE_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "ROGUE_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "ROGUE_MISS_HITS", 500)
	stats.set_int(MPX() .. "ROGUE_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ROGUE_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "STARLING_MG_KILLS", 500)
	stats.set_int(MPX() .. "STARLING_MG_DEATHS", 100)
	stats.set_int(MPX() .. "STARLING_MG_SHOTS", 500)
	stats.set_int(MPX() .. "STARLING_MG_HITS", 500)
	stats.set_int(MPX() .. "STARLING_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "STARLING_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "STARLING_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "STARLING_MISS_KILLS", 500)
	stats.set_int(MPX() .. "STARLING_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "STARLING_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "STARLING_MISS_HITS", 500)
	stats.set_int(MPX() .. "STARLING_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "STARLING_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SEABREEZE_MG_KILLS", 500)
	stats.set_int(MPX() .. "SEABREEZE_MG_DEATHS", 100)
	stats.set_int(MPX() .. "SEABREEZE_MG_SHOTS", 500)
	stats.set_int(MPX() .. "SEABREEZE_MG_HITS", 500)
	stats.set_int(MPX() .. "SEABREEZE_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SEABREEZE_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SEABREEZE_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TULA_MG_KILLS", 500)
	stats.set_int(MPX() .. "TULA_MG_DEATHS", 100)
	stats.set_int(MPX() .. "TULA_MG_SHOTS", 500)
	stats.set_int(MPX() .. "TULA_MG_HITS", 500)
	stats.set_int(MPX() .. "TULA_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "TULA_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TULA_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TULA_SINGLEMG_KILLS", 500)
	stats.set_int(MPX() .. "TULA_SINGLEMG_DEATHS", 100)
	stats.set_int(MPX() .. "TULA_SINGLEMG_SHOTS", 500)
	stats.set_int(MPX() .. "TULA_SINGLEMG_HITS", 500)
	stats.set_int(MPX() .. "TULA_SINGLEMG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "TULA_SINGLEMG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TULA_SINGLEMG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TULA_DUALMG_KILLS", 500)
	stats.set_int(MPX() .. "TULA_DUALMG_DEATHS", 100)
	stats.set_int(MPX() .. "TULA_DUALMG_SHOTS", 500)
	stats.set_int(MPX() .. "TULA_DUALMG_HITS", 500)
	stats.set_int(MPX() .. "TULA_DUALMG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "TULA_DUALMG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TULA_DUALMG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TULA_MINI_KILLS", 500)
	stats.set_int(MPX() .. "TULA_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "TULA_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "TULA_MINI_HITS", 500)
	stats.set_int(MPX() .. "TULA_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "TULA_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TULA_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VIGILANTE_MG_KILLS", 500)
	stats.set_int(MPX() .. "VIGILANTE_MG_DEATHS", 100)
	stats.set_int(MPX() .. "VIGILANTE_MG_SHOTS", 500)
	stats.set_int(MPX() .. "VIGILANTE_MG_HITS", 500)
	stats.set_int(MPX() .. "VIGILANTE_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "VIGILANTE_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "VIGILANTE_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VIGILANTE_MISS_KILLS", 500)
	stats.set_int(MPX() .. "VIGILANTE_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "VIGILANTE_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "VIGILANTE_MISS_HITS", 500)
	stats.set_int(MPX() .. "VIGILANTE_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "VIGILANTE_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BOXVILLE5_TURR_KILLS", 500)
	stats.set_int(MPX() .. "BOXVILLE5_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "BOXVILLE5_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "BOXVILLE5_TURR_HITS", 500)
	stats.set_int(MPX() .. "BOXVILLE5_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BOXVILLE5_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BOXVILLE5_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BLAZER5_CANNON_KILLS", 500)
	stats.set_int(MPX() .. "BLAZER5_CANNON_DEATHS", 100)
	stats.set_int(MPX() .. "BLAZER5_CANNON_SHOTS", 500)
	stats.set_int(MPX() .. "BLAZER5_CANNON_HITS", 500)
	stats.set_int(MPX() .. "BLAZER5_CANNON_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BLAZER5_CANNON_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BLAZER5_CANNON_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "RUINER2_BULLET_KILLS", 500)
	stats.set_int(MPX() .. "RUINER2_BULLET_DEATHS", 100)
	stats.set_int(MPX() .. "RUINER2_BULLET_SHOTS", 500)
	stats.set_int(MPX() .. "RUINER2_BULLET_HITS", 500)
	stats.set_int(MPX() .. "RUINER2_BULLET_HEADSHOTS", 500)
	stats.set_int(MPX() .. "RUINER2_BULLET_HELDTIME", 5963259)
	stats.set_int(MPX() .. "RUINER2_BULLET_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "RUINER2_ROCKET_KILLS", 500)
	stats.set_int(MPX() .. "RUINER2_ROCKET_DEATHS", 100)
	stats.set_int(MPX() .. "RUINER2_ROCKET_SHOTS", 500)
	stats.set_int(MPX() .. "RUINER2_ROCKET_HITS", 500)
	stats.set_int(MPX() .. "RUINER2_ROCKET_HEADSHOTS", 500)
	stats.set_int(MPX() .. "RUINER2_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX() .. "RUINER2_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TECHNICAL2_TURR_KILLS", 500)
	stats.set_int(MPX() .. "TECHNICAL2_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "TECHNICAL2_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "TECHNICAL2_TURR_HITS", 500)
	stats.set_int(MPX() .. "TECHNICAL2_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "TECHNICAL2_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TECHNICAL2_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "CRARMWREST", 500)
	stats.set_int(MPX() .. "CRBASEJUMP", 500)
	stats.set_int(MPX() .. "CRDARTS", 500)
	stats.set_int(MPX() .. "CRDM", 500)
	stats.set_int(MPX() .. "CRGANGHIDE", 500)
	stats.set_int(MPX() .. "CRGOLF", 500)
	stats.set_int(MPX() .. "CRHORDE", 500)
	stats.set_int(MPX() .. "CRMISSION", 500)
	stats.set_int(MPX() .. "CRSHOOTRNG", 500)
	stats.set_int(MPX() .. "CRTENNIS", 500)
	stats.set_int(MPX() .. "NO_TIMES_CINEMA", 500)
	stats.set_int(MPX() .. "AWD_CONTRACTOR", 50)
	stats.set_int(MPX() .. "AWD_COLD_CALLER", 50)
	stats.set_int(MPX() .. "AWD_PRODUCER", 60)
	stats.set_int(MPX() .. "FIXERTELEPHONEHITSCOMPL", 10)
	stats.set_int(MPX() .. "PAYPHONE_BONUS_KILL_METHOD", -1)
	stats.set_int(MPX() .. "TWR_INITIALS_0", 69644)
	stats.set_int(MPX() .. "TWR_INITIALS_1", 69644)
	stats.set_int(MPX() .. "TWR_INITIALS_2", 69644)
	stats.set_int(MPX() .. "TWR_INITIALS_3", 69644)
	stats.set_int(MPX() .. "TWR_INITIALS_4", 69644)
	stats.set_int(MPX() .. "TWR_INITIALS_5", 69644)
	stats.set_int(MPX() .. "TWR_INITIALS_6", 69644)
	stats.set_int(MPX() .. "TWR_INITIALS_7", 69644)
	stats.set_int(MPX() .. "TWR_INITIALS_8", 69644)
	stats.set_int(MPX() .. "TWR_INITIALS_9", 69644)
	stats.set_int(MPX() .. "TWR_SCORE_0", 50)
	stats.set_int(MPX() .. "TWR_SCORE_1", 50)
	stats.set_int(MPX() .. "TWR_SCORE_2", 50)
	stats.set_int(MPX() .. "TWR_SCORE_3", 50)
	stats.set_int(MPX() .. "TWR_SCORE_4", 50)
	stats.set_int(MPX() .. "TWR_SCORE_5", 50)
	stats.set_int(MPX() .. "TWR_SCORE_6", 50)
	stats.set_int(MPX() .. "TWR_SCORE_7", 50)
	stats.set_int(MPX() .. "TWR_SCORE_8", 50)
	stats.set_int(MPX() .. "TWR_SCORE_9", 50)
	stats.set_int(MPX() .. "GGSM_INITIALS_0", 69644)
	stats.set_int(MPX() .. "GGSM_INITIALS_1", 69644)
	stats.set_int(MPX() .. "GGSM_INITIALS_2", 69644)
	stats.set_int(MPX() .. "GGSM_INITIALS_3", 69644)
	stats.set_int(MPX() .. "GGSM_INITIALS_4", 69644)
	stats.set_int(MPX() .. "GGSM_INITIALS_5", 69644)
	stats.set_int(MPX() .. "GGSM_INITIALS_6", 69644)
	stats.set_int(MPX() .. "GGSM_INITIALS_7", 69644)
	stats.set_int(MPX() .. "GGSM_INITIALS_8", 69644)
	stats.set_int(MPX() .. "GGSM_INITIALS_9", 69644)
	stats.set_int(MPX() .. "GGSM_SCORE_0", 50)
	stats.set_int(MPX() .. "GGSM_SCORE_1", 50)
	stats.set_int(MPX() .. "GGSM_SCORE_2", 50)
	stats.set_int(MPX() .. "GGSM_SCORE_3", 50)
	stats.set_int(MPX() .. "GGSM_SCORE_4", 50)
	stats.set_int(MPX() .. "GGSM_SCORE_5", 50)
	stats.set_int(MPX() .. "GGSM_SCORE_6", 50)
	stats.set_int(MPX() .. "GGSM_SCORE_7", 50)
	stats.set_int(MPX() .. "GGSM_SCORE_8", 50)
	stats.set_int(MPX() .. "GGSM_SCORE_9", 50)
	stats.set_int(MPX() .. "DG_PENETRATOR_INITIALS_0", 69644)
	stats.set_int(MPX() .. "DG_PENETRATOR_INITIALS_1", 69644)
	stats.set_int(MPX() .. "DG_PENETRATOR_INITIALS_2", 69644)
	stats.set_int(MPX() .. "DG_PENETRATOR_INITIALS_3", 69644)
	stats.set_int(MPX() .. "DG_PENETRATOR_INITIALS_4", 69644)
	stats.set_int(MPX() .. "DG_PENETRATOR_INITIALS_5", 69644)
	stats.set_int(MPX() .. "DG_PENETRATOR_INITIALS_6", 69644)
	stats.set_int(MPX() .. "DG_PENETRATOR_INITIALS_7", 69644)
	stats.set_int(MPX() .. "DG_PENETRATOR_INITIALS_8", 69644)
	stats.set_int(MPX() .. "DG_PENETRATOR_INITIALS_9", 69644)
	stats.set_int(MPX() .. "DG_PENETRATOR_SCORE_0", 50)
	stats.set_int(MPX() .. "DG_PENETRATOR_SCORE_1", 50)
	stats.set_int(MPX() .. "DG_PENETRATOR_SCORE_2", 50)
	stats.set_int(MPX() .. "DG_PENETRATOR_SCORE_3", 50)
	stats.set_int(MPX() .. "DG_PENETRATOR_SCORE_4", 50)
	stats.set_int(MPX() .. "DG_PENETRATOR_SCORE_5", 50)
	stats.set_int(MPX() .. "DG_PENETRATOR_SCORE_6", 50)
	stats.set_int(MPX() .. "DG_PENETRATOR_SCORE_7", 50)
	stats.set_int(MPX() .. "DG_PENETRATOR_SCORE_8", 50)
	stats.set_int(MPX() .. "DG_PENETRATOR_SCORE_9", 50)
	stats.set_int(MPX() .. "DG_MONKEY_INITIALS_0", 69644)
	stats.set_int(MPX() .. "DG_MONKEY_INITIALS_1", 69644)
	stats.set_int(MPX() .. "DG_MONKEY_INITIALS_2", 69644)
	stats.set_int(MPX() .. "DG_MONKEY_INITIALS_3", 69644)
	stats.set_int(MPX() .. "DG_MONKEY_INITIALS_4", 69644)
	stats.set_int(MPX() .. "DG_MONKEY_INITIALS_5", 69644)
	stats.set_int(MPX() .. "DG_MONKEY_INITIALS_6", 69644)
	stats.set_int(MPX() .. "DG_MONKEY_INITIALS_7", 69644)
	stats.set_int(MPX() .. "DG_MONKEY_INITIALS_8", 69644)
	stats.set_int(MPX() .. "DG_MONKEY_INITIALS_9", 69644)
	stats.set_int(MPX() .. "DG_MONKEY_SCORE_0", 50)
	stats.set_int(MPX() .. "DG_MONKEY_SCORE_1", 50)
	stats.set_int(MPX() .. "DG_MONKEY_SCORE_2", 50)
	stats.set_int(MPX() .. "DG_MONKEY_SCORE_3", 50)
	stats.set_int(MPX() .. "DG_MONKEY_SCORE_4", 50)
	stats.set_int(MPX() .. "DG_MONKEY_SCORE_5", 50)
	stats.set_int(MPX() .. "DG_MONKEY_SCORE_6", 50)
	stats.set_int(MPX() .. "DG_MONKEY_SCORE_7", 50)
	stats.set_int(MPX() .. "DG_MONKEY_SCORE_8", 50)
	stats.set_int(MPX() .. "DG_MONKEY_SCORE_9", 50)
	stats.set_int(MPX() .. "IAP_MA0_MOON_DIST", 2147483647)
	stats.set_int(MPX() .. "AWD_FACES_OF_DEATH", 47)
	stats.set_int(MPX() .. "IAP_INITIALS_0", 50)
	stats.set_int(MPX() .. "IAP_INITIALS_1", 50)
	stats.set_int(MPX() .. "IAP_INITIALS_2", 50)
	stats.set_int(MPX() .. "IAP_INITIALS_3", 50)
	stats.set_int(MPX() .. "IAP_INITIALS_4", 50)
	stats.set_int(MPX() .. "IAP_INITIALS_5", 50)
	stats.set_int(MPX() .. "IAP_INITIALS_6", 50)
	stats.set_int(MPX() .. "IAP_INITIALS_7", 50)
	stats.set_int(MPX() .. "IAP_INITIALS_8", 50)
	stats.set_int(MPX() .. "IAP_INITIALS_9", 50)
	stats.set_int(MPX() .. "IAP_SCORE_0", 69644)
	stats.set_int(MPX() .. "IAP_SCORE_1", 50333)
	stats.set_int(MPX() .. "IAP_SCORE_2", 63512)
	stats.set_int(MPX() .. "IAP_SCORE_3", 46136)
	stats.set_int(MPX() .. "IAP_SCORE_4", 21638)
	stats.set_int(MPX() .. "IAP_SCORE_5", 2133)
	stats.set_int(MPX() .. "IAP_SCORE_6", 1215)
	stats.set_int(MPX() .. "IAP_SCORE_7", 2444)
	stats.set_int(MPX() .. "IAP_SCORE_8", 38023)
	stats.set_int(MPX() .. "IAP_SCORE_9", 2233)
	stats.set_int(MPX() .. "SCGW_SCORE_1", 50)
	stats.set_int(MPX() .. "SCGW_SCORE_2", 50)
	stats.set_int(MPX() .. "SCGW_SCORE_3", 50)
	stats.set_int(MPX() .. "SCGW_SCORE_4", 50)
	stats.set_int(MPX() .. "SCGW_SCORE_5", 50)
	stats.set_int(MPX() .. "SCGW_SCORE_6", 50)
	stats.set_int(MPX() .. "SCGW_SCORE_7", 50)
	stats.set_int(MPX() .. "SCGW_SCORE_8", 50)
	stats.set_int(MPX() .. "SCGW_SCORE_9", 50)
	stats.set_int(MPX() .. "DG_DEFENDER_INITIALS_0", 69644)
	stats.set_int(MPX() .. "DG_DEFENDER_INITIALS_1", 69644)
	stats.set_int(MPX() .. "DG_DEFENDER_INITIALS_2", 69644)
	stats.set_int(MPX() .. "DG_DEFENDER_INITIALS_3", 69644)
	stats.set_int(MPX() .. "DG_DEFENDER_INITIALS_4", 69644)
	stats.set_int(MPX() .. "DG_DEFENDER_INITIALS_5", 69644)
	stats.set_int(MPX() .. "DG_DEFENDER_INITIALS_6", 69644)
	stats.set_int(MPX() .. "DG_DEFENDER_INITIALS_7", 69644)
	stats.set_int(MPX() .. "DG_DEFENDER_INITIALS_8", 69644)
	stats.set_int(MPX() .. "DG_DEFENDER_INITIALS_9", 69644)
	stats.set_int(MPX() .. "DG_DEFENDER_SCORE_0", 50)
	stats.set_int(MPX() .. "DG_DEFENDER_SCORE_1", 50)
	stats.set_int(MPX() .. "DG_DEFENDER_SCORE_2", 50)
	stats.set_int(MPX() .. "DG_DEFENDER_SCORE_3", 50)
	stats.set_int(MPX() .. "DG_DEFENDER_SCORE_4", 50)
	stats.set_int(MPX() .. "DG_DEFENDER_SCORE_5", 50)
	stats.set_int(MPX() .. "DG_DEFENDER_SCORE_6", 50)
	stats.set_int(MPX() .. "DG_DEFENDER_SCORE_7", 50)
	stats.set_int(MPX() .. "DG_DEFENDER_SCORE_8", 50)
	stats.set_int(MPX() .. "DG_DEFENDER_SCORE_9", 50)
	stats.set_int(MPX() .. "AWD_CAR_CLUB_MEM", 100)
	stats.set_int(MPX() .. "AWD_SPRINTRACER", 50)
	stats.set_int(MPX() .. "AWD_STREETRACER", 50)
	stats.set_int(MPX() .. "AWD_PURSUITRACER", 50)
	stats.set_int(MPX() .. "AWD_TEST_CAR", 240)
	stats.set_int(MPX() .. "AWD_AUTO_SHOP", 50)
	stats.set_int(MPX() .. "AWD_CAR_EXPORT", 100)
	stats.set_int(MPX() .. "AWD_GROUNDWORK", 40)
	stats.set_int(MPX() .. "AWD_ROBBERY_CONTRACT", 100)
	stats.set_int(MPX() .. "AWD_FACES_OF_DEATH", 100)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_LEGS_3", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_LEGS_4", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_LEGS_5", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_LEGS_6", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_LEGS_7", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_OUTFIT", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_PROPS", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_PROPS_1", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_PROPS_10", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_PROPS_2", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_PROPS_3", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_PROPS_4", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_PROPS_5", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_PROPS_6", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_PROPS_7", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_PROPS_8", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_PROPS_9", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_SPECIAL", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_SPECIAL2", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_SPECIAL2_1", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_SPECIAL_1", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_SPECIAL_2", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_SPECIAL_3", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_SPECIAL_4", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_SPECIAL_5", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_SPECIAL_6", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_SPECIAL_7", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_TEETH", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_TEETH_1", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_TEETH_2", -1)
	stats.set_int(MPX() .. "CLTHS_AVAILABLE_TORSO", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_0", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_1", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_10", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_11", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_12", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_13", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_14", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_15", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_16", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_17", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_18", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_19", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_2", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_20", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_21", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_22", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_23", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_24", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_25", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_26", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_27", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_28", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_29", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_3", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_30", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_31", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_32", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_33", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_34", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_35", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_36", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_37", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_38", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_39", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_4", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_40", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_5", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_6", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_7", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_8", -1)
	stats.set_int(MPX() .. "DLC_APPAREL_ACQUIRED_9", -1)
	stats.set_int(MPX() .. "GRENADE_ENEMY_KILLS", 50)
	stats.set_int(MPX() .. "MICROSMG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SMG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ASLTSMG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ASLTRIFLE_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "CRBNRIFLE_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ADVRIFLE_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "CMBTMG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ASLTMG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "RPG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "LONGEST_WHEELIE_DIST", 1000)
	stats.set_int(MPX() .. "MOST_ARM_WRESTLING_WINS", 25)
	stats.set_int(MPX() .. "NO_CARS_REPAIR", 1000)
	stats.set_int(MPX() .. "VEHICLES_SPRAYED", 500)
	stats.set_int(MPX() .. "NUMBER_NEAR_MISS_NOCRASH", 500)
	stats.set_int(MPX() .. "USJS_FOUND", 50)
	stats.set_int(MPX() .. "USJS_FOUND_MASK", 50)
	stats.set_int(MPX() .. "USJS_COMPLETED", 50)
	stats.set_int(MPX() .. "USJS_TOTAL_COMPLETED", 50)
	stats.set_int(MPX() .. "USJS_COMPLETED_MASK", 50)
	stats.set_int(MPX() .. "MOST_FLIPS_IN_ONE_JUMP", 5)
	stats.set_int(MPX() .. "MOST_SPINS_IN_ONE_JUMP", 5)
	stats.set_int(MPX() .. "NUMBER_SLIPSTREAMS_IN_RACE", 100)
	stats.set_int(MPX() .. "NUMBER_TURBO_STARTS_IN_RACE", 50)
	stats.set_int(MPX() .. "PASS_DB_PLAYER_KILLS", 100)
	stats.set_int(MPX() .. "PISTOL_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "PLAYER_HEADSHOTS", 500)
	stats.set_int(MPX() .. "RACES_WON", 50)
	stats.set_int(MPX() .. "SAWNOFF_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_DRIV", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_FLY", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_LUNG", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_MECH", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_SHO", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STAM", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STL", 100)
	stats.set_int(MPX() .. "SCRIPT_INCREASE_STRN", 100)
	stats.set_int(MPX() .. "STKYBMB_ENEMY_KILLS", 50)
	stats.set_int(MPX() .. "UNARMED_ENEMY_KILLS", 50)
	stats.set_int(MPX() .. "USJS_COMPLETED", 50)
	stats.set_int(MPX() .. "WEAP_FM_ADDON_PURCH", -1)
	stats.set_int(MPX() .. "WEAP_FM_ADDON_PURCH2", -1)
	stats.set_int(MPX() .. "WEAP_FM_ADDON_PURCH3", -1)
	stats.set_int(MPX() .. "WEAP_FM_ADDON_PURCH4", -1)
	stats.set_int(MPX() .. "WEAP_FM_ADDON_PURCH5", -1)
	stats.set_int(MPX() .. "CRDEADLINE", 5)
	stats.set_int(MPX() .. "CHAR_FM_ABILITY_1_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_ABILITY_2_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_ABILITY_3_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_ABILITY_1_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_ABILITY_2_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_ABILITY_3_UNLCK", -1)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_COMPLET", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_UNDERTA", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_COMPLET", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_UNDERTA", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_COMPLET1", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_UNDERTA1", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_COMPLET1", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_UNDERTA1", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_COMPLET2", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_UNDERTA2", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_COMPLET2", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_UNDERTA2", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_COMPLET3", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_UNDERTA3", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_COMPLET3", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_UNDERTA3", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_COMPLET4", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_UNDERTA4", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_COMPLET4", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_UNDERTA4", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_COMPLET5", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_BUY_UNDERTA5", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_COMPLET5", 1000)
	stats.set_int(MPX() .. "LIFETIME_BIKER_SELL_UNDERTA5", 1000)
	stats.set_int(MPX() .. "LIFETIME_BKR_SELL_EARNINGS0", 20000000)
	stats.set_int(MPX() .. "LIFETIME_BKR_SELL_EARNINGS1", 20000000)
	stats.set_int(MPX() .. "LIFETIME_BKR_SELL_EARNINGS2", 20000000)
	stats.set_int(MPX() .. "LIFETIME_BKR_SELL_EARNINGS3", 20000000)
	stats.set_int(MPX() .. "LIFETIME_BKR_SELL_EARNINGS4", 20000000)
	stats.set_int(MPX() .. "LFETIME_BIKER_BUY_COMPLET6", 10) --Allow buying of Stank Breath acid name.
	stats.set_int(MPX() .. "LFETIME_BIKER_SELL_COMPLET6", 10) --Allow buying of Squatch Bait acid name.
	stats.set_packed_stat_int(41241, 5) --Allow buying of Chair Shot acid name.
	stats.set_int(MPX() .. "LIFETIME_BKR_SELL_EARNINGS6", 1000000) --Allow buying of Fck Your Sleep acid name.
	stats.set_packed_stat_int(7666, 25) --Fill CEO office with money
	unlock_packed_bools(7553, 7594) --Fill CEO office with junk
	stats.set_packed_stat_int(9357, 4) --Fill Clubhouse with money
	unlock_packed_bools(9400, 9414) --Fill Clubhouse with junk
	stats.set_int(MPX() .. "XMAS2023_ADV_MODE_WINS", 6) --Unlock Christmas 2023 liveries.
	stats.set_int("MPPLY_XMAS23_PLATES0", 3) -- ECola & Sprunk Plates
	stats.set_int(MPX() .. "COUNT_HOTRING_RACE", 20) -- Liveries for hotring
	stats.set_int(MPX() .. "FINISHED_SASS_RACE_TOP_3", 20) -- Trade price for hotring/everon2
	stats.set_int(MPX() .. "AWD_DISPATCHWORK", 5) --Trade price for polgreenwood.
	stats.set_packed_stat_int(7671, 100) --Plant on Desk, Plaque Trophy, Shield Trophy
	stats.set_int(MPX() .. "PROG_HUB_BOUNTIES_ALIVE_BS", -1) --Cuff Trophy
	stats.set_int(MPX() .. "LFETIME_IE_EXPORT_COMPLETED", 1000)
	stats.set_int(MPX() .. "LFETIME_IE_MISSION_EARNINGS", 20000000)
	stats.set_int(MPX() .. "LFETIME_HANGAR_SEL_UNDETAK", 1000)
	stats.set_int(MPX() .. "LFETIME_HANGAR_SEL_COMPLET", 1000)
	stats.set_int(MPX() .. "LFETIME_HANGAR_EARNINGS", 20000000)
	stats.set_int(MPX() .. "SR_HIGHSCORE_1", 690)
	stats.set_int(MPX() .. "SR_HIGHSCORE_2", 1860)
	stats.set_int(MPX() .. "SR_HIGHSCORE_3", 2690)
	stats.set_int(MPX() .. "SR_HIGHSCORE_4", 2660)
	stats.set_int(MPX() .. "SR_HIGHSCORE_5", 2650)
	stats.set_int(MPX() .. "SR_HIGHSCORE_6", 450)
	stats.set_int(MPX() .. "SR_TARGETS_HIT", 269)
	stats.set_int(MPX() .. "SR_WEAPON_BIT_SET", -1)
	stats.set_int(MPX() .. "GANGOPS_HEIST_STATUS", 9999)
	stats.set_int(MPX() .. "NO_BOUGHT_YUM_SNACKS", 1000)
	stats.set_int(MPX() .. "AWD_DANCE_TO_SOLOMUN", 100)
	stats.set_int(MPX() .. "AWD_DANCE_TO_TALEOFUS", 100)
	stats.set_int(MPX() .. "AWD_DANCE_TO_DIXON", 100)
	stats.set_int(MPX() .. "AWD_DANCE_TO_BLKMAD", 100)
	stats.set_int(MPX() .. "AWD_CLUB_DRUNK", 200)
	stats.set_int(MPX() .. "NUMUNIQUEPLYSINCLUB", 100)
	stats.set_int(MPX() .. "DANCETODIFFDJS", 4)
	stats.set_int(MPX() .. "DANCEPERFECTOWNCLUB", 100)
	stats.set_int(MPX() .. "NIGHTCLUB_HOTSPOT_TIME_MS", 3600000)
	stats.set_int(MPX() .. "ARENAWARS_SKILL_LEVEL", 20)
	stats.set_int(MPX() .. "ARENAWARS_AP_TIER", 1000)
	stats.set_int(MPX() .. "ARENAWARS_AP_LIFETIME", 47551850)
	stats.set_int(MPX() .. "ARN_W_THEME_SCIFI", 1000)
	stats.set_int(MPX() .. "ARN_W_THEME_APOC", 1000)
	stats.set_int(MPX() .. "ARN_W_THEME_CONS", 1000)
	stats.set_int(MPX() .. "ARN_W_PASS_THE_BOMB", 1000)
	stats.set_int(MPX() .. "ARN_W_DETONATION", 1000)
	stats.set_int(MPX() .. "ARN_W_ARCADE_RACE", 1000)
	stats.set_int(MPX() .. "ARN_W_CTF", 1000)
	stats.set_int(MPX() .. "ARN_W_TAG_TEAM", 1000)
	stats.set_int(MPX() .. "ARN_W_DESTR_DERBY", 1000)
	stats.set_int(MPX() .. "ARN_W_CARNAGE", 1000)
	stats.set_int(MPX() .. "ARN_W_MONSTER_JAM", 1000)
	stats.set_int(MPX() .. "ARN_W_GAMES_MASTERS", 1000)
	stats.set_int(MPX() .. "ARN_L_PASS_THE_BOMB", 500)
	stats.set_int(MPX() .. "ARN_L_DETONATION", 500)
	stats.set_int(MPX() .. "ARN_L_ARCADE_RACE", 500)
	stats.set_int(MPX() .. "ARN_L_CTF", 500)
	stats.set_int(MPX() .. "ARN_L_TAG_TEAM", 500)
	stats.set_int(MPX() .. "ARN_L_DESTR_DERBY", 500)
	stats.set_int(MPX() .. "ARN_L_CARNAGE", 500)
	stats.set_int(MPX() .. "ARN_L_MONSTER_JAM", 500)
	stats.set_int(MPX() .. "ARN_L_GAMES_MASTERS", 500)
	stats.set_int(MPX() .. "NUMBER_OF_CHAMP_BOUGHT", 1000)
	stats.set_int(MPX() .. "ARN_SPECTATOR_KILLS", 1000)
	stats.set_int(MPX() .. "ARN_LIFETIME_KILLS", 1000)
	stats.set_int(MPX() .. "ARN_LIFETIME_DEATHS", 500)
	stats.set_int(MPX() .. "ARENAWARS_CARRER_WINS", 1000)
	stats.set_int(MPX() .. "ARENAWARS_CARRER_WINT", 1000)
	stats.set_int(MPX() .. "ARENAWARS_MATCHES_PLYD", 1000)
	stats.set_int(MPX() .. "ARENAWARS_MATCHES_PLYDT", 1000)
	stats.set_int(MPX() .. "ARN_SPECTATOR_DRONE", 1000)
	stats.set_int(MPX() .. "ARN_SPECTATOR_CAMS", 1000)
	stats.set_int(MPX() .. "ARN_SMOKE", 1000)
	stats.set_int(MPX() .. "ARN_DRINK", 1000)
	stats.set_int(MPX() .. "ARN_VEH_MONSTER3", 1000)
	stats.set_int(MPX() .. "ARN_VEH_MONSTER4", 1000)
	stats.set_int(MPX() .. "ARN_VEH_MONSTER5", 1000)
	stats.set_int(MPX() .. "ARN_VEH_CERBERUS", 1000)
	stats.set_int(MPX() .. "ARN_VEH_CERBERUS2", 1000)
	stats.set_int(MPX() .. "ARN_VEH_CERBERUS3", 1000)
	stats.set_int(MPX() .. "ARN_VEH_BRUISER", 1000)
	stats.set_int(MPX() .. "ARN_VEH_BRUISER2", 1000)
	stats.set_int(MPX() .. "ARN_VEH_BRUISER3", 1000)
	stats.set_int(MPX() .. "ARN_VEH_SLAMVAN4", 1000)
	stats.set_int(MPX() .. "ARN_VEH_SLAMVAN5", 1000)
	stats.set_int(MPX() .. "ARN_VEH_SLAMVAN6", 1000)
	stats.set_int(MPX() .. "ARN_VEH_BRUTUS", 1000)
	stats.set_int(MPX() .. "ARN_VEH_BRUTUS2", 1000)
	stats.set_int(MPX() .. "ARN_VEH_BRUTUS3", 1000)
	stats.set_int(MPX() .. "ARN_VEH_SCARAB", 1000)
	stats.set_int(MPX() .. "ARN_VEH_SCARAB2", 1000)
	stats.set_int(MPX() .. "ARN_VEH_SCARAB3", 1000)
	stats.set_int(MPX() .. "ARN_VEH_DOMINATOR4", 1000)
	stats.set_int(MPX() .. "ARN_VEH_DOMINATOR5", 1000)
	stats.set_int(MPX() .. "ARN_VEH_DOMINATOR6", 1000)
	stats.set_int(MPX() .. "ARN_VEH_IMPALER2", 1000)
	stats.set_int(MPX() .. "ARN_VEH_IMPALER3", 1000)
	stats.set_int(MPX() .. "ARN_VEH_IMPALER4", 1000)
	stats.set_int(MPX() .. "ARN_VEH_ISSI4", 1000)
	stats.set_int(MPX() .. "ARN_VEH_ISSI5", 1000)
	stats.set_int(MPX() .. "ARN_VEH_ISSI6", 1000)
	stats.set_int(MPX() .. "ARN_VEH_IMPERATOR", 1000)
	stats.set_int(MPX() .. "ARN_VEH_IMPERATOR2", 1000)
	stats.set_int(MPX() .. "ARN_VEH_IMPERATOR3", 1000)
	stats.set_int(MPX() .. "ARN_VEH_ZR380", 1000)
	stats.set_int(MPX() .. "ARN_VEH_ZR3802", 1000)
	stats.set_int(MPX() .. "ARN_VEH_ZR3803", 1000)
	stats.set_int(MPX() .. "ARN_VEH_DEATHBIKE", 1000)
	stats.set_int(MPX() .. "ARN_VEH_DEATHBIKE2", 1000)
	stats.set_int(MPX() .. "ARN_VEH_DEATHBIKE3", 1000)
	stats.set_int(MPX() .. "NO_BOUGHT_HEALTH_SNACKS", 1000)
	stats.set_int(MPX() .. "NO_BOUGHT_EPIC_SNACKS", 1000)
	stats.set_int(MPX() .. "NUMBER_OF_ORANGE_BOUGHT", 1000)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_1_COUNT", 1000)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_2_COUNT", 1000)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_3_COUNT", 1000)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_4_COUNT", 1000)
	stats.set_int(MPX() .. "MP_CHAR_ARMOUR_5_COUNT", 1000)
	stats.set_int(MPX() .. "NUMBER_OF_BOURGE_BOUGHT", 1000)
	stats.set_int(MPX() .. "CIGARETTES_BOUGHT", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_1_WHITE", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_1_RED", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_1_BLUE", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_2_WHITE", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_2_RED", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_2_BLUE", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_3_WHITE", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_3_RED", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_3_BLUE", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_4_WHITE", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_4_RED", 1000)
	stats.set_int(MPX() .. "FIREWORK_TYPE_4_BLUE", 1000)
	stats.set_int(MPX() .. "FM_ACT_PHN", -1)
	stats.set_int(MPX() .. "FM_ACT_PH2", -1)
	stats.set_int(MPX() .. "FM_ACT_PH3", -1)
	stats.set_int(MPX() .. "FM_ACT_PH4", -1)
	stats.set_int(MPX() .. "FM_ACT_PH5", -1)
	stats.set_int(MPX() .. "FM_VEH_TX1", -1)
	stats.set_int(MPX() .. "FM_ACT_PH6", -1)
	stats.set_int(MPX() .. "FM_ACT_PH7", -1)
	stats.set_int(MPX() .. "FM_ACT_PH8", -1)
	stats.set_int(MPX() .. "FM_ACT_PH9", -1)
	stats.set_int(MPX() .. "LOWRIDER_FLOW_COMPLETE", 3)
	stats.set_int(MPX() .. "LOW_FLOW_CURRENT_PROG", 9)
	stats.set_int(MPX() .. "LOW_FLOW_CURRENT_CALL", 9)
	stats.set_int(MPX() .. "CR_GANGOP_MORGUE", 10)
	stats.set_int(MPX() .. "CR_GANGOP_DELUXO", 10)
	stats.set_int(MPX() .. "CR_GANGOP_SERVERFARM", 10)
	stats.set_int(MPX() .. "CR_GANGOP_IAABASE_FIN", 10)
	stats.set_int(MPX() .. "CR_GANGOP_STEALOSPREY", 10)
	stats.set_int(MPX() .. "CR_GANGOP_FOUNDRY", 10)
	stats.set_int(MPX() .. "CR_GANGOP_RIOTVAN", 10)
	stats.set_int(MPX() .. "CR_GANGOP_SUBMARINECAR", 10)
	stats.set_int(MPX() .. "CR_GANGOP_SUBMARINE_FIN", 10)
	stats.set_int(MPX() .. "CR_GANGOP_PREDATOR", 10)
	stats.set_int(MPX() .. "CR_GANGOP_BMLAUNCHER", 10)
	stats.set_int(MPX() .. "CR_GANGOP_BCCUSTOM", 10)
	stats.set_int(MPX() .. "CR_GANGOP_STEALTHTANKS", 10)
	stats.set_int(MPX() .. "CR_GANGOP_SPYPLANE", 10)
	stats.set_int(MPX() .. "CR_GANGOP_FINALE", 10)
	stats.set_int(MPX() .. "CR_GANGOP_FINALE_P2", 10)
	stats.set_int(MPX() .. "CR_GANGOP_FINALE_P3", 10)
	stats.set_int(MPX() .. "SNIPERRFL_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "HVYSNIPER_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "KILLS_COP", 4500)
	stats.set_int(MPX() .. "KILLS_SWAT", 500)
	stats.set_int(MPX() .. "CHAR_WANTED_LEVEL_TIME", 5000)
	stats.set_int(MPX() .. "NUMBER_STOLEN_COP_VEHICLE", 200)
	stats.set_int(MPX() .. "NUMBER_STOLEN_CARS", 200)
	stats.set_int(MPX() .. "NUMBER_STOLEN_BIKES", 200)
	stats.set_int(MPX() .. "NUMBER_STOLEN_BOATS", 200)
	stats.set_int(MPX() .. "NUMBER_STOLEN_HELIS", 200)
	stats.set_int(MPX() .. "NUMBER_STOLEN_PLANES", 200)
	stats.set_int(MPX() .. "NUMBER_STOLEN_QUADBIKES", 200)
	stats.set_int(MPX() .. "NUMBER_STOLEN_BICYCLES", 200)
	stats.set_int(MPX() .. "STARS_ATTAINED", 5000)
	stats.set_int(MPX() .. "STARS_EVADED", 4000)
	stats.set_int(MPX() .. "VEHEXPORTED", 500)
	stats.set_int(MPX() .. "TOTAL_NO_SHOPS_HELD_UP", 100)
	stats.set_int(MPX() .. "KILLS_ENEMY_GANG_MEMBERS", 500)
	stats.set_int(MPX() .. "KILLS_FRIENDLY_GANG_MEMBERS", 500)
	stats.set_int(MPX() .. "CR_GANGATTACK_CITY", 500)
	stats.set_int(MPX() .. "CR_GANGATTACK_COUNTRY", 500)
	stats.set_int(MPX() .. "CR_GANGATTACK_LOST", 500)
	stats.set_int(MPX() .. "CR_GANGATTACK_VAGOS", 500)
	stats.set_int(MPX() .. "HORDKILLS", 500)
	stats.set_int(MPX() .. "GHKILLS", 500)
	stats.set_int(MPX() .. "NO_NON_CONTRACT_RACE_WIN", 500)
	stats.set_int(MPX() .. "DB_SHOTTIME", 596)
	stats.set_int(MPX() .. "DB_KILLS", 500)
	stats.set_int(MPX() .. "DB_PLAYER_KILLS", 500)
	stats.set_int(MPX() .. "DB_SHOTS", 500)
	stats.set_int(MPX() .. "DB_HITS", 500)
	stats.set_int(MPX() .. "DB_HITS_PEDS_VEHICLES", 500)
	stats.set_int(MPX() .. "DB_HEADSHOTS", 500)
	stats.set_int(MPX() .. "USJS_COMPLETED", 25)
	stats.set_int(MPX() .. "AWD_FM_RACES_FASTEST_LAP", 50)
	stats.set_int(MPX() .. "NUMBER_SLIPSTREAMS_IN_RACE", 1000)
	stats.set_int(MPX() .. "AWD_WIN_CAPTURES", 500)
	stats.set_int(MPX() .. "AWD_DROPOFF_CAP_PACKAGES", 100)
	stats.set_int(MPX() .. "AWD_KILL_CARRIER_CAPTURE", 100)
	stats.set_int(MPX() .. "AWD_FINISH_HEISTS", 50)
	stats.set_int(MPX() .. "AWD_FINISH_HEIST_SETUP_JOB", 50)
	stats.set_int(MPX() .. "AWD_NIGHTVISION_KILLS", 100)
	stats.set_int(MPX() .. "AWD_WIN_LAST_TEAM_STANDINGS", 50)
	stats.set_int(MPX() .. "AWD_ONLY_PLAYER_ALIVE_LTS", 50)
	stats.set_int(MPX() .. "AWD_FMRALLYWONDRIVE", 25)
	stats.set_int(MPX() .. "AWD_FMRALLYWONNAV", 25)
	stats.set_int(MPX() .. "AWD_FMWINAIRRACE", 25)
	stats.set_int(MPX() .. "AWD_FMWINSEARACE", 25)
	stats.set_int(MPX() .. "RACES_WON", 50)
	stats.set_int(MPX() .. "FAVOUTFITBIKETIMECURRENT", 884483972)
	stats.set_int(MPX() .. "FAVOUTFITBIKETIME1ALLTIME", 884483972)
	stats.set_int(MPX() .. "FAVOUTFITBIKETYPECURRENT", 884483972)
	stats.set_int(MPX() .. "FAVOUTFITBIKETYPEALLTIME", 884483972)
	stats.set_int(MPX() .. "LIFETIME_BUY_COMPLETE", 1000)
	stats.set_int(MPX() .. "LIFETIME_BUY_UNDERTAKEN", 1000)
	stats.set_int(MPX() .. "LIFETIME_SELL_COMPLETE", 1000)
	stats.set_int(MPX() .. "LIFETIME_SELL_UNDERTAKEN", 1000)
	stats.set_int(MPX() .. "LIFETIME_CONTRA_EARNINGS", 30000000)
	stats.set_int(MPX() .. "TATTOO_FM_CURRENT_32", 32768)
	stats.set_int(MPX() .. "TATTOO_FM_CURRENT_32", 67108864)
	stats.set_int(MPX() .. "DELUXO_BULLET_HITS", 500)
	stats.set_int(MPX() .. "DELUXO_BULLET_HEADSHOTS", 500)
	stats.set_int(MPX() .. "DELUXO_BULLET_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DELUXO_BULLET_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DELUXO_ROCKET_KILLS", 500)
	stats.set_int(MPX() .. "DELUXO_ROCKET_DEATHS", 100)
	stats.set_int(MPX() .. "DELUXO_ROCKET_SHOTS", 500)
	stats.set_int(MPX() .. "DELUXO_ROCKET_HITS", 500)
	stats.set_int(MPX() .. "DELUXO_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DELUXO_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DELUXO_BULLET_KILLS", 500)
	stats.set_int(MPX() .. "DELUXO_BULLET_DEATHS", 100)
	stats.set_int(MPX() .. "DELUXO_BULLET_SHOTS", 500)
	stats.set_int(MPX() .. "COMET4_MG_KILLS", 500)
	stats.set_int(MPX() .. "COMET4_MG_DEATHS", 100)
	stats.set_int(MPX() .. "COMET4_MG_SHOTS", 500)
	stats.set_int(MPX() .. "COMET4_MG_HITS", 500)
	stats.set_int(MPX() .. "COMET4_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "COMET4_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "COMET4_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "CHERNOBOG_MISS_KILLS", 500)
	stats.set_int(MPX() .. "CHERNOBOG_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "CHERNOBOG_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "CHERNOBOG_MISS_HITS", 500)
	stats.set_int(MPX() .. "CHERNOBOG_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "CHERNOBOG_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_MG_KILLS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_MG_DEATHS", 100)
	stats.set_int(MPX() .. "BARRAGE_R_MG_SHOTS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_MG_HITS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BARRAGE_R_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_MINI_KILLS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "BARRAGE_R_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_MINI_HITS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BARRAGE_R_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_GL_KILLS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_GL_DEATHS", 100)
	stats.set_int(MPX() .. "BARRAGE_R_GL_SHOTS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_GL_HITS", 500)
	stats.set_int(MPX() .. "BARRAGE_R_GL_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BARRAGE_R_GL_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BARRAGE_T_MG_KILLS", 500)
	stats.set_int(MPX() .. "BARRAGE_T_MG_DEATHS", 100)
	stats.set_int(MPX() .. "BARRAGE_T_MG_SHOTS", 500)
	stats.set_int(MPX() .. "BARRAGE_T_MG_HITS", 500)
	stats.set_int(MPX() .. "BARRAGE_T_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BARRAGE_T_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BARRAGE_T_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "BARRAGE_T_MINI_KILLS", 500)
	stats.set_int(MPX() .. "BARRAGE_T_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "BARRAGE_T_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "BARRAGE_T_MINI_HITS", 500)
	stats.set_int(MPX() .. "BARRAGE_T_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "BARRAGE_T_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "BARRAGE_T_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "AVENGER_CANNON_KILLS", 500)
	stats.set_int(MPX() .. "AVENGER_CANNON_DEATHS", 100)
	stats.set_int(MPX() .. "AVENGER_CANNON_SHOTS", 500)
	stats.set_int(MPX() .. "AVENGER_CANNON_HITS", 500)
	stats.set_int(MPX() .. "AVENGER_CANNON_HELDTIME", 5963259)
	stats.set_int(MPX() .. "AVENGER_CANNON_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "AKULA_TURR_KILLS", 500)
	stats.set_int(MPX() .. "AKULA_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "AKULA_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "AKULA_TURR_HITS", 500)
	stats.set_int(MPX() .. "AKULA_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "AKULA_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "AKULA_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "AKULA_DTURR_KILLS", 500)
	stats.set_int(MPX() .. "AKULA_DTURR_DEATHS", 100)
	stats.set_int(MPX() .. "AKULA_DTURR_SHOTS", 500)
	stats.set_int(MPX() .. "AKULA_DTURR_HITS", 500)
	stats.set_int(MPX() .. "AKULA_DTURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "AKULA_DTURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "AKULA_DTURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "AKULA_MINI_KILLS", 500)
	stats.set_int(MPX() .. "AKULA_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "AKULA_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "AKULA_MINI_HITS", 500)
	stats.set_int(MPX() .. "AKULA_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "AKULA_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "AKULA_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "AKULA_BARR_KILLS", 500)
	stats.set_int(MPX() .. "AKULA_BARR_DEATHS", 100)
	stats.set_int(MPX() .. "AKULA_BARR_SHOTS", 500)
	stats.set_int(MPX() .. "AKULA_BARR_HITS", 500)
	stats.set_int(MPX() .. "AKULA_BARR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "AKULA_BARR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "AKULA_ROCKET_KILLS", 500)
	stats.set_int(MPX() .. "AKULA_ROCKET_DEATHS", 100)
	stats.set_int(MPX() .. "AKULA_ROCKET_SHOTS", 500)
	stats.set_int(MPX() .. "AKULA_ROCKET_HITS", 500)
	stats.set_int(MPX() .. "AKULA_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX() .. "AKULA_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ARENA_MG_KILLS", 500)
	stats.set_int(MPX() .. "ARENA_MG_DEATHS", 100)
	stats.set_int(MPX() .. "ARENA_MG_SHOTS", 500)
	stats.set_int(MPX() .. "ARENA_MG_HITS", 500)
	stats.set_int(MPX() .. "ARENA_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "ARENA_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ARENA_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ARENA_HM_KILLS", 500)
	stats.set_int(MPX() .. "ARENA_HM_DEATHS", 100)
	stats.set_int(MPX() .. "ARENA_HM_SHOTS", 500)
	stats.set_int(MPX() .. "ARENA_HM_HITS", 500)
	stats.set_int(MPX() .. "ARENA_HM_HELDTIME", 5963259)
	stats.set_int(MPX() .. "RCMINE_KIN_KILLS", 500)
	stats.set_int(MPX() .. "RCMINE_KIN_DEATHS", 100)
	stats.set_int(MPX() .. "RCMINE_KIN_SHOTS", 500)
	stats.set_int(MPX() .. "RCMINE_KIN_HITS", 500)
	stats.set_int(MPX() .. "RCMINE_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "RCMINE_EMP_KILLS", 500)
	stats.set_int(MPX() .. "RCMINE_EMP_DEATHS", 100)
	stats.set_int(MPX() .. "RCMINE_EMP_SHOTS", 500)
	stats.set_int(MPX() .. "RCMINE_EMP_HITS", 500)
	stats.set_int(MPX() .. "RCMINE_EMP_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "RCMINE_SPI_KILLS", 500)
	stats.set_int(MPX() .. "RCMINE_SPI_DEATHS", 100)
	stats.set_int(MPX() .. "RCMINE_SPI_SHOTS", 500)
	stats.set_int(MPX() .. "RCMINE_SPI_HITS", 500)
	stats.set_int(MPX() .. "RCMINE_SPI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "RCMINE_SLI_KILLS", 500)
	stats.set_int(MPX() .. "RCMINE_SLI_DEATHS", 100)
	stats.set_int(MPX() .. "RCMINE_SLI_SHOTS", 500)
	stats.set_int(MPX() .. "RCMINE_SLI_HITS", 500)
	stats.set_int(MPX() .. "RCMINE_SLI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "RCMINE_TAR_KILLS", 500)
	stats.set_int(MPX() .. "RCMINE_TAR_DEATHS", 100)
	stats.set_int(MPX() .. "RCMINE_TAR_SHOTS", 500)
	stats.set_int(MPX() .. "RCMINE_TAR_HITS", 500)
	stats.set_int(MPX() .. "RCMINE_TAR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_DEATHS", 100)
	stats.set_int(MPX() .. "VEHMINE_SHOTS", 500)
	stats.set_int(MPX() .. "VEHMINE_HITS", 500)
	stats.set_int(MPX() .. "VEHMINE_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_KIN_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_KIN_DEATHS", 100)
	stats.set_int(MPX() .. "VEHMINE_KIN_SHOTS", 500)
	stats.set_int(MPX() .. "VEHMINE_KIN_HITS", 500)
	stats.set_int(MPX() .. "VEHMINE_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_EMP_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_EMP_DEATHS", 100)
	stats.set_int(MPX() .. "VEHMINE_EMP_SHOTS", 500)
	stats.set_int(MPX() .. "VEHMINE_EMP_HITS", 500)
	stats.set_int(MPX() .. "VEHMINE_EMP_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_SPI_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_SPI_DEATHS", 100)
	stats.set_int(MPX() .. "VEHMINE_SPI_SHOTS", 500)
	stats.set_int(MPX() .. "VEHMINE_SPI_HITS", 500)
	stats.set_int(MPX() .. "VEHMINE_SPI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_SLI_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_SLI_DEATHS", 100)
	stats.set_int(MPX() .. "VEHMINE_SLI_SHOTS", 500)
	stats.set_int(MPX() .. "VEHMINE_SLI_HITS", 500)
	stats.set_int(MPX() .. "VEHMINE_SLI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_TAR_KILLS", 500)
	stats.set_int(MPX() .. "VEHMINE_TAR_DEATHS", 100)
	stats.set_int(MPX() .. "VEHMINE_TAR_SHOTS", 500)
	stats.set_int(MPX() .. "VEHMINE_TAR_HITS", 500)
	stats.set_int(MPX() .. "VEHMINE_TAR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ZR3803_MG50_KILLS", 500)
	stats.set_int(MPX() .. "ZR3803_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "ZR3803_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "ZR3803_MG50_HITS", 500)
	stats.set_int(MPX() .. "ZR3803_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "ZR3803_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ZR3803_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ZR3802_MG50_KILLS", 500)
	stats.set_int(MPX() .. "ZR3802_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "ZR3802_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "ZR3802_MG50_HITS", 500)
	stats.set_int(MPX() .. "ZR3802_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "ZR3802_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ZR3802_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ZR3802_LAS_KILLS", 500)
	stats.set_int(MPX() .. "ZR3802_LAS_DEATHS", 100)
	stats.set_int(MPX() .. "ZR3802_LAS_SHOTS", 500)
	stats.set_int(MPX() .. "ZR3802_LAS_HITS", 500)
	stats.set_int(MPX() .. "ZR3802_LAS_HEADSHOTS", 500)
	stats.set_int(MPX() .. "ZR3802_LAS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ZR3802_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ZR380_MG50_KILLS", 500)
	stats.set_int(MPX() .. "ZR380_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "ZR380_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "ZR380_MG50_HITS", 500)
	stats.set_int(MPX() .. "ZR380_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "ZR380_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ZR380_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SLAMVAN4_MG50_KILLS", 500)
	stats.set_int(MPX() .. "SLAMVAN4_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "SLAMVAN4_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "SLAMVAN4_MG50_HITS", 500)
	stats.set_int(MPX() .. "SLAMVAN4_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SLAMVAN4_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SLAMVAN4_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SLAMVAN5_MG50_KILLS", 500)
	stats.set_int(MPX() .. "SLAMVAN5_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "SLAMVAN5_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "SLAMVAN5_MG50_HITS", 500)
	stats.set_int(MPX() .. "SLAMVAN5_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SLAMVAN5_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SLAMVAN5_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SLAMVAN5_LAS_KILLS", 500)
	stats.set_int(MPX() .. "SLAMVAN5_LAS_DEATHS", 100)
	stats.set_int(MPX() .. "SLAMVAN5_LAS_SHOTS", 500)
	stats.set_int(MPX() .. "SLAMVAN5_LAS_HITS", 500)
	stats.set_int(MPX() .. "SLAMVAN5_LAS_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SLAMVAN5_LAS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SLAMVAN5_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SLAMVAN6_MG50_KILLS", 500)
	stats.set_int(MPX() .. "SLAMVAN6_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "SLAMVAN6_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "SLAMVAN6_MG50_HITS", 500)
	stats.set_int(MPX() .. "SLAMVAN6_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SLAMVAN6_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SLAMVAN6_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SCARAB_MG50_KILLS", 500)
	stats.set_int(MPX() .. "SCARAB_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "SCARAB_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "SCARAB_MG50_HITS", 500)
	stats.set_int(MPX() .. "SCARAB_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SCARAB_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SCARAB_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SCARAB2_MG50_KILLS", 500)
	stats.set_int(MPX() .. "SCARAB2_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "SCARAB2_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "SCARAB2_MG50_HITS", 500)
	stats.set_int(MPX() .. "SCARAB2_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SCARAB2_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SCARAB2_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SCARAB2_LAS_KILLS", 500)
	stats.set_int(MPX() .. "SCARAB2_LAS_DEATHS", 100)
	stats.set_int(MPX() .. "SCARAB2_LAS_SHOTS", 500)
	stats.set_int(MPX() .. "SCARAB2_LAS_HITS", 500)
	stats.set_int(MPX() .. "SCARAB2_LAS_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SCARAB2_LAS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SCARAB2_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SCARAB3_MG50_KILLS", 500)
	stats.set_int(MPX() .. "SCARAB3_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "SCARAB3_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "SCARAB3_MG50_HITS", 500)
	stats.set_int(MPX() .. "SCARAB3_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SCARAB3_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SCARAB3_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MONSTER3_KIN_KILLS", 500)
	stats.set_int(MPX() .. "MONSTER3_KIN_DEATHS", 100)
	stats.set_int(MPX() .. "MONSTER3_KIN_SHOTS", 500)
	stats.set_int(MPX() .. "MONSTER3_KIN_HITS", 500)
	stats.set_int(MPX() .. "MONSTER3_KIN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MONSTER3_KIN_ENEMY_KILL", 500)
	stats.set_int(MPX() .. "MONSTER4_KIN_KILLS", 500)
	stats.set_int(MPX() .. "MONSTER4_KIN_DEATHS", 100)
	stats.set_int(MPX() .. "MONSTER4_KIN_SHOTS", 500)
	stats.set_int(MPX() .. "MONSTER4_KIN_HITS", 500)
	stats.set_int(MPX() .. "MONSTER4_KIN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MONSTER4_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "MONSTER5_KIN_KILLS", 500)
	stats.set_int(MPX() .. "MONSTER5_KIN_DEATHS", 100)
	stats.set_int(MPX() .. "MONSTER5_KIN_SHOTS", 500)
	stats.set_int(MPX() .. "MONSTER5_KIN_HITS", 500)
	stats.set_int(MPX() .. "MONSTER5_KIN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "MONSTER5_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ISSI4_MG50_KILLS", 500)
	stats.set_int(MPX() .. "ISSI4_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "ISSI4_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "ISSI4_MG50_HITS", 500)
	stats.set_int(MPX() .. "ISSI4_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "ISSI4_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ISSI4_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ISSI4_KIN_KILLS", 500)
	stats.set_int(MPX() .. "ISSI4_KIN_DEATHS", 100)
	stats.set_int(MPX() .. "ISSI4_KIN_SHOTS", 500)
	stats.set_int(MPX() .. "ISSI4_KIN_HITS", 500)
	stats.set_int(MPX() .. "ISSI4_KIN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ISSI4_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ISSI5_MG50_KILLS", 500)
	stats.set_int(MPX() .. "ISSI5_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "ISSI5_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "ISSI5_MG50_HITS", 500)
	stats.set_int(MPX() .. "ISSI5_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "ISSI5_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ISSI5_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ISSI5_LAS_KILLS", 500)
	stats.set_int(MPX() .. "ISSI5_LAS_DEATHS", 100)
	stats.set_int(MPX() .. "ISSI5_LAS_SHOTS", 500)
	stats.set_int(MPX() .. "ISSI5_LAS_HITS", 500)
	stats.set_int(MPX() .. "ISSI5_LAS_HEADSHOTS", 500)
	stats.set_int(MPX() .. "ISSI5_LAS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ISSI5_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ISSI5_KIN_KILLS", 500)
	stats.set_int(MPX() .. "ISSI5_KIN_DEATHS", 100)
	stats.set_int(MPX() .. "ISSI5_KIN_SHOTS", 500)
	stats.set_int(MPX() .. "ISSI5_KIN_HITS", 500)
	stats.set_int(MPX() .. "ISSI5_KIN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ISSI5_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ISSI6_MG50_KILLS", 500)
	stats.set_int(MPX() .. "ISSI6_MG50_DEATHS", 100)
	stats.set_int(MPX() .. "ISSI6_MG50_SHOTS", 500)
	stats.set_int(MPX() .. "ISSI6_MG50_HITS", 500)
	stats.set_int(MPX() .. "ISSI6_MG50_HEADSHOTS", 500)
	stats.set_int(MPX() .. "ISSI6_MG50_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ISSI6_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ISSI6_KIN_KILLS", 500)
	stats.set_int(MPX() .. "ISSI6_KIN_DEATHS", 100)
	stats.set_int(MPX() .. "ISSI6_KIN_SHOTS", 500)
	stats.set_int(MPX() .. "ISSI6_KIN_HITS", 500)
	stats.set_int(MPX() .. "ISSI6_KIN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ISSI6_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ARN_SPECTATOR_KILLS", 500)
	stats.set_int(MPX() .. "ARN_LIFETIME_KILLS", 500)
	stats.set_int(MPX() .. "ARN_LIFETIME_DEATHS", 100)
	stats.set_int(MPX() .. "TRSMALL2_QUAD_KILLS", 500)
	stats.set_int(MPX() .. "TRSMALL2_QUAD_DEATHS", 100)
	stats.set_int(MPX() .. "TRSMALL2_QUAD_SHOTS", 500)
	stats.set_int(MPX() .. "TRSMALL2_QUAD_HITS", 500)
	stats.set_int(MPX() .. "TRSMALL2_QUAD_HEADSHOTS", 500)
	stats.set_int(MPX() .. "TRSMALL2_QUAD_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TRSMALL2_QUAD_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TRSMALL2_DUAL_KILLS", 500)
	stats.set_int(MPX() .. "TRSMALL2_DUAL_DEATHS", 100)
	stats.set_int(MPX() .. "TRSMALL2_DUAL_SHOTS", 500)
	stats.set_int(MPX() .. "TRSMALL2_DUAL_HITS", 500)
	stats.set_int(MPX() .. "TRSMALL2_DUAL_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TRSMALL2_DUAL_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TRSMALL2_MISS_KILLS", 500)
	stats.set_int(MPX() .. "TRSMALL2_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "TRSMALL2_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "TRSMALL2_MISS_HITS", 500)
	stats.set_int(MPX() .. "TRSMALL2_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TRSMALL2_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TRLARGE_CANNON_KILLS", 500)
	stats.set_int(MPX() .. "TRLARGE_CANNON_DEATHS", 100)
	stats.set_int(MPX() .. "TRLARGE_CANNON_SHOTS", 500)
	stats.set_int(MPX() .. "TRLARGE_CANNON_HITS", 500)
	stats.set_int(MPX() .. "TRLARGE_CANNON_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TRLARGE_CANNON_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "POUNDER2_MINI_KILLS", 500)
	stats.set_int(MPX() .. "POUNDER2_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "POUNDER2_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "POUNDER2_MINI_HITS", 500)
	stats.set_int(MPX() .. "POUNDER2_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "POUNDER2_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "POUNDER2_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "POUNDER2_MISS_KILLS", 500)
	stats.set_int(MPX() .. "POUNDER2_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "POUNDER2_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "POUNDER2_MISS_HITS", 500)
	stats.set_int(MPX() .. "POUNDER2_MISS_HEADSHOTS", 500)
	stats.set_int(MPX() .. "POUNDER2_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "POUNDER2_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "POUNDER2_BARR_KILLS", 500)
	stats.set_int(MPX() .. "POUNDER2_BARR_DEATHS", 100)
	stats.set_int(MPX() .. "POUNDER2_BARR_SHOTS", 500)
	stats.set_int(MPX() .. "POUNDER2_BARR_HITS", 500)
	stats.set_int(MPX() .. "POUNDER2_BARR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "POUNDER2_BARR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "POUNDER2_GL_KILLS", 500)
	stats.set_int(MPX() .. "POUNDER2_GL_DEATHS", 100)
	stats.set_int(MPX() .. "POUNDER2_GL_SHOTS", 500)
	stats.set_int(MPX() .. "POUNDER2_GL_HITS", 500)
	stats.set_int(MPX() .. "POUNDER2_GL_HELDTIME", 5963259)
	stats.set_int(MPX() .. "POUNDER2_GL_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SCRAMJET_MG_KILLS", 500)
	stats.set_int(MPX() .. "SCRAMJET_MG_DEATHS", 100)
	stats.set_int(MPX() .. "SCRAMJET_MG_SHOTS", 500)
	stats.set_int(MPX() .. "SCRAMJET_MG_HITS", 500)
	stats.set_int(MPX() .. "SCRAMJET_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SCRAMJET_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SCRAMJET_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SCRAMJET_MISS_KILLS", 500)
	stats.set_int(MPX() .. "SCRAMJET_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "SCRAMJET_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "SCRAMJET_MISS_HITS", 500)
	stats.set_int(MPX() .. "SCRAMJET_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SCRAMJET_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SPEEDO4_MG_KILLS", 500)
	stats.set_int(MPX() .. "SPEEDO4_MG_DEATHS", 100)
	stats.set_int(MPX() .. "SPEEDO4_MG_SHOTS", 500)
	stats.set_int(MPX() .. "SPEEDO4_MG_HITS", 500)
	stats.set_int(MPX() .. "SPEEDO4_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SPEEDO4_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SPEEDO4_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SPEEDO4_TURR_KILLS", 500)
	stats.set_int(MPX() .. "SPEEDO4_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "SPEEDO4_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "SPEEDO4_TURR_HITS", 500)
	stats.set_int(MPX() .. "SPEEDO4_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SPEEDO4_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SPEEDO4_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SPEEDO4_MINI_KILLS", 500)
	stats.set_int(MPX() .. "SPEEDO4_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "SPEEDO4_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "SPEEDO4_MINI_HITS", 500)
	stats.set_int(MPX() .. "SPEEDO4_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SPEEDO4_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SPEEDO4_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_BAR_KILLS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_BAR_DEATHS", 100)
	stats.set_int(MPX() .. "STRIKEFORCE_BAR_SHOTS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_BAR_HITS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_BAR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "STRIKEFORCE_BAR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_CAN_KILLS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_CAN_DEATHS", 100)
	stats.set_int(MPX() .. "STRIKEFORCE_CAN_SHOTS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_CAN_HITS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_CAN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "STRIKEFORCE_CAN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_MIS_KILLS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_MIS_DEATHS", 100)
	stats.set_int(MPX() .. "STRIKEFORCE_MIS_SHOTS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_MIS_HITS", 500)
	stats.set_int(MPX() .. "STRIKEFORCE_MIS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "STRIKEFORCE_MIS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TERBYTE_MISS_KILLS", 500)
	stats.set_int(MPX() .. "TERBYTE_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "TERBYTE_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "TERBYTE_MISS_HITS", 500)
	stats.set_int(MPX() .. "TERBYTE_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TERBYTE_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TERBYTE_HMISS_KILLS", 500)
	stats.set_int(MPX() .. "TERBYTE_HMISS_DEATHS", 100)
	stats.set_int(MPX() .. "TERBYTE_HMISS_SHOTS", 500)
	stats.set_int(MPX() .. "TERBYTE_HMISS_HITS", 500)
	stats.set_int(MPX() .. "TERBYTE_HMISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TERBYTE_HMISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "CARACARA_MINI_KILLS", 500)
	stats.set_int(MPX() .. "CARACARA_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "CARACARA_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "CARACARA_MINI_HITS", 500)
	stats.set_int(MPX() .. "CARACARA_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "CARACARA_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "CARACARA_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "CARACARA_TURR_KILLS", 500)
	stats.set_int(MPX() .. "CARACARA_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "CARACARA_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "CARACARA_TURR_HITS", 500)
	stats.set_int(MPX() .. "CARACARA_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "CARACARA_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "CARACARA_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SPARROW_MINI_KILLS", 500)
	stats.set_int(MPX() .. "SPARROW_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "SPARROW_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "SPARROW_MINI_HITS", 500)
	stats.set_int(MPX() .. "SPARROW_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "SPARROW_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SPARROW_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SPARROW_ROCKET_KILLS", 500)
	stats.set_int(MPX() .. "SPARROW_ROCKET_DEATHS", 100)
	stats.set_int(MPX() .. "SPARROW_ROCKET_SHOTS", 500)
	stats.set_int(MPX() .. "SPARROW_ROCKET_HITS", 500)
	stats.set_int(MPX() .. "SPARROW_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX() .. "SPARROW_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "APC_CANN_KILLS", 500)
	stats.set_int(MPX() .. "APC_CANN_DEATHS", 100)
	stats.set_int(MPX() .. "APC_CANN_SHOTS", 500)
	stats.set_int(MPX() .. "APC_CANN_HITS", 500)
	stats.set_int(MPX() .. "APC_CANN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "APC_CANN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "APC_MISS_KILLS", 500)
	stats.set_int(MPX() .. "APC_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "APC_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "APC_MISS_HITS", 500)
	stats.set_int(MPX() .. "APC_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "APC_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "APC_MG_KILLS", 500)
	stats.set_int(MPX() .. "APC_MG_DEATHS", 100)
	stats.set_int(MPX() .. "APC_MG_SHOTS", 500)
	stats.set_int(MPX() .. "APC_MG_HITS", 500)
	stats.set_int(MPX() .. "APC_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "APC_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "APC_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "ARDENT_MG_KILLS", 500)
	stats.set_int(MPX() .. "ARDENT_MG_DEATHS", 100)
	stats.set_int(MPX() .. "ARDENT_MG_SHOTS", 500)
	stats.set_int(MPX() .. "ARDENT_MG_HITS", 500)
	stats.set_int(MPX() .. "ARDENT_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "ARDENT_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "ARDENT_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DUNE3_MG_KILLS", 500)
	stats.set_int(MPX() .. "DUNE3_MG_DEATHS", 100)
	stats.set_int(MPX() .. "DUNE3_MG_SHOTS", 500)
	stats.set_int(MPX() .. "DUNE3_MG_HITS", 500)
	stats.set_int(MPX() .. "DUNE3_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "DUNE3_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DUNE3_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DUNE3_GL_KILLS", 500)
	stats.set_int(MPX() .. "DUNE3_GL_DEATHS", 100)
	stats.set_int(MPX() .. "DUNE3_GL_SHOTS", 500)
	stats.set_int(MPX() .. "DUNE3_GL_HITS", 500)
	stats.set_int(MPX() .. "DUNE3_GL_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DUNE3_GL_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "DUNE3_MINI_KILLS", 500)
	stats.set_int(MPX() .. "DUNE3_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "DUNE3_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "DUNE3_MINI_HITS", 500)
	stats.set_int(MPX() .. "DUNE3_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "DUNE3_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "DUNE3_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "HALFTRACK_DUAL_KILLS", 500)
	stats.set_int(MPX() .. "HALFTRACK_DUAL_DEATHS", 100)
	stats.set_int(MPX() .. "HALFTRACK_DUAL_SHOTS", 500)
	stats.set_int(MPX() .. "HALFTRACK_DUAL_HITS", 500)
	stats.set_int(MPX() .. "HALFTRACK_DUAL_HEADSHOTS", 500)
	stats.set_int(MPX() .. "HALFTRACK_DUAL_HELDTIME", 5963259)
	stats.set_int(MPX() .. "HALFTRACK_DUAL_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "HALFTRACK_QUAD_KILLS", 500)
	stats.set_int(MPX() .. "HALFTRACK_QUAD_DEATHS", 100)
	stats.set_int(MPX() .. "HALFTRACK_QUAD_SHOTS", 500)
	stats.set_int(MPX() .. "HALFTRACK_QUAD_HITS", 500)
	stats.set_int(MPX() .. "HALFTRACK_QUAD_HEADSHOTS", 500)
	stats.set_int(MPX() .. "HALFTRACK_QUAD_HELDTIME", 5963259)
	stats.set_int(MPX() .. "HALFTRACK_QUAD_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "INSURGENT3_MINI_KILLS", 500)
	stats.set_int(MPX() .. "INSURGENT3_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "INSURGENT3_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "INSURGENT3_MINI_HITS", 500)
	stats.set_int(MPX() .. "INSURGENT3_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "INSURGENT3_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "INSURGENT3_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "INSURGENT3_TURR_KILLS", 500)
	stats.set_int(MPX() .. "INSURGENT3_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "INSURGENT3_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "INSURGENT3_TURR_HITS", 500)
	stats.set_int(MPX() .. "INSURGENT3_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "INSURGENT3_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "INSURGENT3_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "NIGHTSHARK_MG_KILLS", 500)
	stats.set_int(MPX() .. "NIGHTSHARK_MG_DEATHS", 100)
	stats.set_int(MPX() .. "NIGHTSHARK_MG_SHOTS", 500)
	stats.set_int(MPX() .. "NIGHTSHARK_MG_HITS", 500)
	stats.set_int(MPX() .. "NIGHTSHARK_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "NIGHTSHARK_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "NIGHTSHARK_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "OPPRESSOR_MG_KILLS", 500)
	stats.set_int(MPX() .. "OPPRESSOR_MG_DEATHS", 100)
	stats.set_int(MPX() .. "OPPRESSOR_MG_SHOTS", 500)
	stats.set_int(MPX() .. "OPPRESSOR_MG_HITS", 500)
	stats.set_int(MPX() .. "OPPRESSOR_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "OPPRESSOR_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "OPPRESSOR_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "OPPRESSOR_MISS_KILLS", 500)
	stats.set_int(MPX() .. "OPPRESSOR_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "OPPRESSOR_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "OPPRESSOR_MISS_HITS", 500)
	stats.set_int(MPX() .. "OPPRESSOR_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "OPPRESSOR_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TAMPA3_MISS_KILLS", 500)
	stats.set_int(MPX() .. "TAMPA3_MISS_DEATHS", 100)
	stats.set_int(MPX() .. "TAMPA3_MISS_SHOTS", 500)
	stats.set_int(MPX() .. "TAMPA3_MISS_HITS", 500)
	stats.set_int(MPX() .. "TAMPA3_MISS_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TAMPA3_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TAMPA3_MORT_KILLS", 500)
	stats.set_int(MPX() .. "TAMPA3_MORT_DEATHS", 100)
	stats.set_int(MPX() .. "TAMPA3_MORT_SHOTS", 500)
	stats.set_int(MPX() .. "TAMPA3_MORT_HITS", 500)
	stats.set_int(MPX() .. "TAMPA3_MORT_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TAMPA3_MORT_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TAMPA3_FMINI_KILLS", 500)
	stats.set_int(MPX() .. "TAMPA3_FMINI_DEATHS", 100)
	stats.set_int(MPX() .. "TAMPA3_FMINI_SHOTS", 500)
	stats.set_int(MPX() .. "TAMPA3_FMINI_HITS", 500)
	stats.set_int(MPX() .. "TAMPA3_FMINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "TAMPA3_FMINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TAMPA3_FMINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TAMPA3_DMINI_KILLS", 500)
	stats.set_int(MPX() .. "TAMPA3_DMINI_DEATHS", 100)
	stats.set_int(MPX() .. "TAMPA3_DMINI_SHOTS", 500)
	stats.set_int(MPX() .. "TAMPA3_DMINI_HITS", 500)
	stats.set_int(MPX() .. "TAMPA3_DMINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "TAMPA3_DMINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TAMPA3_DMINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TECHNICAL3_MINI_KILLS", 500)
	stats.set_int(MPX() .. "TECHNICAL3_MINI_DEATHS", 100)
	stats.set_int(MPX() .. "TECHNICAL3_MINI_SHOTS", 500)
	stats.set_int(MPX() .. "TECHNICAL3_MINI_HITS", 500)
	stats.set_int(MPX() .. "TECHNICAL3_MINI_HEADSHOTS", 500)
	stats.set_int(MPX() .. "TECHNICAL3_MINI_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TECHNICAL3_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "TECHNICAL3_TURR_KILLS", 500)
	stats.set_int(MPX() .. "TECHNICAL3_TURR_DEATHS", 100)
	stats.set_int(MPX() .. "TECHNICAL3_TURR_SHOTS", 500)
	stats.set_int(MPX() .. "TECHNICAL3_TURR_HITS", 500)
	stats.set_int(MPX() .. "TECHNICAL3_TURR_HEADSHOTS", 500)
	stats.set_int(MPX() .. "TECHNICAL3_TURR_HELDTIME", 5963259)
	stats.set_int(MPX() .. "TECHNICAL3_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "KHANJALI_ROCKET_KILLS", 500)
	stats.set_int(MPX() .. "KHANJALI_ROCKET_DEATHS", 100)
	stats.set_int(MPX() .. "KHANJALI_ROCKET_SHOTS", 500)
	stats.set_int(MPX() .. "KHANJALI_ROCKET_HITS", 500)
	stats.set_int(MPX() .. "KHANJALI_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX() .. "KHANJALI_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "KHANJALI_HCANN_KILLS", 500)
	stats.set_int(MPX() .. "KHANJALI_HCANN_DEATHS", 100)
	stats.set_int(MPX() .. "KHANJALI_HCANN_SHOTS", 500)
	stats.set_int(MPX() .. "KHANJALI_HCANN_HITS", 500)
	stats.set_int(MPX() .. "KHANJALI_HCANN_HELDTIME", 5963259)
	stats.set_int(MPX() .. "KHANJALI_HCANN_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "KHANJALI_MG_KILLS", 500)
	stats.set_int(MPX() .. "KHANJALI_MG_DEATHS", 100)
	stats.set_int(MPX() .. "KHANJALI_MG_SHOTS", 500)
	stats.set_int(MPX() .. "KHANJALI_MG_HITS", 500)
	stats.set_int(MPX() .. "KHANJALI_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "KHANJALI_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "KHANJALI_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "KHANJALI_GL_KILLS", 500)
	stats.set_int(MPX() .. "KHANJALI_GL_DEATHS", 100)
	stats.set_int(MPX() .. "KHANJALI_GL_SHOTS", 500)
	stats.set_int(MPX() .. "KHANJALI_GL_HITS", 500)
	stats.set_int(MPX() .. "KHANJALI_GL_HELDTIME", 5963259)
	stats.set_int(MPX() .. "KHANJALI_GL_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "REVOLTER_MG_KILLS", 500)
	stats.set_int(MPX() .. "REVOLTER_MG_DEATHS", 100)
	stats.set_int(MPX() .. "REVOLTER_MG_SHOTS", 500)
	stats.set_int(MPX() .. "REVOLTER_MG_HITS", 500)
	stats.set_int(MPX() .. "REVOLTER_MG_HEADSHOTS", 500)
	stats.set_int(MPX() .. "REVOLTER_MG_HELDTIME", 5963259)
	stats.set_int(MPX() .. "REVOLTER_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX() .. "SAVESTRA_MG_KILLS", 500)
	stats.set_int(MPX() .. "SAVESTRA_MG_DEATHS", 100)
	stats.set_int(MPX() .. "SAVESTRA_MG_SHOTS", 500)
	stats.set_int(MPX() .. "SAVESTRA_MG_HITS", 500)
	stats.set_int(MPX() .. "SAVESTRA_MG_HEADSHOTS", 500)
	stats.set_int("MPPLY_NUM_CAPTURES_CREATED", 100)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_0", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_1", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_2", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_3", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_4", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_5", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_6", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_7", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_8", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_9", -1)
	stats.set_int("MPPLY_HEIST_ACH_TRACKER", -1)
	stats.set_int("MPPLY_GANGOPS_ALLINORDER", 100)
	stats.set_int("MPPLY_GANGOPS_LOYALTY", 100)
	stats.set_int("MPPLY_GANGOPS_CRIMMASMD", 100)
	stats.set_int("MPPLY_GANGOPS_LOYALTY2", 100)
	stats.set_int("MPPLY_GANGOPS_LOYALTY3", 100)
	stats.set_int("MPPLY_GANGOPS_CRIMMASMD2", 100)
	stats.set_int("MPPLY_GANGOPS_CRIMMASMD3", 100)
	stats.set_int("MPPLY_GANGOPS_SUPPORT", 100)
	stats.set_int("MPPLY_AWD_FM_CR_DM_MADE", 600)
	stats.set_int("MPPLY_AWD_FM_CR_RACES_MADE", 1000)
	stats.set_int("MPPLY_AWD_FM_CR_MISSION_SCORE", 100)
	stats.set_int("MPPLY_TOTAL_RACES_WON", 500)
	stats.set_int("MPPLY_TOTAL_RACES_LOST", 250)
	stats.set_int("MPPLY_TOTAL_CUSTOM_RACES_WON", 500)
	stats.set_int("MPPLY_TOTAL_DEATHMATCH_LOST", 250)
	stats.set_int("MPPLY_TOTAL_DEATHMATCH_WON", 500)
	stats.set_int("MPPLY_TOTAL_TDEATHMATCH_LOST", 250)
	stats.set_int("MPPLY_TOTAL_TDEATHMATCH_WON", 500)
	stats.set_int("MPPLY_SHOOTINGRANGE_WINS", 500)
	stats.set_int("MPPLY_SHOOTINGRANGE_LOSSES", 250)
	stats.set_int("MPPLY_TENNIS_MATCHES_WON", 500)
	stats.set_int("MPPLY_TENNIS_MATCHES_LOST", 250)
	stats.set_int("MPPLY_GOLF_WINS", 500)
	stats.set_int("MPPLY_GOLF_LOSSES", 250)
	stats.set_int("MPPLY_DARTS_TOTAL_WINS", 500)
	stats.set_int("MPPLY_DARTS_TOTAL_MATCHES", 750)
	stats.set_int("MPPLY_SHOOTINGRANGE_TOTAL_MATCH", 800)
	stats.set_int("MPPLY_BJ_WINS", 500)
	stats.set_int("MPPLY_BJ_LOST", 250)
	stats.set_int("MPPLY_RACE_2_POINT_WINS", 500)
	stats.set_int("MPPLY_RACE_2_POINT_LOST", 250)
	stats.set_int("MPPLY_KILLS_PLAYERS", 3593)
	stats.set_int("MPPLY_DEATHS_PLAYER", 1002)
	stats.set_int("MPPLY_MISSIONS_CREATED", 500)
	stats.set_int("MPPLY_LTS_CREATED", 500)
	stats.set_int("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP", 1598)
	stats.set_int("MPPLY_FM_MISSION_LIKES", 1500)
	stats.set_packed_stat_int(7315, 6) --WEAPON_STONE_HATCHET
	stats.set_packed_stat_int(18981, 4) --WEAPON_DOUBLEACTION
	stats.set_packed_stat_int(18982, 3) --Parts of the TM-02 Khanjali (tracks, remote grenade launcher and turret end/muzzle brake)
	stats.set_packed_stat_int(18983, 3) --Parts of the RCV (plow, door and water hose)
	stats.set_packed_stat_int(18984, 3) --Parts of the Chernobog (door, dual headlight set and wheels)
	stats.set_packed_stat_int(18985, 3) --Parts of the Thruster (exhaust, small rotors and handlebars/joysticks)
	stats.set_packed_stat_int(18986, 3) --Parts of the Avenger (wing, nose camera and rotor blade)
	stats.set_packed_stat_int(22050, 5) --Oppressor MK2 Trade Price
	stats.set_packed_stat_int(22051, 50) --Carved Wooden Box (Nightclub)
	stats.set_packed_stat_int(22052, 100) --Ammo Box
	stats.set_packed_stat_int(22053, 20) --Meth
	stats.set_packed_stat_int(22054, 80) --Weed
	stats.set_packed_stat_int(22055, 60) --Passports
	stats.set_packed_stat_int(22056, 40) --Crumpled Cash
	stats.set_packed_stat_int(22057, 10) --Impotent Rage Statue
	stats.set_packed_stat_int(22058, 20) --Gold Business Battle Trophy (Nightclub)
	stats.set_packed_stat_int(22063, 20) --Dinka Go Go Monkey Blista
	stats.set_packed_stat_int(41237, 10) --Taxi Livery
	stats.set_int(MPX() .. "HOLDUPS_BITSET", -1)
	stats.set_int(MPX() .. "CHAR_WEAP_UNLOCKED", -1)
	stats.set_int(MPX() .. "CHAR_WEAP_UNLOCKED2", -1)
	stats.set_int(MPX() .. "CHAR_WEAP_ADDON_1_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_WEAP_ADDON_2_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_WEAP_ADDON_3_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_WEAP_ADDON_4_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_UNLOCKED", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_UNLOCKED2", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_UNLOCKED3", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_UNLOCKED4", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_UNLOCKED5", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_UNLOCKED6", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_1_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_2_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_3_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_4_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_5_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_6_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_7_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_8_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_9_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_10_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_11_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_12_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_13_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_14_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_15_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_16_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_17_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_18_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_19_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_WEAP_ADDON_20_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_HAIRCUT_1_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK1", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK2", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK3", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK4", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK5", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK6", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK7", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK8", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK9", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK10", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK11", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK12", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK13", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK14", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK15", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK16", -1)
	stats.set_int(MPX() .. "CHAR_HAIR_UNLCK17", -1)
	stats.set_int(MPX() .. "CHAR_FM_HEALTH_1_UNLCK", -1)
	stats.set_int(MPX() .. "CHAR_FM_HEALTH_2_UNLCK", -1)
	stats.set_int(MPX() .. "RANKAP_UNLK_0", -1)
	stats.set_int(MPX() .. "RANKAP_UNLK_1", -1)
	stats.set_int(MPX() .. "RANKAP_UNLK_2", -1)
	stats.set_int(MPX() .. "RANKAP_UNLK_3", -1)
	stats.set_int(MPX() .. "CHAR_CREWUNLOCK_1_UNLCK", -1)
	stats.set_int(MPX() .. "PISTOL_ENEMY_KILLS", 600) -- Weapon Tints for Pistol
	stats.set_int(MPX() .. "CMBTPISTOL_ENEMY_KILLS", 600) -- Weapon Tints for Combat Pistol
	stats.set_int(MPX() .. "APPISTOL_ENEMY_KILLS", 600) -- Weapon Tints for AP Pistol
	stats.set_int(MPX() .. "MICROSMG_ENEMY_KILLS", 600) -- Weapon Tints for Micro SMG
	stats.set_int(MPX() .. "SMG_ENEMY_KILLS", 600) -- Weapon Tints for SMG
	stats.set_int(MPX() .. "ASLTSMG_ENEMY_KILLS", 600) -- Weapon Tints for Assault SMG
	stats.set_int(MPX() .. "ASLTRIFLE_ENEMY_KILLS", 600) -- Weapon Tints for Assault Rifle
	stats.set_int(MPX() .. "CRBNRIFLE_ENEMY_KILLS", 600) -- Weapon Tints for Carbine Rifle
	stats.set_int(MPX() .. "ADVRIFLE_ENEMY_KILLS", 600) -- Weapon Tints for Advanced Rifle
	stats.set_int(MPX() .. "MG_ENEMY_KILLS", 600) -- Weapon Tints for MG
	stats.set_int(MPX() .. "CMBTMG_ENEMY_KILLS", 600) -- Weapon Tints for Combat MG
	stats.set_int(MPX() .. "PUMP_ENEMY_KILLS", 600) -- Weapon Tints for Pump Shotgun
	stats.set_int(MPX() .. "SAWNOFF_ENEMY_KILLS", 600) -- Weapon Tints for Sawed-Off Shotgun
	stats.set_int(MPX() .. "ASLTSHTGN_ENEMY_KILLS", 600) -- Weapon Tints for Assault Shotgun
	stats.set_int(MPX() .. "SNIPERRFL_ENEMY_KILLS", 600) -- Weapon Tints for Sniper Rifle
	stats.set_int(MPX() .. "HVYSNIPER_ENEMY_KILLS", 600) -- Weapon Tints for Heavy Sniper
	stats.set_int(MPX() .. "GRNLAUNCH_ENEMY_KILLS", 600) -- Weapon Tints for Grenade Launcher
	stats.set_int(MPX() .. "RPG_ENEMY_KILLS", 600) -- Weapon Tints for Rocket Launcher
	stats.set_int(MPX() .. "MINIGUNS_ENEMY_KILLS", 600) -- Weapon Tints for Minigun
	unlock_packed_bools(25010, 25010) -- Skip arena wall help.
	unlock_packed_bools(25014, 25014) -- Skip arena wall tutorial.
	stats.set_int(MPX() .. "FIXER_HQ_OWNED", 1) -- Trade Price for buffalo4
	unlock_packed_bools(32312, 32312)
	stats.set_int(MPX() .. "REV_NV_KILLS", 50) -- Navy Revolver Kills
	stats.set_int(MPX() .. "XM22_FLOW", -1) -- Acid Lab Unlock
	stats.set_int(MPX() .. "XM22_MISSIONS", -1) -- Acid Lab Unlock
	stats.set_int(MPX() .. "AWD_CALLME", tunables.get_int(654710993)) -- Acid Lab Equipment Unlock
	stats.set_int(MPX() .. "H3_VEHICLESUSED", -1) -- Trade Price for Diamond Casino Heist Finale.
	stats.set_int(MPX() .. "H4_H4_DJ_MISSIONS", -1) -- Trade Price for weevil
	stats.set_int(MPX() .. "H4_PROGRESS", -1) -- Trade Price for winky
	stats.set_int(MPX() .. "TUNER_GEN_BS", -1) -- Trade Price for tailgater2
	stats.set_int(MPX() .. "ULP_MISSION_PROGRESS", -1) -- Trade Price greenwood/conada
	stats.set_int(MPX() .. "SUM23_AVOP_PROGRESS", -1) -- Trade Price Raiju
	stats.set_int(MPX() .. "GANGOPS_FLOW_BITSET_MISS0", -1) -- Trade Price for deluxo/akula/riot2/stromberg/chernobog/barrage/khanjali/volatol/thruster
	stats.set_bool(MPX() .. "AWD_TAXISTAR", true) -- Trade Price for taxi
	stats.set_bool("MPPLY_AWD_HST_ORDER", true)
	stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", true)
	stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", true)
	stats.set_int(MPX() .. "AT_FLOW_VEHICLE_BS", -1) -- Trade price for dune4/dune5/wastelander/blazer5/phantom2/voltic2/technical2/boxville5/ruiner2
	stats.set_int(MPX() .. "LFETIME_HANGAR_BUY_COMPLET", 50) -- Trade price for microlight/rogue/alphaz1/havok/starling/molotok/tula/bombushka/howard/mogul/pyro/seabreeze/nokota/hunter
	stats.set_int(MPX() .. "SALV23_GEN_BS", -1) -- polgauntlet trade price
	stats.set_int(MPX() .. "SALV23_SCOPE_BS", -1) -- police5 trade price
	stats.set_int(MPX() .. "MOST_TIME_ON_3_PLUS_STARS", 300000) -- police4 trade price
end)
FRESH:add_separator()
Text("==========================")
FRESH:add_button("Time Related Stats 1 Click Only", function()
	stats.set_int("MPPLY_TOTAL_PLAYING_TIME", 2073600000)
	stats.set_int("MPPLY_LEADERBOARD_PLAYING_TIME", 2073600000)
	stats.set_int("MPPLY_MP_PLAYING_TIME_NEW", 2073600000)
	stats.set_int("MPPLY_LONGEST_PLAYING_TIME", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_CAR", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_PLANE", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_HELI", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_QUADBIKE", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_BIKE", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_BICYCLE", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_BOAT", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_SUBMARINE", 2073600000)
	stats.set_int("MPPLY_TIME_SWIMMING", 2073600000)
	stats.set_int("MPPLY_TIME_WALKING", 2073600000)
	stats.set_int("MPPLY_TIME_UNDERWATER", 2073600000)
	stats.set_int("MPPLY_TIME_IN_WATER", 2073600000)
	stats.set_int("MPPLY_TIME_IN_COVER", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_PASSENGER", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_ON_PHONE", 2073600000)
	stats.set_int("MPPLY_TIME_AS_A_PASSENGER", 2073600000)
	stats.set_int("MPPLY_TIME_AS_A_DRIVER", 2073600000)
	stats.set_int("MPPLY_TIME_SPENT_FLYING", 2073600000)
	stats.set_int("MPPLY_TIME_IN_CAR", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_DEATHMAT", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_FREEMODE", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_MISSION_CREATO", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_RACES", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_ON_MISS", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_UNDERWATER", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_CINEMA", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_LOAD_SCREEN", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_IN_LOBBY", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_DEATHMAT", 2147483647)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_RACES", 2147483647)
	stats.set_int("MPPLY_TOTAL_TIME_LOAD_SCREEN", 1047483647)
	stats.set_int("MPPLY_TOTAL_TIME_IN_LOBBY", 1047483647)
	stats.set_int(MPX() .. "TIME_AS_A_DRIVER", 2147483647)
	stats.set_int(MPX() .. "TIME_SPENT_FLYING", 2147483647)
	stats.set_int(MPX() .. "TIME_IN_CAR", 2147483647)
	stats.set_int(MPX() .. "TIME_AS_A_PASSENGER", 2147483647)
	stats.set_int(MPX() .. "TOTAL_TIME_CINEMA", 2147483647)
	stats.set_int(MPX() .. "TOTAL_CHASE_TIME", 432000000)
	stats.set_int(MPX() .. "ARN_SPEC_BOX_TIME_MS", 86400000)
	stats.set_int(MPX() .. "LONGEST_PLAYING_TIME", 1047483647)
	stats.set_int(MPX() .. "TIME_DRIVING_CAR", 1047483647)
	stats.set_int(MPX() .. "TIME_DRIVING_PLANE", 1047483647)
	stats.set_int(MPX() .. "TIME_DRIVING_HELI", 1047483647)
	stats.set_int(MPX() .. "TIME_DRIVING_QUADBIKE", 1047483647)
	stats.set_int(MPX() .. "TIME_DRIVING_BIKE", 1047483647)
	stats.set_int(MPX() .. "TIME_DRIVING_BICYCLE", 1047483647)
	stats.set_int(MPX() .. "TIME_DRIVING_BOAT", 1047483647)
	stats.set_int(MPX() .. "TIME_DRIVING_SUBMARINE", 1047483647)
	stats.set_int(MPX() .. "TIME_SWIMMING", 1047483647)
	stats.set_int(MPX() .. "TIME_WALKING", 1047483647)
	stats.set_int(MPX() .. "TIME_UNDERWATER", 1047483647)
	stats.set_int(MPX() .. "TIME_IN_WATER", 1047483647)
	stats.set_int(MPX() .. "TIME_IN_COVER", 1047483647)
	stats.set_int(MPX() .. "TIME_DRIVING_PASSENGER", 1047483647)
	stats.set_int(MPX() .. "TOTAL_TIME_SPENT_ON_PHONE", 1047483647)
	stats.set_int(MPX() .. "TIME_AS_A_PASSENGER", 1047483647)
	stats.set_int(MPX() .. "TIME_AS_A_DRIVER", 1047483647)
	stats.set_int(MPX() .. "TIME_SPENT_FLYING", 1047483647)
	stats.set_int(MPX() .. "TIME_IN_CAR", 1047483647)
	stats.set_int(MPX() .. "TOTAL_TIME_UNDERWATER", 1047483647)
	stats.set_int(MPX() .. "TOTAL_TIME_CINEMA", 1047483647)
end)
FRESH:add_separator()
Text("==========================")
FRESH:add_button("Bools Unlocks 1 Click Only", function()
	stats.set_bool(MPX() .. "AWD_TEEING_OFF", true)
	stats.set_bool(MPX() .. "AWD_PARTY_NIGHT", true)
	stats.set_bool(MPX() .. "AWD_BILLIONAIRE_GAMES", true)
	stats.set_bool(MPX() .. "AWD_HOOD_PASS", true)
	stats.set_bool(MPX() .. "AWD_STUDIO_TOUR", true)
	stats.set_bool(MPX() .. "AWD_DONT_MESS_DRE", true)
	stats.set_bool(MPX() .. "AWD_BACKUP", true)
	stats.set_bool(MPX() .. "AWD_SHORTFRANK_1", true)
	stats.set_bool(MPX() .. "AWD_SHORTFRANK_2", true)
	stats.set_bool(MPX() .. "AWD_SHORTFRANK_3", true)
	stats.set_bool(MPX() .. "AWD_CONTR_KILLER", true)
	stats.set_bool(MPX() .. "AWD_DOGS_BEST_FRIEND", true)
	stats.set_bool(MPX() .. "AWD_MUSIC_STUDIO", true)
	stats.set_bool(MPX() .. "AWD_SHORTLAMAR_1", true)
	stats.set_bool(MPX() .. "AWD_SHORTLAMAR_2", true)
	stats.set_bool(MPX() .. "AWD_SHORTLAMAR_3", true)
	stats.set_bool(MPX() .. "BS_FRANKLIN_DIALOGUE_0", true)
	stats.set_bool(MPX() .. "BS_FRANKLIN_DIALOGUE_1", true)
	stats.set_bool(MPX() .. "BS_FRANKLIN_DIALOGUE_2", true)
	stats.set_bool(MPX() .. "BS_IMANI_D_APP_SETUP", true)
	stats.set_bool(MPX() .. "BS_IMANI_D_APP_STRAND", true)
	stats.set_bool(MPX() .. "BS_IMANI_D_APP_PARTY", true)
	stats.set_bool(MPX() .. "BS_IMANI_D_APP_PARTY_2", true)
	stats.set_bool(MPX() .. "BS_IMANI_D_APP_PARTY_F", true)
	stats.set_bool(MPX() .. "BS_IMANI_D_APP_BILL", true)
	stats.set_bool(MPX() .. "BS_IMANI_D_APP_BILL_2", true)
	stats.set_bool(MPX() .. "BS_IMANI_D_APP_BILL_F", true)
	stats.set_bool(MPX() .. "BS_IMANI_D_APP_HOOD", true)
	stats.set_bool(MPX() .. "BS_IMANI_D_APP_HOOD_2", true)
	stats.set_bool(MPX() .. "BS_IMANI_D_APP_HOOD_F", true)
	stats.set_bool(MPX() .. "AWD_SCOPEOUT", true)
	stats.set_bool(MPX() .. "AWD_CREWEDUP", true)
	stats.set_bool(MPX() .. "AWD_MOVINGON", true)
	stats.set_bool(MPX() .. "AWD_PROMOCAMP", true)
	stats.set_bool(MPX() .. "AWD_GUNMAN", true)
	stats.set_bool(MPX() .. "AWD_SMASHNGRAB", true)
	stats.set_bool(MPX() .. "AWD_INPLAINSI", true)
	stats.set_bool(MPX() .. "AWD_UNDETECTED", true)
	stats.set_bool(MPX() .. "AWD_ALLROUND", true)
	stats.set_bool(MPX() .. "AWD_ELITETHEIF", true)
	stats.set_bool(MPX() .. "AWD_PRO", true)
	stats.set_bool(MPX() .. "AWD_SUPPORTACT", true)
	stats.set_bool(MPX() .. "AWD_SHAFTED", true)
	stats.set_bool(MPX() .. "AWD_COLLECTOR", true)
	stats.set_bool(MPX() .. "AWD_DEADEYE", true)
	stats.set_bool(MPX() .. "AWD_PISTOLSATDAWN", true)
	stats.set_bool(MPX() .. "AWD_TRAFFICAVOI", true)
	stats.set_bool(MPX() .. "AWD_CANTCATCHBRA", true)
	stats.set_bool(MPX() .. "AWD_WIZHARD", true)
	stats.set_bool(MPX() .. "AWD_APEESCAP", true)
	stats.set_bool(MPX() .. "AWD_MONKEYKIND", true)
	stats.set_bool(MPX() .. "AWD_AQUAAPE", true)
	stats.set_bool(MPX() .. "AWD_KEEPFAITH", true)
	stats.set_bool(MPX() .. "AWD_TRUELOVE", true)
	stats.set_bool(MPX() .. "AWD_NEMESIS", true)
	stats.set_bool(MPX() .. "AWD_FRIENDZONED", true)
	stats.set_bool(MPX() .. "IAP_CHALLENGE_0", true)
	stats.set_bool(MPX() .. "IAP_CHALLENGE_1", true)
	stats.set_bool(MPX() .. "IAP_CHALLENGE_2v", true)
	stats.set_bool(MPX() .. "IAP_CHALLENGE_3", true)
	stats.set_bool(MPX() .. "IAP_CHALLENGE_4v", true)
	stats.set_bool(MPX() .. "IAP_GOLD_TANK", true)
	stats.set_bool(MPX() .. "SCGW_WON_NO_DEATHS", true)
	stats.set_bool(MPX() .. "AWD_KINGOFQUB3D", true)
	stats.set_bool(MPX() .. "AWD_QUBISM", true)
	stats.set_bool(MPX() .. "AWD_QUIBITS", true)
	stats.set_bool(MPX() .. "AWD_GODOFQUB3D", true)
	stats.set_bool(MPX() .. "AWD_STRAIGHT_TO_VIDEO", true)
	stats.set_bool(MPX() .. "AWD_MONKEY_C_MONKEY_DO", true)
	stats.set_bool(MPX() .. "AWD_TRAINED_TO_KILL", true)
	stats.set_bool(MPX() .. "AWD_DIRECTOR", true)
	stats.set_bool(MPX() .. "VCM_FLOW_CS_RSC_SEEN", true)
	stats.set_bool(MPX() .. "VCM_FLOW_CS_BWL_SEEN", true)
	stats.set_bool(MPX() .. "VCM_FLOW_CS_MTG_SEEN", true)
	stats.set_bool(MPX() .. "VCM_FLOW_CS_OIL_SEEN", true)
	stats.set_bool(MPX() .. "VCM_FLOW_CS_DEF_SEEN", true)
	stats.set_bool(MPX() .. "VCM_FLOW_CS_FIN_SEEN", true)
	stats.set_bool(MPX() .. "WAS_CHAR_TRANSFERED", true)
	stats.set_bool(MPX() .. "CL_RACE_MODDED_CAR", true)
	stats.set_bool(MPX() .. "CL_DRIVE_RALLY", true)
	stats.set_bool(MPX() .. "CL_PLAY_GTA_RACE", true)
	stats.set_bool(MPX() .. "CL_PLAY_BOAT_RACE", true)
	stats.set_bool(MPX() .. "CL_PLAY_FOOT_RACE", true)
	stats.set_bool(MPX() .. "CL_PLAY_TEAM_DM", true)
	stats.set_bool(MPX() .. "CL_PLAY_VEHICLE_DM", true)
	stats.set_bool(MPX() .. "CL_PLAY_MISSION_CONTACT", true)
	stats.set_bool(MPX() .. "CL_PLAY_A_PLAYLIST", true)
	stats.set_bool(MPX() .. "CL_PLAY_POINT_TO_POINT", true)
	stats.set_bool(MPX() .. "CL_PLAY_ONE_ON_ONE_DM", true)
	stats.set_bool(MPX() .. "CL_PLAY_ONE_ON_ONE_RACE", true)
	stats.set_bool(MPX() .. "CL_SURV_A_BOUNTY", true)
	stats.set_bool(MPX() .. "CL_SET_WANTED_LVL_ON_PLAY", true)
	stats.set_bool(MPX() .. "CL_GANG_BACKUP_GANGS", true)
	stats.set_bool(MPX() .. "CL_GANG_BACKUP_LOST", true)
	stats.set_bool(MPX() .. "CL_GANG_BACKUP_VAGOS", true)
	stats.set_bool(MPX() .. "CL_CALL_MERCENARIES", true)
	stats.set_bool(MPX() .. "CL_PHONE_MECH_DROP_CAR", true)
	stats.set_bool(MPX() .. "CL_GONE_OFF_RADAR", true)
	stats.set_bool(MPX() .. "CL_FILL_TITAN", true)
	stats.set_bool(MPX() .. "CL_MOD_CAR_USING_APP", true)
	stats.set_bool(MPX() .. "CL_MOD_CAR_USING_APP", true)
	stats.set_bool(MPX() .. "CL_BUY_INSURANCE", true)
	stats.set_bool(MPX() .. "CL_BUY_GARAGE", true)
	stats.set_bool(MPX() .. "CL_ENTER_FRIENDS_HOUSE", true)
	stats.set_bool(MPX() .. "CL_CALL_STRIPPER_HOUSE", true)
	stats.set_bool(MPX() .. "CL_CALL_FRIEND", true)
	stats.set_bool(MPX() .. "CL_SEND_FRIEND_REQUEST", true)
	stats.set_bool(MPX() .. "CL_W_WANTED_PLAYER_TV", true)
	stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_0", true)
	stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_1", true)
	stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_2", true)
	stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_3", true)
	stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_4", true)
	stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_5", true)
	stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_6", true)
	stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_7", true)
	stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_8", true)
	stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_9", true)
	stats.set_bool(MPX() .. "AWD_FIRST_TIME1", true)
	stats.set_bool(MPX() .. "AWD_FIRST_TIME2", true)
	stats.set_bool(MPX() .. "AWD_FIRST_TIME3", true)
	stats.set_bool(MPX() .. "AWD_FIRST_TIME4", true)
	stats.set_bool(MPX() .. "AWD_FIRST_TIME5", true)
	stats.set_bool(MPX() .. "AWD_FIRST_TIME6", true)
	stats.set_bool(MPX() .. "AWD_ALL_IN_ORDER", true)
	stats.set_bool(MPX() .. "AWD_SUPPORTING_ROLE", true)
	stats.set_bool(MPX() .. "AWD_ACTIVATE_2_PERSON_KEY", true)
	stats.set_bool(MPX() .. "AWD_ALL_ROLES_HEIST", true)
	stats.set_bool(MPX() .. "AWD_LEADER", true)
	stats.set_bool(MPX() .. "AWD_SURVIVALIST", true)
	stats.set_bool(MPX() .. "AWD_BUY_EVERY_GUN", true)
	stats.set_bool(MPX() .. "AWD_DAILYOBJMONTHBONUS", true)
	stats.set_bool(MPX() .. "AWD_DAILYOBJWEEKBONUS", true)
	stats.set_bool(MPX() .. "AWD_DRIVELESTERCAR5MINS", true)
	stats.set_bool(MPX() .. "AWD_FINISH_HEIST_NO_DAMAGE", true)
	stats.set_bool(MPX() .. "AWD_FM25DIFFERENTDM", true)
	stats.set_bool(MPX() .. "AWD_FM25DIFFERENTRACES", true)
	stats.set_bool(MPX() .. "AWD_FM25DIFITEMSCLOTHES", true)
	stats.set_bool(MPX() .. "AWD_FMFURTHESTWHEELIE", true)
	stats.set_bool(MPX() .. "AWD_FM6DARTCHKOUT", true)
	stats.set_bool(MPX() .. "AWD_FM_GOLF_HOLE_IN_1", true)
	stats.set_bool(MPX() .. "AWD_FM_SHOOTRANG_GRAN_WON", true)
	stats.set_bool(MPX() .. "AWD_FM_TENNIS_5_SET_WINS", true)
	stats.set_bool(MPX() .. "AWD_FMATTGANGHQ", true)
	stats.set_bool(MPX() .. "AWD_FMFULLYMODDEDCAR", true)
	stats.set_bool(MPX() .. "AWD_FMKILL3ANDWINGTARACE", true)
	stats.set_bool(MPX() .. "AWD_FMKILLSTREAKSDM", true)
	stats.set_bool(MPX() .. "AWD_FMMOSTKILLSGANGHIDE", true)
	stats.set_bool(MPX() .. "AWD_FMMOSTKILLSSURVIVE", true)
	stats.set_bool(MPX() .. "AWD_FMPICKUPDLCCRATE1ST", true)
	stats.set_bool(MPX() .. "AWD_FMRACEWORLDRECHOLDER", true)
	stats.set_bool(MPX() .. "AWD_FMTATTOOALLBODYPARTS", true)
	stats.set_bool(MPX() .. "AWD_FMWINALLRACEMODES", true)
	stats.set_bool(MPX() .. "AWD_FMWINCUSTOMRACE", true)
	stats.set_bool(MPX() .. "AWD_FMWINEVERYGAMEMODE", true)
	stats.set_bool(MPX() .. "AWD_SPLIT_HEIST_TAKE_EVENLY", true)
	stats.set_bool(MPX() .. "AWD_STORE_20_CAR_IN_GARAGES", true)
	stats.set_bool(MPX() .. "SR_TIER_1_REWARD", true)
	stats.set_bool(MPX() .. "SR_TIER_3_REWARD", true)
	stats.set_bool(MPX() .. "SR_INCREASE_THROW_CAP", true)
	stats.set_bool(MPX() .. "AWD_CLUB_COORD", true)
	stats.set_bool(MPX() .. "AWD_CLUB_HOTSPOT", true)
	stats.set_bool(MPX() .. "AWD_CLUB_CLUBBER", true)
	stats.set_bool(MPX() .. "AWD_BEGINNER", true)
	stats.set_bool(MPX() .. "AWD_FIELD_FILLER", true)
	stats.set_bool(MPX() .. "AWD_ARMCHAIR_RACER", true)
	stats.set_bool(MPX() .. "AWD_LEARNER", true)
	stats.set_bool(MPX() .. "AWD_SUNDAY_DRIVER", true)
	stats.set_bool(MPX() .. "AWD_THE_ROOKIE", true)
	stats.set_bool(MPX() .. "AWD_BUMP_AND_RUN", true)
	stats.set_bool(MPX() .. "AWD_GEAR_HEAD", true)
	stats.set_bool(MPX() .. "AWD_DOOR_SLAMMER", true)
	stats.set_bool(MPX() .. "AWD_HOT_LAP", true)
	stats.set_bool(MPX() .. "AWD_ARENA_AMATEUR", true)
	stats.set_bool(MPX() .. "AWD_PAINT_TRADER", true)
	stats.set_bool(MPX() .. "AWD_SHUNTER", true)
	stats.set_bool(MPX() .. "AWD_JOCK", true)
	stats.set_bool(MPX() .. "AWD_WARRIOR", true)
	stats.set_bool(MPX() .. "AWD_T_BONE", true)
	stats.set_bool(MPX() .. "AWD_MAYHEM", true)
	stats.set_bool(MPX() .. "AWD_WRECKER", true)
	stats.set_bool(MPX() .. "AWD_CRASH_COURSE", true)
	stats.set_bool(MPX() .. "AWD_ARENA_LEGEND", true)
	stats.set_bool(MPX() .. "AWD_PEGASUS", true)
	stats.set_bool(MPX() .. "AWD_CONTACT_SPORT", true)
	stats.set_bool(MPX() .. "AWD_UNSTOPPABLE", true)
	stats.set_bool(MPX() .. "LOW_FLOW_CS_DRV_SEEN", true)
	stats.set_bool(MPX() .. "LOW_FLOW_CS_TRA_SEEN", true)
	stats.set_bool(MPX() .. "LOW_FLOW_CS_FUN_SEEN", true)
	stats.set_bool(MPX() .. "LOW_FLOW_CS_PHO_SEEN", true)
	stats.set_bool(MPX() .. "LOW_FLOW_CS_FIN_SEEN", true)
	stats.set_bool(MPX() .. "LOW_BEN_INTRO_CS_SEEN", true)
	stats.set_bool(MPX() .. "CASINOPSTAT_BOOL0", true)
	stats.set_bool(MPX() .. "CASINOPSTAT_BOOL1", true)
	stats.set_bool(MPX() .. "FILM4SHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "FILM5SHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "FILM6SHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "FILM7SHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "FILM8SHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "FILM9SHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "ACCOUNTANTSHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "BAHAMAMAMASHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "DRONESHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "GROTTISHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "GOLFSHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "MAISONETTESHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "MANOPAUSESHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "MELTDOWNSHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "PACIFICBLUFFSSHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "PROLAPSSHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "TENNISSHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "TOESHOESSHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "VANILLAUNICORNSHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "MARLOWESHIRTUNLOCK", true)
	stats.set_bool(MPX() .. "CRESTSHIRTUNLOCK", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_ALLINORDER", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_SUPPORT", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY2", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD2", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY3", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD3", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD", true)
	stats.set_bool("MPPLY_MELEECHLENGECOMPLETED", true)
	stats.set_bool("MPPLY_HEADSHOTCHLENGECOMPLETED", true)
	stats.set_bool("MPPLY_AWD_COMPLET_HEIST_MEM", true)
	stats.set_bool("MPPLY_AWD_COMPLET_HEIST_1STPER", true)
	stats.set_bool("MPPLY_AWD_FLEECA_FIN", true)
	stats.set_bool("MPPLY_AWD_HST_ORDER", true)
	stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", true)
	stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", true)
	stats.set_bool("MPPLY_AWD_HUMANE_FIN", true)
	stats.set_bool("MPPLY_AWD_PACIFIC_FIN", true)
	stats.set_bool("MPPLY_AWD_PRISON_FIN", true)
	stats.set_bool("MPPLY_AWD_SERIESA_FIN", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_IAA", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_SUBMARINE", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_MISSILE", true)
end)

FRESH:add_separator()
FRESH:add_button("Unlock Diamond Casino Heist Outfits", function()
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL1", true, 63) -- Refuse Collectors
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 0) -- Undertakers
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 1) -- Valet Outfits
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 3) -- Prison Guards
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 4) -- FIB Suits
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 6) -- Gruppe Sechs Gear
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 7) -- Bugstars Uniforms
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 8) -- Maintenance
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 9) -- Yung Ancestors
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 10) -- Firefighter Gear
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 11) -- Orderly Armor
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 12) -- Upscale Armor
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 13) -- Evening Armor
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 14) -- Reinforced: Padded Combat
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 15) -- Reinforced: Bulk Combat
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 16) -- Reinforced: Compact Combat
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 17) -- Balaclava Crook
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 18) -- Classic Crook
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 19) -- High-end Crook
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 20) -- Infiltration: Upgraded Tech
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 21) -- Infiltration: Advanced Tech
	stats.set_bool_masked(MPX() .. "CASINOHSTPSTAT_BOOL2", true, 22) -- Infiltration: Modernized Tech
end)

FRESH:add_separator()
FRESH:add_button("Unlock All Tattos", function()
	stats.set_int(MPX() .. "TATTOO_FM_CURRENT_32", -1)
	for i = 0, 53 do
		stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_" .. i, -1)
	end
end)

FRESH:add_button("Unlock Skull Tatoo", function()
	stats.set_bool(MPX() .. "AWD_500_HEADSHOTS", true)
end)

FRESH:add_separator()
FRESH:add_button("Unlock Taxi Livery for Eudora", function()
	stats.set_masked_int(MPX() .. "DLC22022PSTAT_INT536", 10, 16, 8)
end)

FRESH:add_button("Unlock Taxi Livery for Broadway", function()
	stats.set_int(MPX() .. "AWD_TAXIDRIVER", 50)
end)

FRESH:add_button("Unlock Oppressor MKII Trade Price", function()
	stats.set_masked_int(MPX() .. "BUSINESSBATPSTAT_INT379", 5, 5, 5) --Pegassi Oppressor Mk II (Trade Price)
end)

Text("Join New Session Once And")
Text("Notifications Will Stop")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

LSCMUnlockeRecovery = Recoverys:add_tab("LSCM Unlocker")

LSCMUnlockeRecovery:add_button("Unlock All Rep Lvl 1000", function()
	for i = 262145 + 30958, 262145 + 30987 do
		globals.set_float(i, 100000)
	end
end)

LSCMUnlockeRecovery:add_button("LSCM Prize Ride Unlock", function()
	stats.set_bool(MPX() .. "CARMEET_PV_CHLLGE_CMPLT", true)
end)

LSCMNote = LSCMUnlockeRecovery:add_tab("Read Me Tutorial")

LSCMNote:add_text("Buy a membership, activate, sit in", function() end)
LSCMNote:add_text("a test car and go to the track", function() end)
LSCMNote:add_text("", function() end)
LSCMNote:add_text("If your level is not 1, then activate", function() end)
LSCMNote:add_text("and buy something in the LSCM store", function() end)
LSCMNote:add_text("", function() end)
LSCMNote:add_text("If you've used LS Tuner awards unlock", function() end)
LSCMNote:add_text("before, all unlocks will be temporary only", function() end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--© 2024 CSYON's Official Discord Server. All Rights Reserved--

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CSYON7 = CSYON:add_tab("Csyon's Money Methods")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

AirCargos = CSYON7:add_tab("Air Cargo")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CARGO1 = 262145 + 22493
CARGO2 = 262145 + 22494
CARGO3 = 262145 + 22495
CARGO4 = 262145 + 22496
CARGO5 = 262145 + 22497
CARGO6 = 262145 + 22498
CARGO7 = 262145 + 22499
CARGO8 = 262145 + 22500

local hanvalue = AirCargos:add_input_int("Crate Value")

AirCargos:add_button("Set Value", function()
	local HangarCrateVlaue = hanvalue:get_value()
		globals.get_int(CARGO1, HangarCrateVlaue)
	    globals.set_int(CARGO2, HangarCrateVlaue)
	    globals.set_int(CARGO3, HangarCrateVlaue)
	    globals.get_int(CARGO4, HangarCrateVlaue)
	    globals.set_int(CARGO5, HangarCrateVlaue)
	    globals.set_int(CARGO6, HangarCrateVlaue)
	    globals.get_int(CARGO7, HangarCrateVlaue)
	    globals.set_int(CARGO8, HangarCrateVlaue)
		gui.show_message(
			"Crate Value Setter",
			"Your Crates Values was set to " .. HangarCrateVlaue .. ".")
end)

AirCargos:add_separator()

RRC = AirCargos:add_checkbox("Remove Ron's Cut")
script.register_looped("RonCutRemover", function(script)
	script:yield()
	if RRC:is_enabled() then
		globals.set_float(262145 + 22475, 0)
	else
		globals.set_float(262145 + 22475, 0.025)
	end
end)

AirCargos:add_separator()

DPRPG = AirCargos:add_checkbox("Disable Player RP Gain")
script.register_looped("PlayerRPGainDisabler", function(script)
	script:yield()
	if DPRPG:is_enabled() then
		globals.set_float(FMg + 1, 0)
	else
		globals.set_float(FMg + 1, 1)
	end
end)

AirCargos:add_separator()

AirCargos:add_button("Open Hangar Screen", function()
    SCRIPT.REQUEST_SCRIPT("appsmuggler")
    SYSTEM.START_NEW_SCRIPT("appsmuggler", 5000)
end)

AirCargos:add_button("Open all Business Screen", function()
	SCRIPT.REQUEST_SCRIPT("apparcadebusinesshub")
	SYSTEM.START_NEW_SCRIPT("apparcadebusinesshub", 8344)
end)

DataEditiorAC = AirCargos:add_tab("Air Cargo Data Editor")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DataEditiorAC:add_button("Reset Crate Sell Stats-0/0 Sales", function()
	stats.set_int(MPX() .. "LFETIME_HANGAR_BUY_COMPLET", 0)
	stats.set_int(MPX() .. "LFETIME_HANGAR_BUY_UNDERTAK", 0)
	stats.set_int(MPX() .. "LFETIME_HANGAR_SEL_COMPLET", 0)
	stats.set_int(MPX() .. "LFETIME_HANGAR_SEL_UNDERTAK", 0)
	stats.set_int(MPX() .. "LFETIME_HANGAR_EARNINGS", 0)
	stats.set_int(MPX() .. "HANGAR_CONTRABAND_TOTAL", 0)
	stats.set_int(MPX() .. "LFETIME_HANGAR_EARN_BONUS", 0)
	stats.set_int(MPX() .. "RIVAL_HANGAR_CRATES_STOLEN", 0)
	globals.set_int(1575035, 11) ----PlayerSessionBlank--------
	globals.set_int(1574589, 1) ----PlayerSessionNew----------
	globals.set_int(1574589, 0) ----PlayerSessionNew------
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

MoneyRemover = CSYON7:add_tab("Money Remover")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

moneyremovervalue = globals.get_int(BV)
MoneyRemover:add_imgui(function()
	moneyremovervalue, used = ImGui.DragInt("Set Ballastic Value", moneyremovervalue, 1000000, 1000000, 2147483647)
	if used then
		globals.set_int(BV, moneyremovervalue)
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local gun_van_tab = CSYON:add_tab("Gun Van ")

local gunvan_locations = {
	vec3:new(-29.532, 6435.136, 31.162),
	vec3:new(1705.214, 4819.167, 41.75),
	vec3:new(1795.522, 3899.753, 33.869),
	vec3:new(1335.536, 2758.746, 51.099),
	vec3:new(795.583, 1210.78, 338.962),
	vec3:new(-3192.67, 1077.205, 20.594),
	vec3:new(-789.719, 5400.921, 33.915),
	vec3:new(-24.384, 3048.167, 40.703),
	vec3:new(2666.786, 1469.324, 24.237),
	vec3:new(-1454.966, 2667.503, 3.2),
	vec3:new(2340.418, 3054.188, 47.888),
	vec3:new(1509.183, -2146.795, 76.853),
	vec3:new(1137.404, -1358.654, 34.322),
	vec3:new(-57.208, -2658.793, 5.737),
	vec3:new(1905.017, 565.222, 175.558),
	vec3:new(974.484, -1718.798, 30.296),
	vec3:new(779.077, -3266.297, 5.719),
	vec3:new(-587.728, -1637.208, 19.611),
	vec3:new(733.99, -736.803, 26.165),
	vec3:new(-1694.632, -454.082, 40.712),
	vec3:new(-1330.726, -1163.948, 4.313),
	vec3:new(-496.618, 40.231, 52.316),
	vec3:new(275.527, 66.509, 94.108),
	vec3:new(260.928, -763.35, 30.559),
	vec3:new(-478.025, -741.45, 30.299),
	vec3:new(894.94, 3603.911, 32.56),
	vec3:new(-2166.511, 4289.503, 48.733),
	vec3:new(1465.633, 6553.67, 13.771),
	vec3:new(1101.032, -335.172, 66.944),
	vec3:new(149.683, -1655.674, 29.028),
}

local van_locations = {
	"Paleto Bay - 1",
	"Grapeseed - 2",
	"Sandy Shores - 3",
	"Grand Senora - 4",
	"Vinewood Hills - 5",
	"Chumash - 6",
	"Paleto Forest - 7",
	"Zancudo River - 8",
	"Power Station - 9",
	"Lago Zancudo - 10",
	"Grand Senora - 11",
	"El Burro Heights - 12",
	"Murrieta Heights - 13",
	"Elysian Island - 14",
	"Tataviam - 15",
	"La Mesa - 16",
	"Terminal - 17",
	"La Puerta - 18",
	"La Mesa - 19",
	"Del Perro - 20",
	"Magellan Ave - 21",
	"West Vinewood - 22",
	"Downtown Vinewood - 23",
	"Pillbox Hill - 24",
	"Little Seoul - 25",
	"Alamo Sea - 26",
	"North Chumash - 27",
	"Mount Chiliad - 28",
	"Mirror Park - 29",
	"Davis - 30",
}

-- Originally by SilentSalo
local weapons_data = {
	"WEAPON_KNIFE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_HAMMER",
	"WEAPON_BOTTLE",
	"WEAPON_DAGGER",
	"WEAPON_KNUCKLE",
	"WEAPON_MACHETE",
	"WEAPON_FLASHLIGHT",
	"WEAPON_SWITCHBLADE",
	"WEAPON_BATTLEAXE",
	"WEAPON_POOLCUE",
	"WEAPON_WRENCH",
	"WEAPON_HATCHET",
	"WEAPON_BAT",
	"WEAPON_CROWBAR",
	"WEAPON_STUNROD",
	"WEAPON_PISTOL",
	"WEAPON_PISTOL_MK2",
	"WEAPON_COMBATPISTOL",
	"WEAPON_APPISTOL",
	"WEAPON_PISTOL50",
	"WEAPON_SNSPISTOL",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_FLAREGUN",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_REVOLVER",
	"WEAPON_REVOLVER_MK2",
	"WEAPON_DOUBLEACTION",
	"WEAPON_RAYPISTOL",
	"WEAPON_CERAMICPISTOL",
	"WEAPON_NAVYREVOLVER",
	"WEAPON_GADGETPISTOL",
	"WEAPON_STUNGUN_MP",
	"WEAPON_MICROSMG",
	"WEAPON_SMG",
	"WEAPON_SMG_MK2",
	"WEAPON_ASSAULTSMG",
	"WEAPON_COMBATPDW",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_MINISMG",
	"WEAPON_MG",
	"WEAPON_COMBATMG",
	"WEAPON_COMBATMG_MK2",
	"WEAPON_GUSENBERG",
	"WEAPON_RAYCARBINE",
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_ASSAULTRIFLE_MK2",
	"WEAPON_CARBINERIFLE",
	"WEAPON_CARBINERIFLE_MK2",
	"WEAPON_ADVANCEDRIFLE",
	"WEAPON_SPECIALCARBINE",
	"WEAPON_SPECIALCARBINE_MK2",
	"WEAPON_BULLPUPRIFLE",
	"WEAPON_BULLPUPRIFLE_MK2",
	"WEAPON_COMPACTRIFLE",
	"WEAPON_MILITARYRIFLE",
	"WEAPON_HEAVYRIFLE",
	"WEAPON_TACTICALRIFLE",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_PUMPSHOTGUN_MK2",
	"WEAPON_SAWNOFFSHOTGUN",
	"WEAPON_ASSAULTSHOTGUN",
	"WEAPON_BULLPUPSHOTGUN",
	"WEAPON_MUSKET",
	"WEAPON_HEAVYSHOTGUN",
	"WEAPON_DBSHOTGUN",
	"WEAPON_AUTOSHOTGUN",
	"WEAPON_COMBATSHOTGUN",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_HEAVYSNIPER",
	"WEAPON_HEAVYSNIPER_MK2",
	"WEAPON_MARKSMANRIFLE",
	"WEAPON_MARKSMANRIFLE_MK2",
	"WEAPON_PRECISIONRIFLE",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_RPG",
	"WEAPON_MINIGUN",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_RAYMINIGUN",
	"WEAPON_EMPLAUNCHER",
	"WEAPON_RAILGUNXM3",
	"WEAPON_TECPISTOL",
	"WEAPON_FIREWORK",
	"WEAPON_BATTLERIFLE",
	"WEAPON_SNOWLAUNCHER",
}

local selected_loc = 0
local selected_slot = 0
local is_typing = false
local weapon_skins = false
local gta_plus_blip = false
local livery_lock = false
local weapon_editor_popup = false
local filter_text = ""
local weapon_name = ""

local gun_van_loc = 0

local function help_marker(text)
	ImGui.SameLine()
	ImGui.TextDisabled("(?)")
	if ImGui.IsItemHovered() then
		ImGui.BeginTooltip()
		ImGui.PushTextWrapPos(ImGui.GetFontSize() * 35)
		ImGui.TextUnformatted(text)
		ImGui.PopTextWrapPos()
		ImGui.EndTooltip()
	end
end

local function render_weapon_editor()
	ImGui.SetNextWindowSize(700, 420)
	ImGui.OpenPopup("Weapon Editor")

	if
		ImGui.BeginPopupModal(
			"Weapon Editor",
			weapon_editor_popup,
			ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoCollapse | ImGuiWindowFlags.NoMove | ImGuiWindowFlags.Modal
		)
	then
		selected_slot =
			ImGui.Combo("Select Slot", selected_slot, { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" }, 10)

		filter_text = ImGui.InputText("Weapon Name", filter_text, 100)
		if ImGui.IsItemActive() then
			is_typing = true
		else
			is_typing = false
		end

		if ImGui.BeginListBox("##weapons", 450, 200) then
			for index, item in ipairs(weapons_data) do
				local display_name = weapons.get_weapon_display_name(item)
				if string.find(display_name:lower(), filter_text:lower()) then
					if ImGui.Selectable(display_name) then
						filter_text = display_name
						weapon_name = item
					end
				end
			end
			ImGui.EndListBox()
		end

		if ImGui.Button("Set Weapon") then
			local is_weapon_valid = weapons.get_weapon_display_name(weapon_name) ~= ""

			if is_weapon_valid then
				tunables.set_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. selected_slot, joaat(weapon_name))
			else
				gui.show_error("Gun Van", "Invalid weapon.")
			end
		end

		ImGui.SameLine()

		if ImGui.Button("Remove Weapon") then
			tunables.set_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. selected_slot, 0)
		end

		if ImGui.Button("Close") then
			selected_slot = 0
			filter_text = ""
			weapon_name = ""
			weapon_editor_popup = false
			ImGui.CloseCurrentPopup()
		end

		ImGui.EndPopup()
	end
end

script.register_looped("Gun Van", function()
	gun_van_loc = globals.get_int(2652592 + 2671)

	if is_typing then
		PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
	end

	if weapon_skins then
		tunables.set_bool(1490225691, false)
	end

	if livery_lock then
		local value = locals.get_int("gunclub_shop", 142 + 747) | (1 << 8)
		locals.set_int("gunclub_shop", 142 + 747, value)
	end

	if gta_plus_blip then
		local gun_van_sprite = HUD.GET_FIRST_BLIP_INFO_ID(844)

		tunables.set_float(15999531, 10000.0)
		if HUD.DOES_BLIP_EXIST(gun_van_sprite) then
			HUD.SET_BLIP_AS_SHORT_RANGE(gun_van_sprite, false)
		end
	end
end)

gun_van_tab:add_imgui(function()
	if weapon_editor_popup then
		render_weapon_editor()
	end

	ImGui.Text("Current Location: " .. (gun_van_loc ~= -1 and gun_van_loc + 1 or "N/A"))

	ImGui.SetNextItemWidth(265)
	selected_loc = ImGui.Combo("##selected_loc", selected_loc, van_locations, 30)

	ImGui.SameLine()

	if ImGui.Button("Set New Gun Van Location") then
		globals.set_int(2652592 + 2671, selected_loc)
	end

	ImGui.SameLine()

	if ImGui.Button("Teleport") then
		script.run_in_fiber(function()
			local coords = gunvan_locations[selected_loc + 1]
			PED.SET_PED_COORDS_KEEP_VEHICLE(self.get_ped(), coords.x, coords.y, coords.z)
		end)
	end

	weapon_skins, on_tick = ImGui.Checkbox("Weapon Skins", weapon_skins)
	help_marker("Enables the special liveries for Knife and Baseball Bat.")

	if on_tick then
		if not weapon_skins then
			tunables.set_bool(1490225691, true)
		end
	end

	livery_lock, on_tick = ImGui.Checkbox("Remove Livery Lock", livery_lock)
	help_marker(
		"Removes the hard-coded lock on special weapon liveries, such as Season's Greetings, Employee of the Month etc."
	)

	if on_tick then
		if not livery_lock then
			local value = locals.get_int("gunclub_shop", 142 + 747) & ~(1 << 8)
			locals.set_int("gunclub_shop", 142 + 747, value)
		end
	end

	gta_plus_blip, on_tick = ImGui.Checkbox("Blip Always Visible", gta_plus_blip)
	help_marker("The Gun Van will always be blipped on the map, just like in GTA+.")

	if on_tick then
		if not gta_plus_blip then
			tunables.set_float(15999531, 500.0)
		end
	end

	ImGui.Separator()

	if ImGui.TreeNode("Weapons") then
		for i = 0, 9 do
			local weapon_hash = tunables.get_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. i)

			if weapon_hash ~= 0 then
				local weapon_name = weapons.get_weapon_display_name(weapon_hash)
				local weapon_discount =
					math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_WEAPON_DISCOUNT_" .. i) * 100.0)

				ImGui.Text(i + 1 .. " - " .. weapon_name .. " (" .. weapon_discount .. "%)")
			end
		end

		if ImGui.Button("Edit Weapons") then
			weapon_editor_popup = true
		end

		ImGui.Separator()
		ImGui.TreePop()
	end

	if ImGui.TreeNode("Throwables") then
		for i = 0, 2 do
			local throwable_hash = tunables.get_int("XM22_GUN_VAN_SLOT_THROWABLE_TYPE_" .. i)

			if throwable_hash ~= 0 then
				local throwable_name = weapons.get_weapon_display_name(throwable_hash)
				local throwable_discount =
					math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_THROWABLE_DISCOUNT_" .. i) * 100.0)

				ImGui.Text(i + 1 .. " - " .. throwable_name .. " (" .. throwable_discount .. "%)")
			end
		end

		ImGui.Separator()
		ImGui.TreePop()
	end

	if ImGui.TreeNode("Body Armor") then
		local armour_discounts = {}

		for i = 0, 4 do
			armour_discounts[i + 1] = math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_ARMOUR_DISCOUNT_" .. i) * 100.0)
		end

		ImGui.Text("Super Light Armor (" .. armour_discounts[1] .. "%)")
		ImGui.Text("Light Armor (" .. armour_discounts[2] .. "%)")
		ImGui.Text("Standard Armor (" .. armour_discounts[3] .. "%)")
		ImGui.Text("Heavy Armor (" .. armour_discounts[4] .. "%)")
		ImGui.Text("Super Heavy Armor (" .. armour_discounts[5] .. "%)")

		ImGui.TreePop()
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

NightClubSafe = CSYON7:add_tab("NightClub Safe Loop")

NCSCB = NightClubSafe:add_checkbox("Enable Nitghtclub $300k/15s (Safe AFK)")
script.register_looped("nightclubloop", function(script)
	script:yield()
	if NCSCB:is_enabled() == true then
		stats.set_int(MPX() .. "CLUB_POPULARITY", 1000)
		stats.set_int(MPX() .. "CLUB_PAY_TIME_LEFT", -1)
		script:sleep(3000)
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

HeistsDataEditor = CSYON:add_tab("Heists Data Editor")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ApartmentDataEditor = HeistsDataEditor:add_tab("Apartment Data Editor")

ApartmentDataEditor:add_button("Skip Current Apartment Heist Preps", function()
	stats.set_int(MPX() .. "HEIST_PLANNING_STAGE", -1)
end)

ApartmentDataEditor:add_sameline()

ApartmentDataEditor:add_button("Reset Current Apartment Heist Preps", function()
	stats.set_int(MPX() .. "HEIST_PLANNING_STAGE", 0)
end)

ApartmentDataEditor:add_text("")
ApartmentDataEditor:add_text("For Fleeca:")
ApartmentDataEditor:add_text(
	'Pay for the preparation, start the first mission and as soon as you are sent to scout\nchange the session, come back to planning room, press "Complete Preps" near white board and press "E"'
)
ApartmentDataEditor:add_text("For Other Heist:")
ApartmentDataEditor:add_text(
	'Start the mission and leave after the 1st cutscene ends, press "Complete Preps" near white board and press "E"'
)

ApartmentDataEditor:add_separator()
ApartmentDataEditor:add_text("Cuts to All")
ApartmentDataEditor:add_text("Fleeca Job Heist:")
ApartmentDataEditor:add_button("100", function()
	globals.set_int(ACg1, -200)
	globals.set_int(ACg2, 100)
end)
ApartmentDataEditor:add_text("")
ApartmentDataEditor:add_text("Other Heists:")
ApartmentDataEditor:add_button("100", function()
	globals.set_int(ACg1, -300)
	globals.set_int(ACg2, 100)
	globals.set_int(ACg3, 100)
	globals.set_int(ACg4, 100)
end)

local apartCut1 = 0
local apartCut2 = 0
local apartCut3 = 0
local apartCut4 = 0
ApartmentDataEditor:add_imgui(function()
	ImGui.Text("Custom Cuts:")
	ImGui.SetNextItemWidth(150)
	apartCut1 = ImGui.InputInt("Cut 1", apartCut1)
	ImGui.SameLine()
	ImGui.SetNextItemWidth(150)
	apartCut2 = ImGui.InputInt("Cut 2", apartCut2)
	ImGui.SetNextItemWidth(150)
	apartCut3 = ImGui.InputInt("Cut 3", apartCut3)
	ImGui.SameLine()
	ImGui.SetNextItemWidth(150)
	apartCut4 = ImGui.InputInt("Cut 4", apartCut4)
	ImGui.Text("For Fleeca Heist")
	if ImGui.Button("Set Cuts") then
		globals.set_int(ACg1, 100 - (apartCut1 * 2))
		globals.set_int(ACg2, apartCut2)
	end
	ImGui.Text("For Other Heists")
	if ImGui.Button("Set Cuts") then
		globals.set_int(ACg1, 100 - (apartCut1 * 4))
		globals.set_int(ACg2, apartCut2)
		globals.set_int(ACg3, apartCut3)
		globals.set_int(ACg4, apartCut4)
	end
	if ImGui.Button("Set Negative to Positive (own)") then
		globals.set_int(ACg5, -1 * (-100 + globals.get_int(ACg1)) / 2)
	end
end)
ApartmentDataEditor:add_separator()
ApartmentDataEditor:add_text("Extras")
ApartmentDataEditor:add_button("Bypass Fleeca Hack", function()
	locals.set_int(FMC, AFHl, 7)
end)
ApartmentDataEditor:add_sameline()
ApartmentDataEditor:add_button("Bypass Fleeca Drill", function()
	locals.set_float(FMC, AFDl, 100)
end)
ApartmentDataEditor:add_sameline()
ApartmentDataEditor:add_button("Unlock All Jobs", function()
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_0", globals.get_int(AUAJg1))
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_0_L", 5)
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_1", globals.get_int(AUAJg2))
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_1_L", 5)
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_2", globals.get_int(AUAJg3))
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_2_L", 5)
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_3", globals.get_int(AUAJg4))
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_3_L", 5)
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_4", globals.get_int(AUAJg5))
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_4_L", 5)
end)
ApartmentDataEditor:add_sameline()
ApartmentDataEditor:add_button("Instant Finish", function()
	locals.set_int(FMC, AIFl3, 12)
	locals.set_int(FMC, AIFl4, 99999)
	locals.set_int(FMC, AIFl5, 99999)
end)
ApartmentDataEditor:add_text("Note: After Clicking Unlock All jobs, restart the game")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CasinoHeistEditor = HeistsDataEditor:add_tab("Casino Heist")

CasinoHeistEditor:add_button("One Click Setup Casino Silent&Sneaky", function()
	stats.set_int(MPX() .. "H3OPT_APPROACH", 1)
	stats.set_int(MPX() .. "H3_LAST_APPROACH", 3)
	stats.set_int(MPX() .. "H3OPT_TARGET", 3)
	stats.set_int(MPX() .. "H3OPT_BITSET1", 127)
	stats.set_int(MPX() .. "H3OPT_DISRUPTSHIP", 3)
	stats.set_int(MPX() .. "H3OPT_KEYLEVELS", 2)
	stats.set_int(MPX() .. "H3OPT_CREWWEAP", 4)
	stats.set_int(MPX() .. "H3OPT_CREWDRIVER", 5)
	stats.set_int(MPX() .. "H3OPT_CREWHACKER", 5)
	stats.set_int(MPX() .. "H3OPT_VEHS", 2)
	stats.set_int(MPX() .. "H3OPT_WEAPS", 1)
	stats.set_int(MPX() .. "H3OPT_BITSET0", 262399)
	stats.set_int(MPX() .. "H3OPT_MASKS", 2)
end)

CasinoHeistEditor:add_button("One Click Setup Casino The Big Con. Mode", function()
	stats.set_int(MPX() .. "H3OPT_APPROACH", 2)
	stats.set_int(MPX() .. "H3_LAST_APPROACH", 3)
	stats.set_int(MPX() .. "H3OPT_TARGET", 3)
	stats.set_int(MPX() .. "H3OPT_BITSET1", 799)
	stats.set_int(MPX() .. "H3OPT_DISRUPTSHIP", 3)
	stats.set_int(MPX() .. "H3OPT_KEYLEVELS", 2)
	stats.set_int(MPX() .. "H3OPT_CREWWEAP", 4)
	stats.set_int(MPX() .. "H3OPT_CREWDRIVER", 5)
	stats.set_int(MPX() .. "H3OPT_CREWHACKER", 5)
	stats.set_int(MPX() .. "H3OPT_VEHS", 2)
	stats.set_int(MPX() .. "H3OPT_WEAPS", 0)
	stats.set_int(MPX() .. "H3OPT_BITSET0", 913623)
	stats.set_int(MPX() .. "H3OPT_MASKS", 2)
end)

CasinoHeistEditor:add_button("One Click Setup Casino Agrresive Mode", function()
	stats.set_int(MPX() .. "H3OPT_APPROACH", 3)
	stats.set_int(MPX() .. "H3_LAST_APPROACH", 1)
	stats.set_int(MPX() .. "H3OPT_TARGET", 3)
	stats.set_int(MPX() .. "H3OPT_BITSET1", 799)
	stats.set_int(MPX() .. "H3OPT_DISRUPTSHIP", 3)
	stats.set_int(MPX() .. "H3OPT_KEYLEVELS", 2)
	stats.set_int(MPX() .. "H3OPT_CREWWEAP", 4)
	stats.set_int(MPX() .. "H3OPT_CREWDRIVER", 5)
	stats.set_int(MPX() .. "H3OPT_CREWHACKER", 5)
	stats.set_int(MPX() .. "H3OPT_VEHS", 2)
	stats.set_int(MPX() .. "H3OPT_WEAPS", 1)
	stats.set_int(MPX() .. "H3OPT_BITSET0", 1835223)
	stats.set_int(MPX() .. "H3OPT_MASKS", 2)
end)

CasinoHeistEditor:add_text("Preps")
CasinoHeistEditor:add_text("")
local function CasinoApproachSetter(last_approach, hard_approach, approach, selected_approach)
	stats.set_int(MPX() .. "H3_LAST_APPROACH", last_approach)
	stats.set_int(MPX() .. "H3_HARD_APPROACH", hard_approach)
	stats.set_int(MPX() .. "H3_APPROACH", approach)
	stats.set_int(MPX() .. "H3OPT_APPROACH", selected_approach)
end
local function CasinoCompletePreps()
	stats.set_int(MPX() .. "H3OPT_DISRUPTSHIP", 3)
	stats.set_int(MPX() .. "H3OPT_KEYLEVELS", 2)
	stats.set_int(MPX() .. "H3OPT_BITSET0", -1)
	stats.set_int(MPX() .. "H3OPT_BITSET1", -1)
	stats.set_int(MPX() .. "H3OPT_COMPLETEDPOSIX", -1)
end
CasinoHeistEditor:add_text("Primary Target")
CasinoHeistEditor:add_button("Diamond", function()
	stats.set_int(MPX() .. "H3OPT_TARGET", 3)
end)
CasinoHeistEditor:add_sameline()
CasinoHeistEditor:add_button("Gold", function()
	stats.set_int(MPX() .. "H3OPT_TARGET", 1)
end)
CasinoHeistEditor:add_sameline()
CasinoHeistEditor:add_button("Arts", function()
	stats.set_int(MPX() .. "H3OPT_TARGET", 2)
end)
CasinoHeistEditor:add_sameline()
CasinoHeistEditor:add_button("Cash", function()
	stats.set_int(MPX() .. "H3OPT_TARGET", 0)
end)
CasinoHeistEditor:add_separator()
CasinoHeistEditor:add_text("Select Apprach")
CasinoHeistEditor:add_button("Silent & Sneaky", function()
	CasinoApproachSetter(2, 1, 3, 1)
	STATS.STAT_SET_INT(MPX() .. "H3OPT_BITSET1", 127)
	stats.set_int(MPX() .. "H3OPT_WEAPS", 0)
end)
CasinoHeistEditor:add_sameline()
CasinoHeistEditor:add_button("Big Con", function()
	CasinoApproachSetter(1, 2, 3, 2)
	STATS.STAT_SET_INT(MPX() .. "H3OPT_BITSET1", 799)
	stats.set_int(MPX() .. "H3OPT_WEAPS", 0)
end)
CasinoHeistEditor:add_sameline()
CasinoHeistEditor:add_button("Aggressive", function()
	CasinoApproachSetter(2, 3, 1, 3)
	STATS.STAT_SET_INT(MPX() .. "H3OPT_BITSET1", 799)
	stats.set_int(MPX() .. "H3OPT_WEAPS", 0)
end)
CasinoHeistEditor:add_separator()
CasinoHeistEditor:add_text("Gun Man")
local gunman = 0
local driver = 0
local hacker = 0
local mask = 0
local casinoPc1 = 0
local casinoPc2 = 0
local casinoPc3 = 0
local casinoPc4 = 0
local GunManLoadoutSi = {
	"Karl Abolaji/Micro SMG",
	"Karl Abolaji/Machine Pistol",
	"Charlie Reed/Assault SMG",
	"Charlie Reed/Bullpup Shotgun",
	"Patrick McReary/Combat PDW",
	"Patrick McReary/Assault Rifle",
	"Gustavo Mota/Carbine Rifle",
	"Gustavo Mota/Assault Shotgun",
	"Chester McCoy/Pump Shotgun Mk II",
	"Chester McCoy/Carbine Rifle Mk II",
}
local GunManLoadoutBC = {
	"Karl Abolaji/Micro SMG",
	"Karl Abolaji/Double Barrel Shotgun",
	"Charlie Reed/Machine Pistol",
	"Charlie Reed/Sweeper Shotgun",
	"Patrick McReary/Sawed-Off Shotgun",
	"Patrick McReary/Compact Rifle",
	"Gustavo Mota/Carbine Rifle",
	"Gustavo Mota/Assault Shotgun",
	"Chester McCoy/SMG Mk II",
	"Chester McCoy/Bullpup Rifle Mk II",
}
local GunManLoadoutAg = {
	"Karl Abolaji/Sawed-Off Shotgun",
	"Karl Abolaji/Heavy Revolver",
	"Charlie Reed/Assault SMG",
	"Charlie Reed/Pump Shotgun",
	"Patrick McReary/Heavy Shotgun",
	"Patrick McReary/Combat MG",
	"Gustavo Mota/Carbine Rifle",
	"Gustavo Mota/Assault Shotgun",
	"Chester McCoy/Pump Shotgun Mk II",
	"Chester McCoy/Assault Rifle Mk II",
}
local DriverLoad = {
	"Karim Denz/Issi Classic",
	"Karim Denz/Asbo",
	"Karim Denz/Blista Kanjo",
	"Karim Denz/Sentinel Classic",
	"Zach Nelson/Manchez",
	"Zach Nelson/Stryder",
	"Zach Nelson/Defiler",
	"Zach Nelson/Lectro",
	"Taliana Martinez/Retinue Mk II",
	"Taliana Martinez/Drift Yosemite",
	"Taliana Martinez/Sugoi",
	"Taliana Martinez/Jugular",
	"Eddie Toh/Sultan Classic",
	"Eddie Toh/Gauntlet Classic",
	"Eddie Toh/Ellie",
	"Eddie Toh/Komoda",
	"Chester McCoy/Zhaba",
	"Chester McCoy/Vagrant",
	"Chester McCoy/Outlaw",
	"Chester McCoy/Everon",
}
local hackerLoad = {
	"Select",
	"Rickie Lukens",
	"Christian Feltz",
	"Yohan Blair",
	"Avi Schwartzman",
	"Page Harris",
}
local maskLoad = {
	"Select",
	"Geometic Set",
	"Hunter Set",
	"Oni Half Mask Set",
	"Emoji Set",
	"Ornate Skull Set",
	"Lucky Fruit Set",
	"Guerilla Set",
	"Clown Set",
	"Animal Set",
	"Riot Set",
	"Oni Full Mask Set",
	"Hockey Set",
}
CasinoHeistEditor:add_imgui(function()
	if stats.get_int(MPX() .. "H3OPT_APPROACH") == 1 then
		ImGui.SetNextItemWidth(265)
		gunman = ImGui.Combo("Loadout", gunman, GunManLoadoutSi, 10)
	elseif stats.get_int(MPX() .. "H3OPT_APPROACH") == 2 then
		ImGui.SetNextItemWidth(265)
		gunman = ImGui.Combo("Loadout", gunman, GunManLoadoutBC, 10)
	elseif stats.get_int(MPX() .. "H3OPT_APPROACH") == 3 then
		ImGui.SetNextItemWidth(265)
		gunman = ImGui.Combo("Loadout", gunman, GunManLoadoutAg, 10)
	end

	if ImGui.Button("Set Loadout") then
		ImGui.Text(gunman)
		if gunman <= 1 then
			stats.set_int(MPX() .. "H3OPT_CREWWEAP", 1)
			stats.set_int(MPX() .. "H3OPT_WEAPS", gunman)
		elseif gunman <= 4 then
			stats.set_int(MPX() .. "H3OPT_CREWWEAP", 3)
			stats.set_int(MPX() .. "H3OPT_WEAPS", gunman - 2)
		elseif gunman <= 6 then
			stats.set_int(MPX() .. "H3OPT_CREWWEAP", 5)
			stats.set_int(MPX() .. "H3OPT_WEAPS", gunman - 4)
		elseif gunman <= 8 then
			stats.set_int(MPX() .. "H3OPT_CREWWEAP", 2)
			stats.set_int(MPX() .. "H3OPT_WEAPS", gunman - 6)
		elseif gunman <= 10 then
			stats.set_int(MPX() .. "H3OPT_CREWWEAP", 4)
			stats.set_int(MPX() .. "H3OPT_WEAPS", gunman - 8)
		end
	end
	ImGui.Separator()
	ImGui.Text("Getaway Vehicles")
	ImGui.SetNextItemWidth(265)
	driver = ImGui.Combo("", driver, DriverLoad, 20)
	if ImGui.Button("Set Getaway Vehicle") then
		ImGui.Text(driver)
		if driver <= 3 then
			stats.set_int(MPX() .. "H3OPT_CREWDRIVER", 1)
			stats.set_int(MPX() .. "H3OPT_VEHS", driver)
		elseif driver <= 7 then
			stats.set_int(MPX() .. "H3OPT_CREWDRIVER", 4)
			stats.set_int(MPX() .. "H3OPT_VEHS", driver - 4)
		elseif driver <= 11 then
			stats.set_int(MPX() .. "H3OPT_CREWDRIVER", 2)
			stats.set_int(MPX() .. "H3OPT_VEHS", driver - 8)
		elseif driver <= 15 then
			stats.set_int(MPX() .. "H3OPT_CREWDRIVER", 3)
			stats.set_int(MPX() .. "H3OPT_VEHS", driver - 12)
		elseif driver <= 19 then
			stats.set_int(MPX() .. "H3OPT_CREWDRIVER", 5)
			stats.set_int(MPX() .. "H3OPT_VEHS", driver - 16)
		end
	end
	ImGui.Separator()
	ImGui.Text("Hacker")
	ImGui.SetNextItemWidth(265)
	hacker = ImGui.Combo("Hacker", hacker, hackerLoad, 6)
	if ImGui.Button("Set Hacker") then
		ImGui.Text(hacker)
		stats.set_int(MPX() .. "H3OPT_CREWHACKER", hacker)
	end
	ImGui.Separator()
	ImGui.Text("Mask")
	ImGui.SetNextItemWidth(265)
	ImGui.SetNextItemWidth(265)
	mask = ImGui.Combo("Masks", mask, maskLoad, 13)
	if ImGui.Button("Set Mask") then
		ImGui.Text(mask)
		stats.set_int(MPX() .. "H3OPT_MASKS", mask)
	end
	ImGui.Separator()
	if ImGui.Button("Complete preps") then
		CasinoCompletePreps()
	end
	ImGui.Separator()
	ImGui.Text("Cuts")
	ImGui.Text("Preset Cut")
	if ImGui.Button("Set Cut to 100") then
		CutsPresetter(DCCg1, DCCg4, 100)
	end
	casinoPc1 = ImGui.InputInt("Player Cut 1", casinoPc1)
	casinoPc2 = ImGui.InputInt("Player Cut 2", casinoPc2)
	casinoPc3 = ImGui.InputInt("Player Cut 3", casinoPc3)
	casinoPc4 = ImGui.InputInt("Player Cut 4", casinoPc4)
	if ImGui.Button("Set Player Cuts") then
		globals.set_int(DCCg1, casinoPc1)
		globals.set_int(DCCg2, casinoPc2)
		globals.set_int(DCCg3, casinoPc3)
		globals.set_int(DCCg4, casinoPc4)
	end
end)
CasinoHeistEditor:add_separator()
CasinoHeistEditor:add_button("Reload Planning Screen", function()
	locals.set_int("gb_casino_heist_planning", DCRBl, 2)
end)

CasinoHeistEditor:add_separator()
CasinoHeistEditor:add_text("Instant Heist Passed")
CasinoHeistEditor:add_button("Instant Finish $$", function()
	locals.set_int(FMC2020, 50150, 9)
	locals.set_int(FMC2020, 50150 + 1770 + 1, 50)
	gui.show_message("Instant Heist Passed", "Activated")
end)

local CasinoHeistExtra = CasinoHeistEditor:add_tab("Extras")
CasinoHeistExtra:add_text("Make Lester, Driver, Hacker, and Gunman cut to 0%")
CasinoHeistExtra:add_button("Make Fees to 0", function()
	globals.set_int(DCCgun, 0)
	globals.set_int(DCCh, 0)
	globals.set_int(DCCl, 0)
	globals.set_int(DCCd, 0)
end)
CasinoHeistExtra:add_text("Hacks")
CasinoHeistExtra:add_button("Bypass Casino Fingerprint Hack", function()
	if locals.get_int(FMC, DCFHl) == 4 then
		locals.set_int(FMC, DCFHl, 5)
	end
end)
CasinoHeistExtra:add_sameline()
CasinoHeistExtra:add_button("Bypass Keypad Hack", function()
	if locals.get_int(FMC, DCKHl) ~= 4 then
		locals.set_int(FMC, DCKHl, 5)
	end
end)
CasinoHeistExtra:add_sameline()
CasinoHeistExtra:add_button("Bypass Drill Vault Door", function()
	locals.set_int(FMC, DCDVDl1, locals.get_int(FMC, DCDVDl2))
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Updated by DeadlineEm, I used your modest menu version for ideas for this.

-- Deleting enemies does not allow the keycards to drop, so teleport into the
-- seondary buildings to grab the loot, you can open the door for others from
-- the inside
local CayoHeistEditor = HeistsDataEditor:add_tab("Cayo Perico Editor")

CayoHeistEditor:add_text("Cuts to All")
CayoHeistEditor:add_button("100", function()
	CutsPresetter(CPCg1, CPCg4, 100)
end)
CayoHeistEditor:add_text("")
CayoHeistEditor:add_text("Custom Cut")
local cayocut1 = CayoHeistEditor:add_input_int("Cut 1")
local cayocut2 = CayoHeistEditor:add_input_int("Cut 2")
local cayocut3 = CayoHeistEditor:add_input_int("Cut 3")
local cayocut4 = CayoHeistEditor:add_input_int("Cut 4")
CayoHeistEditor:add_button("Set", function()
	globals.set_int(CPCg1, cayocut1:get_value())
	globals.set_int(CPCg2, cayocut2:get_value())
	globals.set_int(CPCg3, cayocut3:get_value())
	globals.set_int(CPCg4, cayocut4:get_value())
end)
CayoHeistEditor:add_separator()

CayoHeistEditor:add_text("Non-Legit Presets")

CayoHeistEditor:add_button("Panther/Gold (Hard)", function()
	stats.set_int(MPX() .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX() .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX() .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_TARGET", 5)
	stats.set_int(MPX() .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX() .. "H4CNF_APPROACH", -1)
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX() .. "H4_PROGRESS", 131055)
	stats.set_int(MPX() .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX() .. "H4LOOT_GOLD_V", 1191817)
	stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 0)
	stats.set_int(MPX() .. "H4_MISSIONS", 65535)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Panther Hard Mode has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)
CayoHeistEditor:add_sameline()
CayoHeistEditor:add_button("Diamond/Gold (Hard)", function()
	stats.set_int(MPX() .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX() .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX() .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_TARGET", 3)
	stats.set_int(MPX() .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX() .. "H4CNF_APPROACH", -1)
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX() .. "H4_PROGRESS", 131055)
	stats.set_int(MPX() .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX() .. "H4LOOT_GOLD_V", 1191817)
	stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 0)
	stats.set_int(MPX() .. "H4_MISSIONS", 65535)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Diamond Hard Mode has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditor:add_sameline()
CayoHeistEditor:add_button("Bonds/Gold (Hard)", function()
	stats.set_int(MPX() .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX() .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX() .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_TARGET", 2)
	stats.set_int(MPX() .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX() .. "H4CNF_APPROACH", -1)
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX() .. "H4_PROGRESS", 131055)
	stats.set_int(MPX() .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX() .. "H4LOOT_GOLD_V", 1191817)
	stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 0)
	stats.set_int(MPX() .. "H4_MISSIONS", 65535)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Bonds Hard Mode has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditor:add_sameline()
CayoHeistEditor:add_button("Necklace/Gold (Hard)", function()
	stats.set_int(MPX() .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX() .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX() .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_TARGET", 1)
	stats.set_int(MPX() .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX() .. "H4CNF_APPROACH", -1)
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX() .. "H4_PROGRESS", 131055)
	stats.set_int(MPX() .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX() .. "H4LOOT_GOLD_V", 1191817)
	stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 0)
	stats.set_int(MPX() .. "H4_MISSIONS", 65535)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Necklace Hard Mode has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditor:add_sameline()
CayoHeistEditor:add_button("Tequila/Gold (Hard)", function()
	stats.set_int(MPX() .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX() .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX() .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_TARGET", 0)
	stats.set_int(MPX() .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX() .. "H4CNF_APPROACH", -1)
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX() .. "H4_PROGRESS", 131055)
	stats.set_int(MPX() .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX() .. "H4LOOT_GOLD_V", 1191817)
	stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 0)
	stats.set_int(MPX() .. "H4_MISSIONS", 65535)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Tequila Hard Mode has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)
CayoHeistEditor:add_separator()
CayoHeistEditor:add_text("Legit Presets")

CayoHeistEditor:add_button("Panther/Gold (L. Hard)", function()
	stats.set_int(MPX() .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX() .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX() .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_TARGET", 5) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
	stats.set_int(MPX() .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX() .. "H4CNF_APPROACH", -1)
	-- Island Loot // -1 shows all, 0 shows none
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I", 0)

	-- Compound Loot // -1 shows all, 0 shows none
	stats.set_int(MPX() .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX() .. "H4_PROGRESS", 131055) -- 131055 // Hard Mode  -  130667 // Solo Normal??

	-- These are what is set when you find loot throughout the island/compound
	stats.set_int(MPX() .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 0)

	-- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
	stats.set_int(MPX() .. "H4LOOT_GOLD_V", 45375)
	globals.set_int(PSV, 1900000) -- Panther Value -- 1900000 shows as 2,090,000 in-game on the board. 190,000 difference.

	stats.set_int(MPX() .. "H4_MISSIONS", 65535)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Panther Hard Mode (Legit) has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditor:add_sameline()

CayoHeistEditor:add_button("Diamond/Gold (L. Hard)", function()
	stats.set_int(MPX() .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX() .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX() .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_TARGET", 3) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
	stats.set_int(MPX() .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX() .. "H4CNF_APPROACH", -1)
	-- Island Loot // -1 shows all, 0 shows none
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I", 0)

	-- Compound Loot // -1 shows all, 0 shows none
	stats.set_int(MPX() .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX() .. "H4_PROGRESS", 131055) -- 131055 // Hard Mode  -  130667 // Solo Normal??

	-- These are what is set when you find loot throughout the island/compound
	stats.set_int(MPX() .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 0)

	-- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
	stats.set_int(MPX() .. "H4LOOT_GOLD_V", 45375)
	globals.set_int(PDIAMOND, 1300000) -- Diamond Value  -- 1300000 shows as 1,430,000 in-game. 130,000 difference.

	stats.set_int(MPX() .. "H4_MISSIONS", 65535)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Diamond Hard Mode (Legit) has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditor:add_sameline()

CayoHeistEditor:add_button("Bonds/Gold (L. Hard)", function()
	stats.set_int(MPX() .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX() .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX() .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_TARGET", 2) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
	stats.set_int(MPX() .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX() .. "H4CNF_APPROACH", -1)
	-- Island Loot // -1 shows all, 0 shows none
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I", 0)

	-- Compound Loot // -1 shows all, 0 shows none
	stats.set_int(MPX() .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX() .. "H4_PROGRESS", 131055) -- 131055 // Hard Mode  -  130667 // Solo Normal??

	-- These are what is set when you find loot throughout the island/compound
	stats.set_int(MPX() .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 0)

	-- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
	stats.set_int(MPX() .. "H4LOOT_GOLD_V", 45375)
	globals.set_int(BB, 770000) -- Bonds Value -- 770000 shows as 847,000 in-game.  77,000 difference.

	stats.set_int(MPX() .. "H4_MISSIONS", 65535)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Bonds Hard Mode (Legit) has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditor:add_sameline()

CayoHeistEditor:add_button("Necklace/Gold (L. Hard)", function()
	stats.set_int(MPX() .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX() .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX() .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_TARGET", 1) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
	stats.set_int(MPX() .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX() .. "H4CNF_APPROACH", -1)
	-- Island Loot // -1 shows all, 0 shows none
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I", 0)

	-- Compound Loot // -1 shows all, 0 shows none
	stats.set_int(MPX() .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX() .. "H4_PROGRESS", 131055) -- 131055 // Hard Mode  -  130667 // Solo Normal??

	-- These are what is set when you find loot throughout the island/compound
	stats.set_int(MPX() .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 0)

	-- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
	stats.set_int(MPX() .. "H4LOOT_GOLD_V", 45375)
	globals.set_int(RN, 700000) -- Necklace Value -- 700000 shows as 770,000 in-game. 70,000 difference.

	stats.set_int(MPX() .. "H4_MISSIONS", 65535)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Necklace Hard Mode (Legit) has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditor:add_sameline()

CayoHeistEditor:add_button("Tequila/Gold (L. Hard)", function()
	stats.set_int(MPX() .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX() .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX() .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_TARGET", 0) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
	stats.set_int(MPX() .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX() .. "H4CNF_APPROACH", -1)
	-- Island Loot // -1 shows all, 0 shows none
	stats.set_int(MPX() .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I", 0)

	-- Compound Loot // -1 shows all, 0 shows none
	stats.set_int(MPX() .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX() .. "H4_PROGRESS", 131055) -- 131055 // Hard Mode  -  130667 // Solo Normal??

	-- These are what is set when you find loot throughout the island/compound
	stats.set_int(MPX() .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX() .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 0)

	-- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
	stats.set_int(MPX() .. "H4LOOT_GOLD_V", 45375)
	globals.set_int(TEQUILA, 693000) -- Tequila Value -- 630000 shows as 693,000. 63,000 difference.

	stats.set_int(MPX() .. "H4_MISSIONS", 65535)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Tequila Hard Mode (Legit) has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditor:add_separator()
CayoHeistEditor:add_text("Reset Presets Completely")
CayoHeistEditor:add_button("Reset Heist Completely", function()
	stats.set_int(MPX() .. "H4_MISSIONS", 0)
	stats.set_int(MPX() .. "H4_PROGRESS", 0)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 0)
	stats.set_int(MPX() .. "H4CNF_APPROACH", 0)
	stats.set_int(MPX() .. "H4CNF_BS_ENTR", 0)
	stats.set_int(MPX() .. "H4CNF_BS_GEN", 0)
end)

CayoHeistEditor:add_separator()
CayoHeistEditor:add_text(
	"Press this after clicking one of the above presets or after the reset heist Completely Option"
)
CayoHeistEditor:add_button("Reset Kosatka Board", function()
	locals.set_int(HIP, 1546, 2)
	gui.show_message("Cayo Heist", "Planning board has been reset!")
end)

CayoHeistEditor:add_separator()
CayoHeistEditor:add_text("During Heist")
CayoHeistEditor:add_button("Skip Drainage Cut", function()
	locals.set_int(FMC2020, CPSTCl, 6)
	gui.show_message("Cayo Heist", "Bypassed Drainage Cut")
end)

CayoHeistEditor:add_sameline()
CayoHeistEditor:add_button("Skip Fingerprint Scanner", function()
	locals.set_int(FMC2020, CPFHl, 5)
	gui.show_message("Cayo Heist", "Bypassed Fingerprint Scanner")
end)

CayoHeistEditor:add_sameline()
CayoHeistEditor:add_button("Skip Glass Cut", function()
	locals.set_float(FMC2020, CPPCCl, 100.0)
	gui.show_message("Cayo Heist", "Bypassed Plasma Cutter")
end)

CayoHeistEditor:add_sameline()
CayoHeistEditor:add_button("Remove All CCTV's", function()
	for _, ent in pairs(entities.get_all_objects_as_handles()) do
		for __, cam in pairs(CamList) do
			if ENTITY.GET_ENTITY_MODEL(ent) == cam then
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, true, true)
				ENTITY.DELETE_ENTITY(ent)
			end
		end
	end
end)
CamList = {
	joaat("prop_cctv_cam_01a"),
	joaat("prop_cctv_cam_01b"),
	joaat("prop_cctv_cam_02a"),
	joaat("prop_cctv_cam_03a"),
	joaat("prop_cctv_cam_04a"),
	joaat("prop_cctv_cam_04c"),
	joaat("prop_cctv_cam_05a"),
	joaat("prop_cctv_cam_06a"),
	joaat("prop_cctv_cam_07a"),
	joaat("prop_cs_cctv"),
	joaat("p_cctv_s"),
	joaat("hei_prop_bank_cctv_01"),
	joaat("hei_prop_bank_cctv_02"),
	joaat("ch_prop_ch_cctv_cam_02a"),
	joaat("xm_prop_x17_server_farm_cctv_01"),
}

CayoHeistEditor:add_sameline()
CayoHeistEditor:add_button("Delete Mission NPC's", function() -- Thanks to RazorGamerX for the help on this
	for index, ped in ipairs(entities.get_all_peds_as_handles()) do
		local model = ENTITY.GET_ENTITY_MODEL(ped)
		if model == 0x7ED5AD78 or model == 0x6C8C08E5 or model == 0x995B3F9F or model == 0xB881AEE then
			ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ped, true, true)
			PED.DELETE_PED(ped)
		end
	end
end)

CayoHeistEditor:add_separator()
CayoHeistEditor:add_text("After Heist")
CayoHeistEditor:add_button("Skip Cooldown", function()
	-- Solo Skip
	stats.set_int("MP0_H4_TARGET_POSIX", 1659643454)
	stats.set_int("MP0_H4_COOLDOWN", 0)
	stats.set_int("MP0_H4_COOLDOWN_HARD", 0)
	-- Multiplayer Skip
	stats.set_int("MP0_H4_TARGET_POSIX", 1659429119)
	stats.set_int("MP0_H4_COOLDOWN", 0)
	stats.set_int("MP0_H4_COOLDOWN_HARD", 0)
	-- Solo Skip (Second Character)
	stats.set_int("MP1_H4_TARGET_POSIX", 1659643454)
	stats.set_int("MP1_H4_COOLDOWN", 0)
	stats.set_int("MP1_H4_COOLDOWN_HARD", 0)
	-- Multiplayer Skip (Second Character)
	stats.set_int("MP1_H4_TARGET_POSIX", 1659429119)
	stats.set_int("MP1_H4_COOLDOWN", 0)
	stats.set_int("MP1_H4_COOLDOWN_HARD", 0)

	gui.show_message("Cayo Heist", "Skipped Cayo Perico Cooldown for all characters")
	gui.show_message("Cayo Heist", "Go to story mode and come back to apply the reset")
end)
CayoHeistEditor:add_separator()
CayoHeistEditor:add_text("How to Set Up or Bypass Cooldown:")
CayoHeistEditor:add_text(
	"Make sure you have completed the heist and you are standing in front of the planning screen"
)
CayoHeistEditor:add_text("Click Skip Cooldown, then click on your Preset and click Reset Kosatka Board")

CayoHeistEditor:add_separator()
CayoHeistEditor:add_text("Instant Heist Passed")
CayoHeistEditor:add_button("Instant Finish $$", function()
	locals.set_int(FMC2020, 50150, 9)
	locals.set_int(FMC2020, 50150 + 1770 + 1, 50)
	gui.show_message("Instant Heist Passed", "Activated")
end)

-- Cayo Bag Size & Value Editor
local cayoSizeEditor = CayoHeistEditor:add_tab("Size/Value Editor")
cayoSizeEditor:add_text("Bag Size Editor")
bagSizeVal = 1800
cayoSizeEditor:add_imgui(function()
	bagSizeVal, used = ImGui.SliderInt("Bag Size", bagSizeVal, 1800, 7200) -- 7200 = 4 players, this works if you want more money solo and it adjusts so you can always have full bags
	if used then
		globals.set_int(BAS1, bagSizeVal)
		gui.show_message("Bag Size Modified!")
	end
end)

cayoSizeEditor:add_text("Custom Bag Size Editor")
custombagSizeVal = 1800
cayoSizeEditor:add_imgui(function()
	custombagSizeVal, used = ImGui.SliderInt("Custom Bag Size", custombagSizeVal, 1800, 2147483646)
	if used then
		globals.set_int(BAS1, custombagSizeVal)
		gui.show_message("Custom Bag Size Modified!")
	end
end)

cayoSizeEditor:add_separator()
cayoSizeEditor:add_text("Primary Target Editors")
pantherSizeVal = 1900000
cayoSizeEditor:add_imgui(function()
	pantherSizeVal, used = ImGui.SliderInt("Panther Value", pantherSizeVal, 1900000, 3800000) -- Double the original price
	out = "Reset the board to see changes"

	if used then
		globals.set_int(PSV, pantherSizeVal)
		gui.show_message("Panther Value Modified!", out)
	end
end)

diamondSizeVal = 1300000
cayoSizeEditor:add_imgui(function()
	diamondSizeVal, used = ImGui.SliderInt("Diamond Value", diamondSizeVal, 1300000, 2600000) -- Double the original price
	out = "Reset the board to see changes"

	if used then
		globals.set_int(PDIAMOND, diamondSizeVal)
		gui.show_message("Diamond Value Modified!", out)
	end
end)

bondSizeVal = 770000
cayoSizeEditor:add_imgui(function()
	bondSizeVal, used = ImGui.SliderInt("Bonds Value", bondSizeVal, 770000, 1540000) -- Double the original price
	out = "Reset the board to see changes"

	if used then
		globals.set_int(BB, bondSizeVal)
		gui.show_message("Bonds Value Modified!", out)
	end
end)

necklaceSizeVal = 700000
cayoSizeEditor:add_imgui(function()
	necklaceSizeVal, used = ImGui.SliderInt("Necklace Value", necklaceSizeVal, 700000, 1400000) -- Double the original price
	out = "Reset the board to see changes"

	if used then
		globals.set_int(RN, necklaceSizeVal)
		gui.show_message("Necklace Value Modified!", out)
	end
end)

tequilaSizeVal = 693000
cayoSizeEditor:add_imgui(function()
	tequilaSizeVal, used = ImGui.SliderInt("Tequila Value", tequilaSizeVal, 693000, 1400000) -- Double the original price
	out = "Reset the board to see changes"

	if used then
		globals.set_int(TEQUILA, tequilaSizeVal)
		gui.show_message("Tequila Value Modified!", out)
	end
end)

cayoSizeEditor:add_separator()
cayoSizeEditor:add_text("Secondary Target Editors")

goldSizeVal = 45375
cayoSizeEditor:add_imgui(function()
	goldSizeVal, used = ImGui.SliderInt("Gold Value", goldSizeVal, 45375, 181500) -- Quadruple the original price
	out = "Reset the board to see changes"

	if used then
		stats.set_int(MPX() .. "H4LOOT_GOLD_V", goldSizeVal)
		gui.show_message("Gold Value Modified!", out)
	end
end)

cokeSizeVal = 25312
cayoSizeEditor:add_imgui(function()
	cokeSizeVal, used = ImGui.SliderInt("Coke Value", cokeSizeVal, 25312, 101248) -- Quadruple the original price
	out = "Reset the board to see changes"

	if used then
		stats.set_int(MPX() .. "H4LOOT_COKE_V", cokeSizeVal)
		gui.show_message("Coke Value Modified!", out)
	end
end)

paintSizeVal = 22500
cayoSizeEditor:add_imgui(function()
	paintSizeVal, used = ImGui.SliderInt("Paintings Value", paintSizeVal, 22500, 90000) -- Quadruple the original price
	out = "Reset the board to see changes"

	if used then
		stats.set_int(MPX() .. "H4LOOT_PAINT_V", paintSizeVal)
		gui.show_message("Paintings Value Modified!", out)
	end
end)

weedSizeVal = 16875
cayoSizeEditor:add_imgui(function()
	weedSizeVal, used = ImGui.SliderInt("Weed Value", weedSizeVal, 16875, 67500) -- Quadruple the original price
	out = "Reset the board to see changes"

	if used then
		stats.set_int(MPX() .. "H4LOOT_WEED_V", weedSizeVal)
		gui.show_message("Weed Value Modified!", out)
	end
end)

cashSizeVal = 10406
cayoSizeEditor:add_imgui(function()
	cashSizeVal, used = ImGui.SliderInt("Cash Value", cashSizeVal, 10406, 41624) -- Quadruple the original price
	out = "Reset the board to see changes"

	if used then
		stats.set_int(MPX() .. "H4LOOT_WEED_V", cashSizeVal)
		gui.show_message("Cash Value Modified!", out)
	end
end)
cayoSizeEditor:add_text("These values seem incorrect, but the game reads them properly.")
cayoSizeEditor:add_text("Minimum values are exact defaults for ALL targets.")
cayoSizeEditor:add_separator()
cayoSizeEditor:add_text("Press this after setting values.")
cayoSizeEditor:add_button("Reset Kosatka Board", function()
	locals.set_int(HIP, 1546, 2)
	gui.show_message("Cayo Heist", "Planning board has been reset!")
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DoomsdayHeistEditor = HeistsDataEditor:add_tab("Doomsday Heist Editor")

DoomsdayHeistEditor:add_button("One Click Setup Act 1: The Data Breaches", function()
	stats.set_int(MPX() .. "GANGOPS_FLOW_MISSION_PROG", 7)
	stats.set_int(MPX() .. "GANGOPS_FM_MISSION_PROG", 7)
end)

DoomsdayHeistEditor:add_button("One Click Setup Act 2: The Bodgan Problem", function()
	stats.set_int(MPX() .. "GANGOPS_FLOW_MISSION_PROG", 240)
	stats.set_int(MPX() .. "GANGOPS_FM_MISSION_PROG", 248)
end)

DoomsdayHeistEditor:add_button("One Click Setup Act 3: Doomsday Scenario", function()
	stats.set_int(MPX() .. "GANGOPS_FLOW_MISSION_PROG", 15872)
	stats.set_int(MPX() .. "GANGOPS_FM_MISSION_PROG", 16128)
end)

DoomsdayHeistEditor:add_text("Set Doomsday Heist Cuts")
DoomsdayHeistEditor:add_text("Preset Cut")
DoomsdayHeistEditor:add_button("100", function()
	CutsPresetter(DCg1, DCg4, 100)
end)
DoomsdayHeistEditor:add_text("Custom Cuts")
local dmsdyCut1 = DoomsdayHeistEditor:add_input_int("Cut 1")
local dmsdyCut2 = DoomsdayHeistEditor:add_input_int("Cut 2")
local dmsdyCut3 = DoomsdayHeistEditor:add_input_int("Cut 3")
local dmsdyCut4 = DoomsdayHeistEditor:add_input_int("Cut 4")
DoomsdayHeistEditor:add_button("Set Cuts", function()
	globals.set_int(DCg1, dmsdyCut1:get_value())
	globals.set_int(DCg2, dmsdyCut2:get_value())
	globals.set_int(DCg3, dmsdyCut3:get_value())
	globals.set_int(DCg4, dmsdyCut4:get_value())
end)

DoomsdayHeistEditor:add_separator()
DoomsdayHeistEditor:add_text("Preps")
DoomsdayHeistEditor:add_button("Reset Preps", function()
	DoomsdayActSetter(240, 0)
end)

DoomsdayHeistEditor:add_sameline()
DoomsdayHeistEditor:add_button("Complete Preps", function()
	stats.set_int(MPX() .. "GANGOPS_FM_MISSION_PROG", -1)
end)

DoomsdayHeistEditor:add_separator()
DoomsdayHeistEditor:add_text("By pass Doomsday Scenario hack")
DoomsdayHeistEditor:add_button("By Act III Pass hack", function()
	locals.set_int(FMC, DDSHl, 3)
end)

DoomsdayHeistEditor:add_separator()
DoomsdayHeistEditor:add_text("Instant Heist Passed")
DoomsdayHeistEditor:add_button("Instant Finish $$", function()
	locals.set_int(FMC, 19746, 12)
	locals.set_int(FMC, 19746 + 2686, 10000000)
	locals.set_int(FMC, 28365 + 1, 99999)
	locals.set_int(FMC, 31621 + 69, 99999)
	gui.show_message("Instant Heist Passed", "Activated")
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

MissionsSelectorAndCooldown = CSYON:add_tab("Missions Selector And cooldown")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

MissionsSelectorAndCooldown:add_button("Remove Dax CoolDown", function()
	stats.set_int(MPX() .. "XM22JUGGALOWORKCDTIMER", -1)
end)

MissionsSelectorAndCooldown:add_button("Remove VIP/MC Cool Down", function()
	stats.set_int("MPPLY_VIPGAMEPLAYDISABLEDTIMER", 0)
end)

MissionsSelectorAndCooldown:add_button("Skip Yacht Misions", function()
	stats.set_int(MPX() .. "YACHT_MISSION_PROG", 0)
	stats.set_int(MPX() .. "YACHT_MISSION_FLOW", 21845)
	stats.set_int(MPX() .. "CASINO_DECORATION_GIFT_1", -1)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ArcadeGames = CSYON:add_tab("Arcade Game Option")
GoGoSpaceMonkey = ArcadeGames:add_tab("Go Go Space Monkey 3")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

GoGoSpaceMonkey:add_imgui(function (script)
	if is_script_active("ggsm_arcade") then
		render_ggsm()
	else
		ggsm_godmode = false
		ggsm_selected_weapon = 0
		ggsm_selected_power = 0
		ggsm_selected_slot = 0
		ggsm_selected_sector = 0
		ImGui.Text("Game is not running.")
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Credits = CSYON:add_tab("Credits")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Yimura = Credits:add_tab("Yimura")
Yimura:add_text("Yim Menu Cheat Developer")
Yimura:add_text("Cheat on GitHub:")
Yimura:add_text("https://github.com/YimMenu/YimMenu")

L7NEG = Credits:add_tab("L7NEG")
L7NEG:add_text("Thanks to him for little Help <3")
L7NEG:add_text("Source:")
L7NEG:add_text("https://github.com/YimMenu-Lua/Utimate-Menu")

CSYOND3V = Credits:add_tab("CSYON")
CSYOND3V:add_text("Codded This W Script With <3 To You All")

PLANTINDESK = Credits:add_tab("plantindesk")
PLANTINDESK:add_text("For His W Cuts Editor And Useful Heists Hax")
PLANTINDESK:add_text("Source:")
PLANTINDESK:add_text("https://github.com/plantindesk/Silent-Night")

SILENTSALO = Credits:add_tab("Silent")
SILENTSALO:add_text("For His W Useful Unlocls Along With Casino And Gunvan Menu")
SILENTSALO:add_text("Source:")
SILENTSALO:add_text("https://github.com/SilentSal0/Silent-Night")

visionary2709 = Credits:add_tab("visionary2709")
visionary2709:add_text("For His W Updated Globals of 200 Vehicles")
visionary2709:add_text("Source:")
visionary2709:add_text("https://github.com/YimMenu-Lua/Removed-vehicles")

SLON = Credits:add_tab("SLON")
SLON:add_text("For ''YimCeo v0.6 by Slon_.lua'' Code")
SLON:add_text("Source:")
SLON:add_text("https://www.unknowncheats.me/forum/grand-theft-auto-v/591335-yimceo-ceo-crates-method-yimmenu.html")

Alestarov = Credits:add_tab("Alestarov")
Alestarov:add_text("For 1 Click Cayo Setup")
Alestarov:add_text("Source:")
Alestarov:add_text("https://github.com/YimMenu-Lua/Alestarov-Menu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
--────────────────────────────────────────────────────────────────────────────────────────
--─██████████████─██████████████─████████──████████─██████████████─██████──────────██████─
--─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░██──██░░░░██─██░░░░░░░░░░██─██░░██████████──██░░██─
--─██░░██████████─██░░██████████─████░░██──██░░████─██░░██████░░██─██░░░░░░░░░░██──██░░██─
--─██░░██─────────██░░██───────────██░░░░██░░░░██───██░░██──██░░██─██░░██████░░██──██░░██─
--─██░░██─────────██░░██████████───████░░░░░░████───██░░██──██░░██─██░░██──██░░██──██░░██─
--─██░░██─────────██░░░░░░░░░░██─────████░░████─────██░░██──██░░██─██░░██──██░░██──██░░██─
--─██░░██─────────██████████░░██───────██░░██───────██░░██──██░░██─██░░██──██░░██──██░░██─
--─██░░██─────────────────██░░██───────██░░██───────██░░██──██░░██─██░░██──██░░██████░░██─
--─██░░██████████─██████████░░██───────██░░██───────██░░██████░░██─██░░██──██░░░░░░░░░░██─
--─██░░░░░░░░░░██─██░░░░░░░░░░██───────██░░██───────██░░░░░░░░░░██─██░░██──██████████░░██─
--─██████████████─██████████████───────██████───────██████████████─██████──────────██████─
--────────────────────────────────────────────────────────────────────────────────────────
                                                                                                                               
                                                                         dddddddd                                                
        CCCCCCCCCCCCC                                                    d::::::d  iiii           tttt                           
     CCC::::::::::::C                                                    d::::::d i::::i       ttt:::t                           
   CC:::::::::::::::C                                                    d::::::d  iiii        t:::::t                           
  C:::::CCCCCCCC::::C                                                    d:::::d               t:::::t                           
 C:::::C       CCCCCCrrrrr   rrrrrrrrr       eeeeeeeeeeee        ddddddddd:::::d iiiiiii ttttttt:::::ttttttt        ssssssssss   
C:::::C              r::::rrr:::::::::r    ee::::::::::::ee    dd::::::::::::::d i:::::i t:::::::::::::::::t      ss::::::::::s  
C:::::C              r:::::::::::::::::r  e::::::eeeee:::::ee d::::::::::::::::d  i::::i t:::::::::::::::::t    ss:::::::::::::s 
C:::::C              rr::::::rrrrr::::::re::::::e     e:::::ed:::::::ddddd:::::d  i::::i tttttt:::::::tttttt    s::::::ssss:::::s
C:::::C               r:::::r     r:::::re:::::::eeeee::::::ed::::::d    d:::::d  i::::i       t:::::t           s:::::s  ssssss 
C:::::C               r:::::r     rrrrrrre:::::::::::::::::e d:::::d     d:::::d  i::::i       t:::::t             s::::::s      
C:::::C               r:::::r            e::::::eeeeeeeeeee  d:::::d     d:::::d  i::::i       t:::::t                s::::::s   
 C:::::C       CCCCCC r:::::r            e:::::::e           d:::::d     d:::::d  i::::i       t:::::t    ttttttssssss   s:::::s 
  C:::::CCCCCCCC::::C r:::::r            e::::::::e          d::::::ddddd::::::ddi::::::i      t::::::tttt:::::ts:::::ssss::::::s
   CC:::::::::::::::C r:::::r             e::::::::eeeeeeee   d:::::::::::::::::di::::::i      tt::::::::::::::ts::::::::::::::s 
     CCC::::::::::::C r:::::r              ee:::::::::::::e    d:::::::::ddd::::di::::::i        tt:::::::::::tt s:::::::::::ss  
        CCCCCCCCCCCCC rrrrrrr                eeeeeeeeeeeeee     ddddddddd   dddddiiiiiiii          ttttttttttt    sssssssssss    
                                                                                                                                 
                                                                                                                                 
                                                                                                                                 
                                                                                                                                 
          Resources used -> Ultimate controller by SLON 
                         -> YimCeo by SLON                                                                                                       
                         -> API - Thank you Yimura <3 
                         -> Complied & Editied By CSYON 
                         -> all others Credits you find in SubMenu himself
--]]
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
