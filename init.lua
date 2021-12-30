function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 3.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = false

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target
Config.OpenKey = 'LMENU' -- Left Alt
Config.OpenControlKey = 19 -- Control for keypress detection also Left Alt for the eye itself, controls are found here https://docs.fivem.net/docs/game-references/controls/

-- Key to open the menu
Config.MenuControlKey = 238 -- Control for keypress detection on the context menu, this is the Right Mouse Button, controls are found here https://docs.fivem.net/docs/game-references/controls/

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {
	["pdstash/outfit1"] = {
        name = "pdstash/outfit1",
        coords = vector3(462.29, -1000.27, 30.69),
        length = 1.2,
        width = 5.2,
        heading = 0,
        debugPoly = false,
		minZ = 29.39,
		maxZ = 32.59,
        options = {
            {
                event = "police:client:pstash",
                icon = "fas fa-clipboard",
                label = "Personal Stash",
                job = "police",
            },
			{
                event = "fivem-appearance:clothingShop",
                icon = "fas fa-clipboard",
                label = "Clothing Menu",
                job = "police",
            },
        },
        distance = 1.5
    },
	["pdstash/outfit2"] = {
        name = "pdstash/outfit2",
        coords = vector3(461.83, -995.3, 30.69),
        length = 1.0,
        width = 4.8,
        heading = 0,
        debugPoly = false,
		minZ = 29.39,
		maxZ = 32.59,
        options = {
            {
                event = "police:client:pstash",
                icon = "fas fa-clipboard",
                label = "Personal Stash",
                job = "police",
            },
			{
                event = "fivem-appearance:clothingShop",
                icon = "fas fa-clipboard",
                label = "Clothing Menu",
                job = "police",
            },
        },
        distance = 1.5
    },
    ["PDBossMenu"] = {
      name = "PDBossMenu",
      coords = vector3(461.58, -986.46, 30.69),
      length = 1.4,
      width = 30.,
      heading = 0,
      debugPoly = false,
      minZ = 27.29,
      maxZ = 31.29,
      options = {
          {
              event = "qb-bossmenu:client:openMenu",
              icon = "fas fa-clipboard",
              label = "BossMenu",
              job = "police",
          },
      },
      distance = 1.5
  },
  ["FireEmsClockin"] = {
    name = "FireEmsClockin",
    coords = vector3(302.21, -599.63, 43.71),
    length = 3.4,
    width = 0.6,
    heading = 341,
    debugPoly = false,
    minZ=39.51,
    maxZ=45.11,
    options = {
        {
            event = "fivem-appearance:clothingShop",
            icon = "fas fa-clipboard",
            label = "Outfits",
            job = "ambulance",
        },
    },
    distance = 1.5
    
  },
  ["FireEmsClockin1"] = {
    name = "FireEmsClockin1",
    coords = vector3(298.41, -597.8, 43.28),
    length = 3.8,
    width = 0.6,
    heading = 340,
    debugPoly = false,
    minZ=40.88,
    maxZ=44.88,
    options = {
        {
            event = "fivem-appearance:clothingShop",
            icon = "fas fa-clipboard",
            label = "Outfits",
            job = "ambulance",
        },
    },
    distance = 1.5
    
  },
  ["FireEmscabnet"] = {
    name = "FireEmscabnet",
    coords = vector3(306.51, -602.52, 43.28),
    length = 3.8,
    width = 0.6,
    heading = 340,
    debugPoly = false,
    minZ=40.88,
    maxZ=44.88,
    options = {
        {
            event = "cabnet",
            icon = "fas fa-clipboard",
            label = "Cabnet",
            job = "ambulance",
        },
    },
    distance = 1.5
    
  },
  ["GarajePlazaEnter"] = {
    name = "GarajePlazaEnter",
    coords = vector3(220.46, -811.35, 30.73),
    length = 3.8,
    width = 0.6,
    heading = 340,
    debugPoly = false,
    minZ=28.88,
    maxZ=31.88,
    options = {
        {
            event = "qb-garages:client:garagemenu",
            icon = "fas fa-clipboard",
            label = "Garaje",
           -- job = "ambulance",
        },
    },
    distance = 1.5
    
  },
  ["GarajePlazaExit"] = {
    name = "GarajePlazaExit",
    coords = vector3(214.25, -807.58, 31.65),
    length = 3.8,
    width = 2.5,
    heading = 338,
    debugPoly = false,
    minZ=28.88,
    maxZ=31.88,
    options = {
        {
            event = "qb-garages:client:putgarage",
            icon = "fas fa-clipboard",
            label = "Guardar Vehiculo",
           -- job = "ambulance",
        },
    },
    distance = 6.5
    
  },
  ["Garaje606"] = {
    name = "Garaje606",
    coords = vector3(68.98, 12.47, 69.21),
    length = 0.6,
    width = 3.8,
    heading = 250.22,
    debugPoly = false,
    minZ=67.88,
    maxZ=70.88,
    options = {
        {
            event = "qb-garages:client:garagemenu",
            icon = "fas fa-clipboard",
            label = "Garage",
           -- job = "ambulance",
        },
        {
            event = "qb-garages:client:putgarage",
            icon = "fas fa-clipboard",
            label = "Guardar Vehiculo",
           -- job = "ambulance",
        },
    },
    distance = 4.5
    
  },
  ["Garaje594"] = {
    name = "Garaje594",
    coords = vector3(363.15, 298.11, 103.88),
    length = 0.6,
    width = 3.8,
    heading = 250.22,
    debugPoly = false,
    minZ=101.88,
    maxZ=104.88,
    options = {
        {
            event = "qb-garages:client:garagemenu",
            icon = "fas fa-clipboard",
            label = "Garage",
           -- job = "ambulance",
        },
        {
            event = "qb-garages:client:putgarage",
            icon = "fas fa-clipboard",
            label = "Guardar Vehiculo",
           -- job = "ambulance",
        },
    },
    distance = 4.5
    
  },
  ["Garaje703"] = {
    name = "Garaje703",
    coords = vector3(-1159.33, -739.7, 19.89),
    length = 2.8,
    width = 3.5,
    heading = 128.15,
    debugPoly = false,
    minZ=18.88,
    maxZ=21.88,
    options = {
        {
            event = "qb-garages:client:garagemenu",
            icon = "fas fa-clipboard",
            label = "Garage",
           -- job = "ambulance",
        },
        {
            event = "qb-garages:client:putgarage",
            icon = "fas fa-clipboard",
            label = "Guardar Vehiculo",
           -- job = "ambulance",
        },
    },
    distance = 4.5
    
  },
  

------------------ Layout  
--   ["GarajePostal#"] = {
--     name = "GarajePostal#",
--     coords = vector3(363.15, 298.11, 103.88),
--     length = 0.6,
--     width = 3.8,
--     heading = 250.22,
--     debugPoly = false,
--     minZ=101.88,
--     maxZ=104.88,
--     options = {
--         {
--             event = "qb-garages:client:garagemenu",
--             icon = "fas fa-clipboard",
--             label = "Garage",
--            -- job = "ambulance",
--         },
--         {
--             event = "qb-garages:client:putgarage",
--             icon = "fas fa-clipboard",
--             label = "Guardar Vehiculo",
--            -- job = "ambulance",
--         },
--     },
--     distance = 4.5
    
--   }, 

}

