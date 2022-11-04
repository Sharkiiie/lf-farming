Config = {}

Config.GreenPepperPrice = math.random(9, 15)
Config.TomatoPrice = math.random(9, 15)
Config.PotatoPrice = math.random(9, 15)
Config.OnionPrice = math.random(9, 15)
Config.CucumberPrice = math.random(9, 15)
Config.LettucePrice = math.random(9, 15)
Config.CornPrice = math.random(9, 15)
Config.ApplePrice = math.random(9, 15)
Config.OrangePrice = math.random(9, 15)



Config.Locations = {
    
    [1] = { -- Tomato
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(356.93, 6474.75, 30.44),
        legth = 22.0,
        width = 1.5,
        heading = 0,
        debug = true,
        event = 'lf-farming:client:pickTomato',
        icon = "fas fa-seedling",
        label = "Pick Tomato"
    },
    [2] = { -- Tomato
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(363.75, 6473.76, 30.3),
        legth = 25.6,
        width = 1.5,
        heading = 0,
        debug = true,
        event = 'lf-farming:client:pickTomato',
        icon = "fas fa-seedling",
        label = "Pick Tomato"
    },
    [3] = { -- Tomato
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(350.13, 6473.79, 28.65),
        legth = 25.6,
        width = 1.5,
        heading = 0,
        debug = true,
        event = 'lf-farming:client:pickTomato',
        icon = "fas fa-seedling",
        label = "Pick Tomato"
    },
    [4] = { -- Tomato
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(343.09, 6472.35, 28.79),
        legth = 25.6,
        width = 1.5,
        heading = 0,
        debug = true,
        event = 'lf-farming:client:pickTomato',
        icon = "fas fa-seedling",
        label = "Pick Tomato"
    },
    [5] = { -- Green Pepper
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(329.28, 6473.21, 29.05),
        legth = 25.6,
        width = 1.5,
        heading = 0,
        debug = true,
        event = 'lf-farming:client:pickGreenPepper',
        icon = "fas fa-seedling",
        label = "Pick Green Pepper"
    },
    [6] = { -- Green Pepper
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(322.53, 6473.01, 29.12),
        legth = 25.6,
        width = 1.5,
        heading = 0,
        debug = true,
        event = 'lf-farming:client:pickGreenPepper',
        icon = "fas fa-seedling",
        label = "Pick Green Pepper"
    },
    [7] = { -- Apple
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(232.93, 6502.17, 32.16),
        legth = 99.8,
        width = 4.5,
        heading = 97,
        debug = true,
        event = 'lf-farming:client:pickApple',
        icon = "fas fa-seedling",
        label = "Pick Apple"
    },
    [8] = { -- Apple
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(238.14, 6513.55, 31.03),
        legth = 90.0,
        width = 4.0,
        heading = 97,
        debug = true,
        event = 'lf-farming:client:pickApple',
        icon = "fas fa-seedling",
        label = "Pick Apple"
    },
    [9] = { -- Apple
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(251.68, 6527.4, 30.96),
        legth = 60.0,
        width = 4.0,
        heading = 97,
        debug = true,
        event = 'lf-farming:client:pickApple',
        icon = "fas fa-seedling",
        label = "Pick Apple"
    },
    [10] = { -- Orange
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(350.87, 6504.99, 28.68),
        legth = 60.0,
        width = 4.0,
        heading = 90,
        debug = true,
        event = 'lf-farming:client:pickOrange',
        icon = "fas fa-seedling",
        label = "Pick Orange"
    },
    [11] = { -- Orange
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(350.64, 6517.87, 28.57),
        legth = 60.0,
        width = 4.0,
        heading = 90,
        debug = true,
        event = 'lf-farming:client:pickOrange',
        icon = "fas fa-seedling",
        label = "Pick Orange"
    },
    [12] = { -- Orange
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(345.02, 6531.6, 28.55),
        legth = 52.0,
        width = 4.0,
        heading = 90,
        debug = true,
        event = 'lf-farming:client:pickOrange',
        icon = "fas fa-seedling",
        label = "Pick Orange"
    },
    [13] = { -- Potato
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(2227.3, 5070.22, 47.96),
        legth = 110.2,
        width = 43.0,
        heading = 45,
        debug = true,
        event = 'lf-farming:client:pickPotato',
        icon = "fas fa-seedling",
        label = "Harvest Potato"
    },
    [14] = { -- Corn
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(1778.87, 5003.64, 58.9),
        legth = 74.6,
        width = 1.5,
        heading = 311,
        debug = true,
        event = 'lf-farming:client:pickCorn',
        icon = "fas fa-seedling",
        label = "Pick Corn"
    },
    [15] = { -- Corn
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(1807.16, 5019.75, 58.12),
        legth = 10.4,
        width = 1.5,
        heading = 311,
        debug = true,
        event = 'lf-farming:client:pickCorn',
        icon = "fas fa-seedling",
        label = "Pick Corn"
    },
    [16] = { -- Corn
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(1813.11, 5012.68, 57.39),
        legth = 10.0,
        width = 1.5,
        heading = 311,
        debug = true,
        event = 'lf-farming:client:pickCorn',
        icon = "fas fa-seedling",
        label = "Pick Corn"
    },
    [17] = { -- Onion
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(1976.0, 4815.72, 44.05),
        legth = 37.0,
        width = 1.5,
        heading = 45,
        debug = true,
        event = 'lf-farming:client:pickOnion',
        icon = "fas fa-seedling",
        label = "Pick Onion"
    },
    [18] = { -- Onion
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(1980.91, 4820.36, 44.23),
        legth = 37.0,
        width = 1.5,
        heading = 45,
        debug = true,
        event = 'lf-farming:client:pickOnion',
        icon = "fas fa-seedling",
        label = "Pick Onion"
    },
    [19] = { -- Onion
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(1985.8, 4825.63, 44.02),
        legth = 37.0,
        width = 1.5,
        heading = 45,
        debug = true,
        event = 'lf-farming:client:pickOnion',
        icon = "fas fa-seedling",
        label = "Pick Onion"
    },
    [20] = { -- Onion
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(1990.36, 4830.61, 42.32),
        legth = 37.0,
        width = 1.5,
        heading = 45,
        debug = true,
        event = 'lf-farming:client:pickOnion',
        icon = "fas fa-seedling",
        label = "Pick Onion"
    },
    [21] = { -- Onion
        -- job = "vanilla", -- Set this to required job role
        coords = vector3(407.18, -1014.92, 28.3),
        legth = 1.0,
        width = 1.0,
        heading = 45,
        debug = false,
        event = 'lf-farming:client:pickOnion',
        icon = "fas fa-seedling",
        label = "Pick Onion",
        prop = 'prop_tree_jacada_02'
    },
}