Config.PolyZones = {

}

Config.TargetBones = {

}

Config.TargetEntities = {

}

Config.TargetModels = {
	["BlackMarketDealers"] = {
        models = {
            "s_m_y_dealer_01"
        },
        options = {
            {
                type = "client",
                event = "qb-weapondealer:client:dealerloc",
                parameters = {},
                icon = "fab fa-weixin",
                label = "Black Market",
            },
        },
        distance = 2.5
    },
	["Atms"] = {
        models = {
			`prop_atm_01`,
			`prop_atm_02`,
			`prop_atm_03`,
			`prop_fleeca_atm`,
        },
        options = {
            {
			    type = "server",
                event = "qb-atms:server:openatm",
                parameters = {},
                icon = "fas fa-address-book",
                label = "ATM",
            },
        },
        distance = 4.0
    },
    ["Dumpster"] = {
        models = {
            218085040, 666561306, -58485588, -206690185, 1511880420, 682791951,811169045,-1096777189,1614656839,-130812911,437765445,-317177646,673826957,-93819890,-341442425,1143474856,-1187286639,1792999139,1748268526,-1830793175,-329415894,-1426008804,354692929,1919238784,-96647174,1380691550,-85604259,234941195,-14708062,1437508529,-5943724,-468629664,-1472203944,-1472203944,-675277761,-433502981,-935625561,1627301588,-654874323,-1998455445,651101403,1010534896,909943734,1388415578,998415499,1329570871,-228596739,-115771139,628215202,173513051,2012837021,1948359883,600967813,-375613925,1813879595,1388308576,-289082718,-289082718,897494494,-1681329307,1138881502,-1895783233,-819563011
        },
        options = {
            {
                type = "client",
                event = "qb-trashsearch:client:searchtrash",
                parameters = {},
                icon = "fas fa-address-book",
                label = "Dumpster Dive",
            },
        },
        distance = 4.0
    },
    ["GarbageGarage"] = {
        models = {
            's_m_y_garbage',
        },
        options = {
            {
                type = "client",
                event = "garbagestart:start",
                icon = "fas fa-car",
                label = "Collect Pay check",
                job = 'garbage',
            },    				
        },
        distance = 4.0
    }, 	
    ["TaxiGarage"] = {
        models = {
            's_m_y_airworker',
        },
        options = {
            {
                type = "client",
                event = "taxigarage:menu",
                icon = "fas fa-car",
                label = "Taxi Garage",
                job = 'taxi',				
            },
        },
        distance = 4.0
    }, 
    ["Fred"] = {
        models = {
            's_m_y_blackops_01',
        },
        options = {
            {
                type = "client",
                event = "fred:menu",
                icon = "fas fa-car",
                label = "Taxi Garage",		
            },
        },
        distance = 4.0
    }, 
}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {

}

Config.Peds = {
		------------------------------------------------------------------------------------------------
	-- Tool Shops
	[1] = {
        model = 's_m_y_construct_02',
        coords = vector4(46.31909, -1749.46, 29.637, 53.10),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-tools',
                    label = 'Enter Tool Shop',
                },
            },
            distance = 2.5,
        },
    },
	[2] = {
        model = 's_m_y_construct_02',
        coords = vector4(2747.794, 3472.926, 55.672, 251.7),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-tools',
                    label = 'Enter Tool Shop',
                },
            },
            distance = 2.5,
        },
    },
	[3] = {
        model = 's_m_y_construct_02',
        coords = vector4(-422.055, 6136.307, 31.877, 226.2),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-tools',
                    label = 'Enter Tool Shop',
                },
            },
            distance = 2.5,
        },
    },

	------------------------------------------------------------------------------------------------
	-- Weapon Shops
	[4] = {
        model = 'u_m_y_juggernaut_01',
        coords = vector4(810.2194, -2158.98, 29.618, 359.3),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-skull',
                    label = 'Enter Weapon Shop',
                },
            },
            distance = 2.5,
        },
    },
	[5] = {
        model = 'u_m_y_juggernaut_01',
        coords = vector4(-662.380, -933.614, 21.829, 185.4),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-skull',
                    label = 'Enter Weapon Shop',
                },
            },
            distance = 2.5,
        },
    },
	[6] = {
        model = 'u_m_y_juggernaut_01',
        coords = vector4(22.51769, -1105.51, 29.796, 162.6),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-skull',
                    label = 'Enter Weapon Shop',
                },
            },
            distance = 2.5,
        },
    },
	[7] = {
        model = 'u_m_y_juggernaut_01',
        coords = vector4(842.4871, -1035.26, 28.194, 1.786),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-skull',
                    label = 'Enter Weapon Shop',
                },
            },
            distance = 2.5,
        },
    },
	[8] = {
        model = 'u_m_y_juggernaut_01',
        coords = vector4(2568.018, 292.6341, 108.73, 0.458),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-skull',
                    label = 'Enter Weapon Shop',
                },
            },
            distance = 2.5,
        },
    },
	[9] = {
        model = 'u_m_y_juggernaut_01',
        coords = vector4(1692.197, 3760.827, 34.705, 228.1),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-skull',
                    label = 'Enter Weapon Shop',
                },
            },
            distance = 2.5,
        },
    },
	[10] = {
        model = 'u_m_y_juggernaut_01',
        coords = vector4(-1119.01, 2699.684, 18.554, 226.3),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-skull',
                    label = 'Enter Weapon Shop',
                },
            },
            distance = 2.5,
        },
    },
	[11] = {
        model = 'u_m_y_juggernaut_01',
        coords = vector4(-331.578, 6084.966, 31.454, 224.9),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-skull',
                    label = 'Enter Weapon Shop',
                },
            },
            distance = 2.5,
        },
    },
	[12] = {
        model = 'u_m_y_juggernaut_01',
        coords = vector4(253.7106, -50.7797, 69.941, 67.44),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-skull',
                    label = 'Enter Weapon Shop',
                },
            },
            distance = 2.5,
        },
    },

    -- PD Peds
    [13] = {
        model = 's_f_y_cop_01',
        coords = vector4(480.36, -996.67, 30.69, 91.43),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        animDict = 'abigail_mcs_1_concat-0',
        anim = 'csb_abigail_dual-0',
        flag = 1, 
        target = {
            options = {
                { 
                    type = "client",
                    event = "police:client:openarmory",
                    icon = 'fas fa-address-book', 
                    label = 'Open Armory',
                    job = 'police',
                }
            },
            distance = 2.5, 
        },
        currentpednumber = 0,
    },

    [14] = { 
        model = 'csb_trafficwarden', 
        coords = vector4(450.0242, -988.178, 30.282, 94.40), 
        minusOne = true, 
        freeze = true, 
        invincible = true,
        blockevents = true,
        animDict = 'ac_ig_3_p3_b-1',
        anim = 'csb_abigail_dual-0', 
        flag = 1, 
        scenario = 'PROP_HUMAN_SEAT_COMPUTER_LOW',
        target = { 
          options = {
              {
                  type = "client",
                  event = "police:garage:menu",
                  icon = "fas fa-address-book",
                  label = "Get Vehicle",
                  job = 'police',
              },
              {
                  type = "client",
                  event = "police:garage:storecar",
                  icon = "fas fa-address-book",
                  label = "Store Vehicle",
                  job = 'police',
              },
          },
          distance = 2.5, 
        },
        currentpednumber = 0, 
    },

    [15] = { 
        model = 'csb_trafficwarden', 
        coords = vector4(413.8825, -1024.74, 29.0, 170.1), 
        minusOne = true, 
        freeze = true, 
        invincible = true,
        blockevents = true,
        animDict = 'ac_ig_3_p3_b-1',
        anim = 'csb_abigail_dual-0', 
        flag = 1, 
        scenario = 'PROP_HUMAN_SEAT_COMPUTER_LOW',
        target = { 
            options = {
                {
                    type = "client",
                    event = "police:garage:menu",
                    icon = "fas fa-address-book",
                    label = "Get Vehicle",
                    job = 'police',
                },
                {
                    type = "client",
                    event = "police:garage:storecar",
                    icon = "fas fa-address-book",
                    label = "Store Vehicle",
                    job = 'police',
                },
            },
            distance = 2.5, 
        },
        currentpednumber = 0, 
    },

    [16] = { 
        model = 'csb_trafficwarden', 
        coords = vector4(437.9, -1011.66, 28.59, 180.4), 
        minusOne = true, 
        freeze = true, 
        invincible = true,
        blockevents = true,
        animDict = 'amb@world_human_hang_out_street@female_arms_crossed@idle_a',
        anim = 'idle_a', 
        flag = 1, 
        scenario = 'Crossarms',
        target = { 
            options = {
                {
                    type = "client",
                    event = "police:garage:menu",
                    icon = "fas fa-address-book",
                    label = "Get Vehicle",
                    job = 'police',
                },
                {
                    type = "client",
                    event = "police:garage:storecar",
                    icon = "fas fa-address-book",
                    label = "Store Vehicle",
                    job = 'police',
                },
            },
            distance = 2.5, 
        },
        currentpednumber = 0, 
    },

    [17] = { 
        model = 's_m_y_sheriff_01', 
        coords = vector4(-153.87, -1175.51, 24.0, 275.81), 
        minusOne = true, 
        freeze = true, 
        invincible = true,
        blockevents = true,
        animDict = 'amb@world_human_hang_out_street@female_arms_crossed@idle_a',
        anim = 'idle_a', 
        flag = 1, 
        scenario = 'Crossarms',
        target = { 
            options = {
                {
                    type = "client",
                    event = "police:garage:menu",
                    icon = "fas fa-address-book",
                    label = "Get Vehicle",
                    job = 'police',
                },
                {
                    type = "client",
                    event = "police:garage:storecar",
                    icon = "fas fa-address-book",
                    label = "Store Vehicle",
                    job = 'police',
                },
            },
            distance = 2.5, 
        },
        currentpednumber = 0, 
    },

    [18] = { 
        model = 's_m_y_sheriff_01', 
        coords = vector4(-227.7, -1175.36, 23.25, 184.49), 
        minusOne = true, 
        freeze = true, 
        invincible = true,
        blockevents = true,
        animDict = 'amb@world_human_hang_out_street@female_arms_crossed@idle_a',
        anim = 'idle_a', 
        flag = 1, 
        scenario = 'Crossarms',
        target = { 
            options = {
                {
                    type = "client",
                    event = "police:garage:menu",
                    icon = "fas fa-address-book",
                    label = "Get Vehicle",
                    job = 'police',
                },
                {
                    type = "client",
                    event = "police:garage:storecar",
                    icon = "fas fa-address-book",
                    label = "Store Vehicle",
                    job = 'police',
                },
            },
            distance = 2.5, 
        },
        currentpednumber = 0, 
    },

    [56] = { 
        model = 's_m_y_sheriff_01', 
        coords = vector4(-193.28, -1162.34, 23.67, 264.78), 
        minusOne = true, 
        freeze = true, 
        invincible = true,
        blockevents = true,
        animDict = 'amb@world_human_hang_out_street@female_arms_crossed@idle_a',
        anim = 'idle_a', 
        flag = 1, 
        scenario = 'Crossarms',
        target = { 
            options = {
                {
                    type = "client",
                    event = "police:garage:menu",
                    icon = "fas fa-address-book",
                    label = "Get Vehicle",
                    job = 'police',
                },
                {
                    type = "client",
              event = "police:client:toggleduty", 
              icon = 'far fa-address-card', 
              label = 'On/Off Duty', 
              job = 'police',
                },
            },
            distance = 2.5, 
        },
        currentpednumber = 0, 
    },

    [57] = { 
        model = 'csb_trafficwarden', 
        coords = vector4(1886.72, 3692.63, 33.54, 94.12), 
        minusOne = true, 
        freeze = true, 
        invincible = true,
        blockevents = true,
        animDict = 'amb@world_human_hang_out_street@female_arms_crossed@idle_a',
        anim = 'idle_a', 
        flag = 1, 
        scenario = 'Crossarms',
        target = { 
            options = {
                {
                    type = "client",
                    event = "police:garage:menu",
                    icon = "fas fa-address-book",
                    label = "Get Vehicle",
                    job = 'police',
                },
                {
                    type = "client",
                    event = "police:garage:storecar",
                    icon = "fas fa-address-book",
                    label = "Store Vehicle",
                    job = 'police',
                },
            },
            distance = 2.5, 
        },
        currentpednumber = 0, 
    },

    [58] = { 
        model = 'csb_trafficwarden', 
        coords = vector4(-458.2, 6015.55, 31.49, 49.31), 
        minusOne = true, 
        freeze = true, 
        invincible = true,
        blockevents = true,
        animDict = 'amb@world_human_hang_out_street@female_arms_crossed@idle_a',
        anim = 'idle_a', 
        flag = 1, 
        scenario = 'Crossarms',
        target = { 
            options = {
                {
                    type = "client",
                    event = "police:garage:menu",
                    icon = "fas fa-address-book",
                    label = "Get Vehicle",
                    job = 'police',
                },
                {
                    type = "client",
                    event = "police:garage:storecar",
                    icon = "fas fa-address-book",
                    label = "Store Vehicle",
                    job = 'police',
                },
            },
            distance = 2.5, 
        },
        currentpednumber = 0, 
    },
	------------------------------------------------------------------------------------------------
	-- Barber Shops
    [62] = {
        model = 's_m_m_hairdress_01',
        coords = vector4(-815.333, -182.505, 37.568, 211.1),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CHEERING',
        target = {
            options = {
                    {
                        type = 'client',
                        event = 'fivem-appearance:barberMenu',
                        icon = 'fas fa-cut',
                        label = 'Get A Fresh Cut',
                        --job = "police",
                    },
                },
                distance = 2.5,
            },
        },
        [67] = {
        model = 's_m_m_hairdress_01',
        coords = vector4(137.8810, -1709.81, 29.301, 50.14),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CHEERING',
        target = {
            options = {
                    {
                        type = 'client',
                        event = 'fivem-appearance:barberMenu',
                        icon = 'fas fa-cut',
                        label = 'Get A Fresh Cut',
                        --job = "police",
                    },
                },
                distance = 2.5,
            },
        },
        [68] = {
        model = 's_m_m_hairdress_01',
        coords = vector4(-1283.51, -1119.07, 7.0001, 4.272),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CHEERING',
        target = {
            options = {
                    {
                        type = 'client',
                        event = 'fivem-appearance:barberMenu',
                        icon = 'fas fa-cut',
                        label = 'Get A Fresh Cut',
                        --job = "police",
                    },
                },
                distance = 2.5,
            },
        },
        [70] = {
        model = 's_m_m_hairdress_01',
        coords = vector4(1933.611, 3730.552, 32.854, 118.4),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CHEERING',
        target = {
            options = {
                    {
                        type = 'client',
                        event = 'fivem-appearance:barberMenu',
                        icon = 'fas fa-cut',
                        label = 'Get A Fresh Cut',
                        --job = "police",
                    },
                },
                distance = 2.5,
            },
        },
        [71] = {
        model = 's_m_m_hairdress_01',
        coords = vector4(1211.153, -474.479, 66.217, 345.5),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CHEERING',
        target = {
            options = {
                    {
                        type = 'client',
                        event = 'fivem-appearance:barberMenu',
                        icon = 'fas fa-cut',
                        label = 'Get A Fresh Cut',
                        --job = "police",
                    },
                },
                distance = 2.5,
            },
        },
        [72] = {
        model = 's_m_m_hairdress_01',
        coords = vector4(-34.6140, -151.051, 57.086, 249.7),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CHEERING',
        target = {
            options = {
                    {
                        type = 'client',
                        event = 'fivem-appearance:barberMenu',
                        icon = 'fas fa-cut',
                        label = 'Get A Fresh Cut',
                        --job = "police",
                    },
                },
                distance = 2.5,
            },
        },
        [73] = {
        model = 's_m_m_hairdress_01',
        coords = vector4(-280.091, 6227.298, 31.705, 316.1),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CHEERING',
        target = {
            options = {
                    {
                        type = 'client',
                        event = 'fivem-appearance:barberMenu',
                        icon = 'fas fa-cut',
                        label = 'Get A Fresh Cut',
                        --job = "police",
                    },
                },
                distance = 2.5,
            },
        },
	------------------------------------------------------------------------------------------------
	-- Clopthing Shops
	[19] = {
        model = 'ig_claypain',
        coords = vector4(5.813838, 6511.437, 31.877, 43.94),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[20] = {
        model = 'ig_claypain',
        coords = vector4(1695.299, 4822.996, 42.063, 101.1),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[21] = {
        model = 'ig_claypain',
        coords = vector4(612.9179, 2763.696, 42.088, 269.3),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[22] = {
        model = 'ig_claypain',
        coords = vector4(-1102.41, 2711.569, 19.107, 224.0),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[23] = {
        model = 'ig_claypain',
        coords = vector4(-3169.80, 1042.364, 20.863, 68.82),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[24] = {
        model = 'ig_claypain',
        coords = vector4(-1449.43, -238.539, 49.813, 47.02),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[25] = {
        model = 'ig_claypain',
        coords = vector4(-1193.13, -766.428, 17.316, 215.8),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[26] = {
        model = 'ig_claypain',
        coords = vector4(-823.184, -1072.38, 11.328, 211.3),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[27] = {
        model = 'ig_claypain',
        coords = vector4(73.94003, -1392.84, 29.376, 270.9),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[28] = {
        model = 'ig_claypain',
        coords = vector4(427.0046, -806.178, 29.491, 92.88),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[29] = {
        model = 'ig_claypain',
        coords = vector4(126.6269, -225.104, 54.557, 70.22),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[30] = {
        model = 'ig_claypain',
        coords = vector4(-164.634, -302.169, 39.733, 249.7),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	[31] = {
        model = 'ig_claypain',
        coords = vector4(-708.473, -152.573, 37.415, 120.5),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
    [52] = {
        model = 'ig_claypain',
        coords = vector4(1196.653, 2711.631, 38.222, 182.2),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'fivem-appearance:clothingShop',
                    icon = 'fas fa-tshirt',
                    label = 'Enter Clothing Shop',
                },
            },
            distance = 2.5,
        },
    },
	------------------------------------------------------------------------------------------------
	-- Main Shops
	[32] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(-1686.65, -1072.55, 13.152, 51.58),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [33] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(-1485.94, -378.380, 40.163, 135.3),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [34] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(-706.103, -914.349, 19.215, 89.83),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [35] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(-47.1817, -1758.45, 29.420, 49.04),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [36] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(24.47545, -1345.67, 29.497, 271.0),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [37] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(1134.181, -981.871, 46.415, 279.6),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [38] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(1164.838, -323.426, 69.205, 100.6),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [39] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(373.0027, 328.0456, 103.56, 255.2),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [40] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(-1819.56, 793.5480, 138.08, 136.4),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [41] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(-2966.47, 390.2482, 15.043, 87.95),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [42] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(-3040.59, 584.0361, 7.9089, 20.14),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [43] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(-3243.96, 1000.127, 12.830, 355.8),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [44] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(-1505.93, 1511.894, 115.28, 257.0),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [45] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(2555.545, 380.9174, 108.62, 0.773),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [46] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(549.2760, 2669.644, 42.156, 99.92),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [47] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(1166.604, 2710.752, 38.157, 182.5),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [48] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(2676.564, 3280.192, 55.241, 331.9),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [49] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(1959.288, 3741.455, 32.343, 295.2),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [50] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(1697.429, 4923.379, 42.063, 327.4),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [51] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(161.7284, 6642.770, 31.698, 227.3),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
    [54] = {
        model = 's_m_m_cntrybar_01',
        coords = vector4(-1222.42, -908.612, 12.326, 33.77),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        target = {
            options = {
                {
                    type = 'client',
                    event = 'qb-shops:247clerk',
                    icon = 'fas fa-shopping-basket',
                    label = 'Enter Shop',
                },
            },
            distance = 2.5,
        },
    },
	------------------------------------------------------------------------------------------------
    -- Weed Shop
    [55] = {
		model = 'player_two',
		coords = vector4(-1170.97, -1571.46, 4.6636, 126.8),
		minusOne = true,
		freeze = true,
		invincible = true,
		blockevents = true,
		scenario = 'WORLD_HUMAN_SMOKING_POT',
		target = {
			options = {
				{
					type = 'client',
					event = 'qb-shops:247clerk',
					icon = 'fas fa-canadian-maple-leaf',
					label = 'Enter Weed Shop',
					--job = "police",
				},
			
			},
			distance = 2.5,
		},
    },
    ------------------------------------------------------------------------------------------------
    -- Garages
    [59] = {
		model = 'player_one',
		coords = vector4(273.76, -344.26, 44.92, 67.36),
		minusOne = true,
		freeze = true,
		invincible = true,
		blockevents = true,
		scenario = 'WORLD_HUMAN_SMOKING_POT',
		target = {
			options = {
				{
					type = 'client',
					event = 'qb-garages:client:garagemenu',
					icon = 'fas fa-address-book',
					label = 'Garage Menu',
					--job = "police",
				},
                {
					type = 'client',
					event = 'qb-garages:client:putgarage',
					icon = 'fas fa-address-book',
					label = 'Guardar Vehiculo',
					--job = "police",
				},
			
			},
			distance = 2.5,
		},
    },
    [60] = {
		model = 'player_one',
		coords = vector4(-1182.19, -1508.08, 4.38, 316.84),
		minusOne = true,
		freeze = true,
		invincible = true,
		blockevents = true,
		scenario = 'WORLD_HUMAN_SMOKING_POT',
		target = {
			options = {
				{
					type = 'client',
					event = 'qb-garages:client:garagemenu',
					icon = 'fas fa-address-book',
					label = 'Garage Menu',
					--job = "police",
				},
                {
					type = 'client',
					event = 'qb-garages:client:putgarage',
					icon = 'fas fa-address-book',
					label = 'Guardar Vehiculo',
					--job = "police",
				},
			
			},
			distance = 2.5,
		},
    },
    [61] = {
		model = 'player_one',
		coords = vector4(1140.63, 2667.63, 38.16, 92.48),
		minusOne = true,
		freeze = true,
		invincible = true,
		blockevents = true,
		scenario = 'WORLD_HUMAN_SMOKING_POT',
		target = {
			options = {
				{
					type = 'client',
					event = 'qb-garages:client:garagemenu',
					icon = 'fas fa-address-book',
					label = 'Garage Menu',
					--job = "police",
				},
                {
					type = 'client',
					event = 'qb-garages:client:putgarage',
					icon = 'fas fa-address-book',
					label = 'Guardar Vehiculo',
					--job = "police",
				},
			
			},
			distance = 3.5,
		},
    },

}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function ItemCount() return true end
local function CitizenCheck() return true end

CreateThread(function()
	if not Config.Standalone then
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCount = function(item)
			for _, v in pairs(PlayerData.items) do
				if v.name == item then
					return v.amount
				end
			end
			return 0
		end

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return (citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid])
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	else
		local firstSpawn = false
		AddEventHandler('playerSpawned', function()
			if not firstSpawn then
				SpawnPeds()
				firstSpawn = true
			end
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and ItemCount(data.item) < 1 then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end