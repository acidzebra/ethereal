
-- clear default mapgen biomes, decorations and ores
--minetest.clear_registered_biomes()
--minetest.clear_registered_decorations()
--minetest.clear_registered_ores()

local path = minetest.get_modpath("ethereal")

dofile(path .. "/ores.lua")

path = path .. "/schematics/"

local dpath = minetest.get_modpath("default") .. "/schematics/"

-- tree schematics
dofile(path .. "orange_tree.lua")
dofile(path .. "banana_tree.lua")
dofile(path .. "bamboo_tree.lua")
dofile(path .. "birch_tree.lua")
dofile(path .. "bush.lua")
dofile(path .. "waterlily.lua")

--= Biomes (Minetest 0.4.13 and above)

local add_biome = function(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)

	if p ~= 1 then return end
	math.randomseed(os.clock()*100000000000)
	local zminblend =  math.random(-20500, -20000)
	local zmaxblend = math.random(20000, 20500)
	minetest.register_biome({
		name = a,
		node_dust = b,
		node_top = c,
		depth_top = d,
		node_filler = e,
		depth_filler = f,
		node_stone = g,
		node_water_top = h,
		depth_water_top = i,
		node_water = j,
		node_river_water = k,
		-- y_min = l,
		-- y_max = m,
		min_pos = {x = -31000, y = l, z = zminblend},
		max_pos = {x = 31000, y = m, z = zmaxblend},
		heat_point = n,
		humidity_point = o,
		vertical_blend = p,
		
	})
end

--add_biome("underground", nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
--	-31000, -192, 50, 50, 1)


	
add_biome("desert", nil, "default:desert_sand", 1, "default:desert_sand", 3, "default:desert_stone", nil, nil, nil, nil, 3, 28, 75, 20, 6, ethereal.desert)

add_biome("desert_ocean", nil, "default:sand", 1, "default:sand", 2,
	"default:desert_stone", nil, nil, nil, nil, -192, 3, 75, 20, 6, ethereal.desert)

minetest.register_biome({
	name = "glacier",
	node_dust = "default:snowblock",
	node_top = "default:snowblock",
	depth_top = 1,
	node_filler = "default:snowblock",
	depth_filler = 3,
	node_stone = "default:ice",
	node_water_top = "default:ice",
	depth_water_top = 10,
	node_water = "default:ice",
	node_river_water = "default:ice",
	node_riverbed = "default:gravel",
	depth_riverbed = 2,
	min_pos = {x = -31000, y = -1, z = 20000},
	max_pos = {x = 31000, y = 4, z = 31000},
	heat_point = 0,
	humidity_point = 50,
	vertical_blend = 6,
})

minetest.register_biome({
	name = "glacier2",
	node_dust = "default:snowblock",
	node_top = "default:snowblock",
	depth_top = 1,
	node_filler = "default:snowblock",
	depth_filler = 3,
	node_stone = "default:ice",
	node_water_top = "default:ice",
	depth_water_top = 10,
	node_water = "default:ice",
	node_river_water = "default:ice",
	node_riverbed = "default:gravel",
	depth_riverbed = 2,
	min_pos = {x = -31000, y = -1, z = -31000},
	max_pos = {x = 31000, y = 4, z = -20000},
	heat_point = 0,
	humidity_point = 50,
	vertical_blend = 6,
})

minetest.register_biome({
		name = "glacier_ocean",
		node_dust = "default:snowblock",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_water_top = "default:ice",
		depth_water_top = 1,
		node_water = "default:water_source",
		node_river_water = "default:ice",
		node_riverbed = "default:gravel",
		-- y_min = -112,
		-- y_max = -1,
		min_pos = {x = -31000, y = -112, z = 20000},
		max_pos = {x = 31000, y = 1, z = 31000},
		heat_point = 0,
		vertical_blend = 6,
		humidity_point = 50,
})

minetest.register_biome({
		name = "glacier_ocean2",
		node_dust = "default:snowblock",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		-- y_min = -112,
		-- y_max = -1,
		node_water_top = "default:ice",
		depth_water_top = 1,
		node_water = "default:water_source",
		node_river_water = "default:ice",
		node_riverbed = "default:gravel",
		min_pos = {x = -31000, y = -112, z = -31000},
		max_pos = {x = 31000, y = 1, z = -20000},
		heat_point = 0,
		vertical_blend = 6,
		humidity_point = 50,
})

add_biome("clearing", nil, "default:dirt_with_grass", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 91, 45, 35, 1, 1) -- ADDED

add_biome("bamboo", nil, "ethereal:bamboo_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 13, 61, 65, 75, 6, ethereal.bamboo)

add_biome("bamboo_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 55, 75, 4, ethereal.bamboo)

--add_biome("mesa", nil, "bakedclay:orange", 1, "bakedclay:orange", 15,
add_biome("mesa", nil, "default:dirt_with_dry_grass", 1, "bakedclay:orange", 4, nil, nil, nil, nil, nil, 15, 30, 65, 18, 3, ethereal.mesa)

add_biome("mesa_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 3, 55, 27, 5, ethereal.mesa)
	
add_biome("mountain", "default:snow", "default:snow", 1, "default:stone", 1, nil, "default:ice", 2, "default:water_source", "default:ice", 150, 31000, 1, 1, 5, ethereal.mountain)
add_biome("mountain2", "default:snow", "default:snow", 1, "default:stone", 1, nil, "default:ice", 2, "default:water_source", "default:ice", 150, 31000, 25, 15, 5, ethereal.mountain2)
add_biome("alpine", "default:snow", "default:dirt_with_snow", 1, "default:dirt", 2,	nil, "default:ice", 2, "default:water_source", "default:ice", 150, 350, 1, 1, 4, ethereal.alpine)

	
--add_biome("snowy", nil, "ethereal:cold_dirt", 1, "default:dirt", 2,
--	nil, nil, nil, nil, nil, 135, 160, 10, 25, ethereal.snowy)
minetest.register_biome({
		name = "snowy",
		node_dust = "default:snowblock",
		node_top = "ethereal:cold_dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 2,
		vertical_blend = 6,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		-- y_min = -112,
		-- y_max = -1,
		node_water_top = "default:ice",
		depth_water_top = 1,
		node_water = "default:water_source",
		node_river_water = "default:river_water_source",
		min_pos = {x = -31000, y = 60, z = 20100},
		max_pos = {x = 31000, y = 135, z = 31000},
		heat_point = 10,	
		humidity_point = 25,
})

minetest.register_biome({
		name = "snowy2",
		node_dust = "default:snowblock",
		node_top = "ethereal:cold_dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 2,
		vertical_blend = 6,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		-- y_min = -112,
		-- y_max = -1,
		node_water_top = "default:ice",
		depth_water_top = 1,
		node_water = "default:water_source",
		node_river_water = "default:river_water_source",
		min_pos = {x = -31000, y = 60, z = -31000},
		max_pos = {x = 31000, y = 135, z = -20200},
		heat_point = 10,	
		humidity_point = 25,
})

--add_biome("frost", nil, "ethereal:crystal_dirt", 1, "default:dirt", 3,
--	nil, nil, nil, nil, nil, 152, 5, 10, 25, ethereal.frost)
minetest.register_biome({
		name = "frost",
		node_top = "ethereal:crystal_dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		vertical_blend = 6,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		-- y_min = -112,
		-- y_max = -1,
		node_water_top = "default:ice",
		depth_water_top = 1,
		node_water = "default:water_source",
		node_river_water = "default:river_water_source",
		min_pos = {x = -31000, y =152, z = 20300},
		max_pos = {x = 31000, y = 180, z = 31000},
		heat_point = 10,	
		humidity_point = 25,
})

minetest.register_biome({
		name = "frost",
		node_top = "ethereal:crystal_dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		vertical_blend = 6,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		-- y_min = -112,
		-- y_max = -1,
		node_water_top = "default:ice",
		depth_water_top = 1,
		node_water = "default:water_source",
		node_river_water = "default:river_water_source",
		min_pos = {x = -31000, y =152, z = -31000},
		max_pos = {x = 31000, y = 180, z = 20400},
		heat_point = 10,	
		humidity_point = 25,
})

add_biome("frost_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 10, 31, 4, ethereal.frost)

add_biome("grassy", nil, "default:dirt_with_grass", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 143, 33, 21, 1, ethereal.grassy)

add_biome("grassy_ocean", nil, "defaut:sand", 2, "default:gravel", 1,
	nil, nil, nil, nil, nil, -31000, 3, 13, 22, 5, ethereal.grassy)

add_biome("caves", nil, "default:desert_stone", 3, "air", 8,
	nil, nil, nil, nil, nil, 62, 82, 15, 15, 4, ethereal.caves)

add_biome("grayness", nil, "ethereal:gray_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 1, 4, 46, 31, 2, ethereal.grayness)

if minetest.registered_nodes["default:silver_sand"] then
	add_biome("grayness_ocean", nil, "default:silver_sand", 2, "default:sand", 2,
		nil, nil, nil, nil, nil, -192, 2, 15, 12, 4, ethereal.grayness)
else
	add_biome("grayness_ocean", nil, "default:sand", 1, "default:sand", 2,
		nil, nil, nil, nil, nil, -192, 2, 15, 11, 3, ethereal.grayness)
end

add_biome("grassytwo", nil, "default:dirt_with_grass", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 148, 45, 25, 1, ethereal.grassytwo)

add_biome("grassytwo_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 3, 45, 15, 1, ethereal.grassytwo)

add_biome("prairie", nil, "ethereal:prairie_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 34, 46, 63, 22, 6, ethereal.prairie)

add_biome("prairie_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 58, 22, 3, ethereal.prairie)

add_biome("jumble", nil, "default:dirt_with_grass", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 11, 31, 55, 51, 4, ethereal.jumble)

add_biome("jumble_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 3, 44, 50, 2, ethereal.jumble)

if minetest.registered_nodes["default:dirt_with_rainforest_litter"] then
	add_biome("junglee", nil, "default:dirt_with_rainforest_litter", 1, "default:dirt", 3,
		nil, nil, nil, nil, nil, 8, 61, 40, 62, 4, ethereal.junglee)
else
	add_biome("junglee", nil, "ethereal:jungle_dirt", 1, "default:dirt", 3,
		nil, nil, nil, nil, nil, 8, 61, 40, 59, 3, ethereal.junglee)
end

add_biome("junglee_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 41, 59, 2, ethereal.junglee)

add_biome("grove", nil, "ethereal:grove_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 25, 38, 44, 36, 5, ethereal.grove)

add_biome("grove_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 42, 34, 4, ethereal.grove)

add_biome("mushroom", nil, "ethereal:mushroom_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 15, 30, 48, 71, 3, ethereal.mushroom)

add_biome("mushroom_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 44, 73, 3, ethereal.mushroom)

add_biome("sandstone", nil, "default:sandstone", 1, "default:sandstone", 1,
	"default:sandstone", nil, nil, nil, nil, 4, 23, 21, 20, 3, ethereal.sandstone)

add_biome("sandstone_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 20, 20, 4, ethereal.sandstone)

-- add_biome("plains", nil, "ethereal:dry_dirt", 1, "default:dirt", 3,
	-- nil, nil, nil, nil, nil, 3, 35, 65, 25, 1, ethereal.plains)

add_biome("plains_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 55, 25, 3, ethereal.plains)

add_biome("savannah", nil, "default:dirt_with_dry_grass", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 15, 40, 65, 15, 6, ethereal.savannah)

add_biome("savannah_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 55, 25, 4, ethereal.savannah)

-- add_biome("fiery", nil, "ethereal:fiery_dirt", 1, "default:dirt", 3,
	-- nil, nil, nil, nil, nil, 3, 5, 85, 15, 1, ethereal.fiery)

-- add_biome("fiery_ocean", nil, "default:sand", 1, "default:sand", 2,
	-- nil, nil, nil, nil, nil, -192, 3, 75, 10, 1, ethereal.fiery)

add_biome("sandclay", nil, "default:sand", 3, "default:clay", 2,
	nil, nil, nil, nil, nil, 1, 6, 65, 2, 5, ethereal.sandclay)

-- add_biome("swamp", nil, "default:dirt_with_grass", 1, "default:dirt", 3,
	-- nil, nil, nil, nil, nil, 2, 7, 80, 80, 0, ethereal.swamp)

add_biome("swamp_ocean", nil, "default:sand", 2, "default:clay", 2,
	nil, nil, nil, nil, nil, -192, 2, 80, 80, 4, ethereal.swamp)

--= schematic decorations

local add_schem = function(a, b, c, d, e, f, g)

	if g ~= 1 then return end

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = a,
		sidelen = 80,
		fill_ratio = b,
		biomes = c,
		y_min = d,
		y_max = e,
		schematic = f,
		flags = "place_center_x, place_center_z",
	})
end

-- redwood tree
--add_schem({"bakedclay:orange"}, 0.0025, {"mesa"}, 17, 100, path .. "redwood.mts", ethereal.mesa)
add_schem({"default:dirt_with_dry_grass"}, 0.0020, {"mesa"}, 15, 45, path .. "redwood.mts", ethereal.mesa)

-- banana tree
add_schem({"ethereal:grove_dirt"}, 0.007, {"grove"}, 12, 42, ethereal.bananatree, ethereal.grove)

-- healing tree
add_schem({"default:dirt_with_snow"}, 0.005, {"alpine"}, 190, 250, path .. "yellowtree.mts", ethereal.alpine)
add_schem({"default:dirt_with_snow"}, 0.005, {"mountain"}, 190, 250, path .. "yellowtree.mts", ethereal.mountain)
add_schem({"default:dirt_with_snow"}, 0.005, {"mountain2"}, 190, 250, path .. "yellowtree.mts", ethereal.mountain)
add_schem({"default:dirt_with_snow"}, 0.005, {"alpine_snow"}, 200, 250, path .. "yellowtree.mts")
add_schem({"default:dirt_with_snow"}, 0.005, {"glacier"}, 200, 250, path .. "yellowtree.mts")

-- healing tree
add_schem({"default:snowblock"}, 0.003, {"alpine"}, 190, 250, path .. "yellowtree.mts", ethereal.alpine)
add_schem({"default:snowblock"}, 0.003, {"mountain"}, 190, 250, path .. "yellowtree.mts", ethereal.mountain)
add_schem({"default:snowblock"}, 0.003, {"mountain2"}, 190, 250, path .. "yellowtree.mts", ethereal.mountain)
add_schem({"default:snowblock"}, 0.003, {"alpine_snow"}, 200, 250, path .. "yellowtree.mts")
add_schem({"default:snowblock"}, 0.003, {"glacier"}, 200, 250, path .. "yellowtree.mts")

-- crystal frost tree
add_schem({"ethereal:crystal_dirt"}, 0.01, {"frost"}, 3, 200, path .. "frosttrees.mts", ethereal.frost)

-- giant mushroom
add_schem({"ethereal:mushroom_dirt"}, 0.02, {"mushroom"}, 3, 100, path .. "mushroomone.mts", ethereal.mushroom)

-- small lava crater
add_schem({"ethereal:fiery_dirt"}, 0.01, {"fiery"}, 2, 100, path .. "volcanom.mts", ethereal.fiery)
--
--TESTING lava with caves
add_schem({"ethereal:fiery_dirt"}, 0.01, {"caves"}, 2, 100, path .. "volcanom.mts", ethereal.caves)

-- large lava crater
add_schem({"ethereal:fiery_dirt"}, 0.01, {"fiery"}, 2, 100, path .. "volcanol.mts", ethereal.fiery)

-- default jungle tree
add_schem({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"}, 0.03, {"junglee"}, 6, 66, dpath .. "jungle_tree.mts", ethereal.junglee)

-- willow tree
add_schem({"default:dirt_with_grass"}, 0.005, {"grassytwo"}, 13, 44, path .. "willow.mts", ethereal.grayness)

-- pine tree (default for lower elevation and ethereal for higher)
add_schem({"default:dirt_with_grass"}, 0.010, {"grassy"}, 85, 180, dpath .. "pine_tree.mts", ethereal.grassy)
add_schem({"default:dirt_with_grass"}, 0.010, {"grassland"}, 87, 180, dpath .. "pine_tree.mts", default.grassland)
add_schem({"default:dirt_with_grass"}, 0.01, {"grassy"}, 84, 190, path .. "pinetree.mts", ethereal.grassy)
add_schem({"default:dirt_with_grass"}, 0.01, {"grassland"}, 88, 190, path .. "pinetree.mts", ethereal.grassland)

add_schem({"default:dirt_with_snow"}, 0.01, {"alpine"}, 89, 190, path .. "pinetree.mts", ethereal.alpine)

add_schem({"default:dirt_with_grass"}, 0.010, {"snowy_grassland"}, 87, 180, dpath .. "pine_tree.mts", default.snowy_grassland)

add_schem({"default:dirt_with_snow"}, 0.01, {"snowy_grassland"}, 89, 190, path .. "pinetree.mts", default.snowy_grassland)


-- default apple tree
add_schem({"default:dirt_with_grass"}, 0.02, {"jumble"}, 13, 50, dpath .. "apple_tree.mts", ethereal.grassy)
add_schem({"default:dirt_with_grass"}, 0.03, {"grassy"}, 16, 40, dpath .. "apple_tree.mts", ethereal.grassy)

-- big old tree
add_schem({"default:dirt_with_grass"}, 0.001, {"grassytwo"}, 10, 69, path .. "bigtree.mts", ethereal.jumble)

-- aspen tree
add_schem({"default:dirt_with_grass"}, 0.02, {"grassytwo"}, 15, 40, dpath .. "aspen_tree.mts", ethereal.jumble)

-- birch tree
add_schem({"default:dirt_with_grass"}, 0.02, {"grassytwo"}, 5, 47, ethereal.birchtree, ethereal.grassytwo)

-- orange tree
add_schem({"ethereal:prairie_dirt"}, 0.005, {"prairie"}, 15, 45, ethereal.orangetree, ethereal.prairie)

-- default acacia tree
add_schem({"default:dirt_with_dry_grass"}, 0.004, {"savannah"}, 4, 38, dpath .. "acacia_tree.mts", ethereal.savannah)

-- large cactus (by Paramat)
if ethereal.desert == 1 then
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:desert_sand"},
	sidelen = 80,
	noise_params = {
		offset = -0.0005,
		scale = 0.0015,
		spread = {x = 200, y = 200, z = 200},
		seed = 230,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"desert"},
	y_min = 5,
	y_max = 150,
	schematic = dpath.."large_cactus.mts",
	flags = "place_center_x", --, place_center_z",
	rotation = "random",
})
end

-- palm tree
add_schem({"default:sand"}, 0.0025, {"desert_ocean"}, 1, 1, path .. "palmtree.mts", ethereal.desert)
add_schem({"default:sand"}, 0.0025, {"plains_ocean"}, 1, 1, path .. "palmtree.mts", ethereal.plains)
add_schem({"default:sand"}, 0.0025, {"sandclay"}, 1, 1, path .. "palmtree.mts", ethereal.sandclay)
add_schem({"default:sand"}, 0.0025, {"sandstone_ocean"}, 1, 1, path .. "palmtree.mts", ethereal.sandstone)
add_schem({"default:sand"}, 0.0025, {"mesa_ocean"}, 1, 1, path .. "palmtree.mts", ethereal.mesa)
add_schem({"default:sand"}, 0.0025, {"grove_ocean"}, 1, 1, path .. "palmtree.mts", ethereal.grove)
add_schem({"default:sand"}, 0.0025, {"grassy_ocean"}, 1, 1, path .. "palmtree.mts", ethereal.grassy)

-- bamboo tree
add_schem({"ethereal:bamboo_dirt"}, 0.025, {"bamboo"}, 20, 65, ethereal.bambootree, ethereal.bamboo)

-- bush
add_schem({"ethereal:bamboo_dirt"}, 0.04, {"bamboo"}, 2, 70, ethereal.bush, ethereal.bamboo)

-- vine tree
add_schem({"default:dirt_with_grass"}, 0.01, {"swamp"}, 5, 56, path .. "vinetree.mts", ethereal.swamp)

-- bush
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass", "default:dirt_with_snow"},
	sidelen = 16,
	noise_params = {
		offset = -0.004,
		scale = 0.01,
		spread = {x = 100, y = 100, z = 100},
		seed = 137,
		octaves = 3,
		persist = 0.7,
	},
	biomes = {"grassy", "grassytwo", "jumble"},
	y_min = 2,
	y_max = 140,
	schematic = dpath .. "/bush.mts",
	flags = "place_center_x, place_center_z",
})

-- Acacia bush
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.004,
		scale = 0.01,
		spread = {x = 100, y = 100, z = 100},
		seed = 90155,
		octaves = 3,
		persist = 0.7,
	},
	biomes = {"savannah", "mesa"},
	y_min = 2,
	y_max = 42,
	schematic = dpath .. "/acacia_bush.mts",
	flags = "place_center_x, place_center_z",
})

--= simple decorations

local add_node = function(a, b, c, d, e, f, g, h, i, j)

	if j ~= 1 then return end

	minetest.register_decoration({
		deco_type = "simple",
		place_on = a,
		sidelen = 80,
		fill_ratio = b,
		biomes = c,
		y_min = d,
		y_max = e,
		decoration = f,
		height_max = g,
		spawn_by = h,
		num_spawn_by = i,
	})
end

-- scorched tree
add_node({"ethereal:dry_dirt"}, 0.006, {"plains"}, 2, 100, {"ethereal:scorched_tree"}, 6, nil, nil, ethereal.plains)

-- dry shrub
add_node({"ethereal:dry_dirt"}, 0.015, {"plains"}, 2, 100, {"default:dry_shrub"}, nil, nil, nil, ethereal.plains)
add_node({"default:sand"}, 0.015, {"grassy_ocean"}, 2, 100, {"default:dry_shrub"}, nil, nil, nil, ethereal.grassy)
add_node({"default:desert_sand"}, 0.015, {"desert"}, 2, 100, {"default:dry_shrub"}, nil, nil, nil, ethereal.desert)
add_node({"default:sandstone"}, 0.015, {"sandstone"}, 2, 100, {"default:dry_shrub"}, nil, nil, nil, ethereal.sandstone)
add_node({"bakedclay:red", "bakedclay:orange"}, 0.015, {"mesa"}, 2, 100, {"default:dry_shrub"}, nil, nil, nil, ethereal.mesa)

-- dry grass
add_node({"default:dirt_with_dry_grass"}, 0.045, {"savannah"}, 2, 100, {"default:dry_grass_2",
	"default:dry_grass_3", "default:dry_grass_4", "default:dry_grass_5"}, nil, nil, nil, ethereal.savannah)
add_node({"default:dirt_with_dry_grass"}, 0.050, {"mesa"}, 2, 100, {"default:dry_grass_2",
	"default:dry_grass_3", "default:dry_grass_4", "default:dry_grass_5"}, nil, nil, nil, ethereal.mesa)

-- flowers & strawberry
add_node({"default:dirt_with_grass"}, 0.025, {"grassy"}, 2, 150, {"flowers:dandelion_white",
	"flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip",
	"flowers:viola", "ethereal:strawberry_7"}, nil, nil, nil, ethereal.grassy)
add_node({"default:dirt_with_grass"}, 0.025, {"grassytwo"}, 2, 150, {"flowers:dandelion_white",
	"flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip",
	"flowers:viola", "ethereal:strawberry_7"}, nil, nil, nil, ethereal.grassytwo)

-- prairie flowers & strawberry
add_node({"ethereal:prairie_dirt"}, 0.035, {"prairie"}, 2, 130, {"flowers:dandelion_white",
	"flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip",
	"flowers:viola", "ethereal:strawberry_7"}, nil, nil, nil, ethereal.prairie)

-- crystal spike & crystal grass
add_node({"ethereal:crystal_dirt"}, 0.02, {"frost"}, 2, 190, {"ethereal:crystal_spike",
	"ethereal:crystalgrass"}, nil, nil, nil, ethereal.frost)

-- red shrub TESTING
add_node({"ethereal:fiery_dirt"}, 0.10, {"fiery"}, 2, 120, {"ethereal:dry_shrub"}, nil, nil, nil, ethereal.fiery)
add_node({"ethereal:fiery_dirt"}, 0.10, {"caves"}, 2, 130, {"ethereal:dry_shrub"}, nil, nil, nil, ethereal.caves)
-- fire flower TESTING
add_node({"ethereal:fiery_dirt"}, 0.02, {"fiery"}, 2, 110, {"ethereal:fire_flower"}, nil, nil, nil, ethereal.fiery)
add_node({"ethereal:fiery_dirt"}, 0.10, {"caves"}, 2, 140, {"ethereal:fire_flower"}, nil, nil, nil, ethereal.caves)
-- snowy grass
add_node({"ethereal:gray_dirt"}, 0.05, {"grayness"}, 2, 110, {"ethereal:snowygrass"}, nil, nil, nil, ethereal.grayness)
add_node({"ethereal:cold_dirt"}, 0.05, {"snowy"}, 2, 140, {"ethereal:snowygrass"}, nil, nil, nil, ethereal.snowy)

-- cactus
add_node({"default:sandstone"}, 0.0025, {"sandstone"}, 2, 160, {"default:cactus"}, 3, nil, nil, ethereal.sandstone)
add_node({"default:desert_sand"}, 0.005, {"desert"}, 2, 140, {"default:cactus"}, 4, nil, nil, ethereal.desert)

-- wild red mushroom
add_node({"ethereal:mushroom_dirt"}, 0.01, {"mushroom"}, 2, 185, {"flowers:mushroom_fertile_red"}, nil, nil, nil, ethereal.mushroom)

local list = {
	{"junglee", {"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"}, ethereal.junglee},
	{"grassy", {"default:dirt_with_grass"}, ethereal.grassy},
	{"grassytwo", {"default:dirt_with_grass"}, ethereal.grassytwo},
	{"prairie", {"ethereal:prairie_dirt"}, ethereal.prairie},
	{"mushroom", {"ethereal:mushroom_dirt"}, ethereal.mushroom},
	{"swamp", {"default:dirt_with_grass"}, ethereal.swamp},
}

-- wild red and brown mushrooms
for _, row in pairs(list) do

if row[3] == 1 then
minetest.register_decoration({
	deco_type = "simple",
	place_on = row[2],
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.009,
		spread = {x = 200, y = 200, z = 200},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {row[1]},
	y_min = 3,
	y_max = 145,
	decoration = {"flowers:mushroom_brown", "flowers:mushroom_red"},
})
end

end

-- jungle grass
add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"}, 0.10, {"junglee"}, 2, 120, {"default:junglegrass"}, nil, nil, nil, ethereal.junglee)
add_node({"default:dirt_with_grass"}, 0.015, {"jumble"}, 2, 48, {"default:junglegrass"}, nil, nil, nil, ethereal.jumble)
add_node({"default:dirt_with_grass"}, 0.020, {"swamp"}, 2, 36, {"default:junglegrass"}, nil, nil, nil, ethereal.swamp)

-- grass
add_node({"default:dirt_with_grass"}, 0.025, {"grassy"}, 2, 156, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.grassy)
add_node({"default:dirt_with_grass"}, 0.025, {"grassytwo"}, 2, 165, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.grassytwo)
add_node({"default:dirt_with_grass"}, 0.025, {"jumble"}, 2, 148, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.jumble)
add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"}, 0.035, {"junglee"}, 2, 173, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.junglee)
add_node({"ethereal:prairie_dirt"}, 0.025, {"prairie"}, 2, 162, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.prairie)
add_node({"ethereal:grove_dirt"}, 0.025, {"grove"}, 2, 149, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.grove)
add_node({"ethereal:bamboo_dirt"}, 0.025, {"bamboo"}, 2, 151, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.bamboo)
add_node({"default:dirt_with_grass"}, 0.025, {"clearing", "swamp"}, 2, 156, {"default:grass_3",
	"default:grass_4"}, nil, nil, nil, 1)

-- grass on sand
add_node({"default:sand"}, 0.025, {"sandclay"}, 2, 4, {"default:grass_2", "default:grass_3"}, nil, nil, nil, ethereal.sandclay)

-- ferns
add_node({"ethereal:grove_dirt"}, 0.02, {"grove"}, 2, 170, {"ethereal:fern"}, nil, nil, nil, ethereal.grove)
add_node({"default:dirt_with_grass"}, 0.01, {"swamp"}, 2, 156, {"ethereal:fern"}, nil, nil, nil, ethereal.swamp)

-- snow
add_node({"ethereal:cold_dirt"}, 0.6, {"snowy"}, 4, 40, {"default:snow"}, nil, nil, nil, ethereal.snowy)
add_node({"default:dirt_with_snow"}, 0.6, {"alpine"}, 165, 250, {"default:snow"}, nil, nil, nil, ethereal.alpine)

-- wild onion
--add_node({"default:dirt_with_grass"}, 0.025, {"grassy"}, 3, 80, {"ethereal:onion_4"}, nil, nil, nil, ethereal.grassy)
--add_node({"default:dirt_with_grass"}, 0.025, {"grassytwo"}, 3, 80, {"ethereal:onion_4"}, nil, nil, nil, ethereal.grassytwo)
--add_node({"default:dirt_with_grass"}, 0.025, {"jumble"}, 3, 80, {"ethereal:onion_4"}, nil, nil, nil, ethereal.jumble)
add_node({"ethereal:prairie_dirt"}, 0.025, {"prairie"}, 3, 80, {"ethereal:onion_4"}, nil, nil, nil, ethereal.prairie)

-- papyrus
add_node({"default:dirt_with_grass"}, 0.01, {"grassy"}, 1, 55, {"default:papyrus"}, 4, "default:water_source", 1, ethereal.grassy)
add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"}, 0.01, {"junglee"}, 1, 55, {"default:papyrus"}, 4, "default:water_source", 1, ethereal.junglee)
add_node({"default:dirt_with_grass"}, 0.05, {"swamp"}, 1, 45, {"default:papyrus"}, 4, "default:water_source", 1, ethereal.swamp)

--= Farming Redo plants

if farming and farming.mod and farming.mod == "redo" then

print ("[MOD] Ethereal - Farming Redo detected and in use")

-- potato
add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"}, 0.015, {"junglee"}, 8, 75, {"farming:potato_3"}, nil, nil, nil, ethereal.junglee)
add_node({"default:dirt_with_coniferous_litter"}, 0.005, {"junglee"}, 108, 148, {"farming:blueberry_4"}, nil, nil, nil, ethereal.junglee)

-- carrot, cucumber, potato, tomato, corn, coffee, raspberry, rhubarb
--add_node({"default:dirt_with_grass"}, 0.05, {"grassytwo"}, 12, 44, {"farming:carrot_7", "farming:cucumber_4",
--	"farming:potato_3", "farming:tomato_7", "farming:corn_8", "farming:coffee_5",
--	"farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4"}, nil, nil, nil, ethereal.grassytwo)
--add_node({"default:dirt_with_grass"}, 0.05, {"grassy"}, 6, 78, {"farming:carrot_7", "farming:cucumber_4",
--	"farming:potato_3", "farming:tomato_7", "farming:corn_8", "farming:coffee_5",
--	"farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4",
--	"farming:beetroot_5"}, nil, nil, nil, ethereal.grassy)
--add_node({"default:dirt_with_grass"}, 0.05, {"jumble"}, 12, 66, {"farming:carrot_7", "farming:cucumber_4",
--	"farming:potato_3", "farming:tomato_7", "farming:corn_8", "farming:coffee_5",
--	"farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4"}, nil, nil, nil, ethereal.jumble)
add_node({"ethereal:prairie_dirt"}, 0.05, {"prairie"}, 5, 54, {"farming:carrot_7", "farming:cucumber_4",
	"farming:pea_5", "farming:beetroot_5"}, nil, nil, nil, ethereal.prairie)

-- melon and pumpkin
add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"}, 0.015, {"junglee"}, 2, 85, {"farming:melon_8", "farming:pumpkin_8"}, nil, "default:water_source", 1, ethereal.junglee)
add_node({"default:dirt_with_grass"}, 0.015, {"grassy"}, 20, 100, {"farming:melon_8", "farming:pumpkin_8"}, nil, "default:water_source", 1, ethereal.grassy)
add_node({"default:dirt_with_grass"}, 0.015, {"grassytwo"}, 31, 110, {"farming:melon_8", "farming:pumpkin_8"}, nil, "default:water_source", 1, ethereal.grassytwo)
add_node({"default:dirt_with_grass"}, 0.015, {"jumble"}, 25, 90, {"farming:melon_8", "farming:pumpkin_8"}, nil, "default:water_source", 1, ethereal.jumble)

-- green beans
--add_node({"default:dirt_with_grass"}, 0.035, {"grassytwo"}, 7, 85, {"farming:beanbush"}, nil, nil, nil, ethereal.grassytwo)

-- grape bushel
add_node({"default:dirt_with_grass"}, 0.010, {"grassytwo"}, 12, 66, {"farming:grapebush"}, nil, nil, nil, ethereal.grassytwo)
add_node({"default:dirt_with_grass"}, 0.010, {"grassy"}, 12, 66, {"farming:grapebush"}, nil, nil, nil, ethereal.grassy)
add_node({"ethereal:prairie_dirt"}, 0.010, {"prairie"}, 12, 66, {"farming:grapebush"}, nil, nil, nil, ethereal.prairie)

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.06,
		spread = {x = 100, y = 100, z = 100},
		seed = 420,
		octaves = 3,
		persist = 0.6
	},
	y_min = 5,
	y_max = 35,
	decoration = "farming:hemp_7",
	spawn_by = "group:tree",
	num_spawn_by = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.09,
		spread = {x = 100, y = 100, z = 100},
		seed = 760,
		octaves = 3,
		persist = 0.6
	},
	y_min = 5,
	y_max = 35,
	decoration = {"farming:chili_8", "farming:garlic_5", "farming:pepper_5", "farming:onion_5"},
	spawn_by = "group:tree",
	num_spawn_by = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.06,
		spread = {x = 100, y = 100, z = 100},
		seed = 917,
		octaves = 3,
		persist = 0.6
	},
	y_min = 18,
	y_max = 30,
	decoration = {"farming:pineapple_8"},
})
end

-- place waterlily in beach areas
local list = {
	{"desert_ocean", ethereal.desert},
	{"plains_ocean", ethereal.plains},
	{"sandclay", ethereal.sandclay},
	{"sandstone_ocean", ethereal.sandstone},
	{"mesa_ocean", ethereal.mesa},
	{"grove_ocean", ethereal.grove},
	{"grassy_ocean", ethereal.grassy},
	{"swamp_ocean", ethereal.swamp},
}

for _, row in pairs(list) do

	if row[2] == 1 then

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.12,
			scale = 0.001,
			spread = {x = 200, y = 200, z = 200},
			seed = 33,
			octaves = 3,
			persist = 0.7
		},
		biomes = {row[1]},
		y_min = 0,
		y_max = 125,
		schematic = ethereal.waterlily,
		rotation = "random",
	})

	end

end

-- Generate Illumishroom in caves next to coal
minetest.register_on_generated(function(minp, maxp)

	if minp.y > -30 or maxp.y < -3000 then
		return
	end

	local bpos
	local coal = minetest.find_nodes_in_area_under_air(minp, maxp, "default:stone_with_coal")

	for n = 1, #coal do

		bpos = {x = coal[n].x, y = coal[n].y + 1, z = coal[n].z }

		if math.random(1, 2) == 1 then

			if bpos.y > -3000 and bpos.y < -2000 then
				minetest.swap_node(bpos, {name = "ethereal:illumishroom3"})

			elseif bpos.y > -2000 and bpos.y < -1000 then
				minetest.swap_node(bpos, {name = "ethereal:illumishroom2"})

			elseif bpos.y > -1000 and bpos.y < -30 then
				minetest.swap_node(bpos, {name = "ethereal:illumishroom"})
			end
		end
	end
end)

-- coral reef (0.4.15 only)
if ethereal.reefs == 1 then

-- override corals so crystal shovel can pick them up intact
minetest.override_item("default:coral_skeleton", {groups = {crumbly = 3}})
minetest.override_item("default:coral_orange", {groups = {crumbly = 3}})
minetest.override_item("default:coral_brown", {groups = {crumbly = 3}})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:sand"},
		noise_params = {
			offset = -0.15,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 7013,
			octaves = 3,
			persist = 1,
		},
		-- biomes = {
			-- "desert_ocean",
			-- "grove_ocean",
		-- },
		y_min = -8,
		y_max = -2,
		schematic = dpath .. "corals.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end


-- is baked clay mod active? add new flowers if so
if minetest.get_modpath("bakedclay") then

minetest.register_decoration({
	deco_type = "simple",
	place_on = {
		"ethereal:prairie_grass", "default:dirt_with_grass",
		"ethereal:grove_dirt"
	},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.004,
		spread = {x = 100, y = 100, z = 100},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	y_min = 10,
	y_max = 90,
	decoration = "bakedclay:delphinium",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {
		"ethereal:prairie_grass", "default:dirt_with_grass",
		"ethereal:grove_dirt", "ethereal:bamboo_dirt"
	},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.004,
		spread = {x = 100, y = 100, z = 100},
		seed = 7134,
		octaves = 3,
		persist = 0.6
	},
	y_min = 15,
	y_max = 90,
	decoration = "bakedclay:thistle",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x = 100, y = 100, z = 100},
		seed = 7135,
		octaves = 3,
		persist = 0.6
	},
	y_min = 1,
	y_max = 90,
	decoration = "bakedclay:lazarus",
	spawn_by = "default:jungletree",
	num_spawn_by = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:sand"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.009,
		spread = {x = 100, y = 100, z = 100},
		seed = 7136,
		octaves = 3,
		persist = 0.6
	},
	y_min = 1,
	y_max = 15,
	decoration = "bakedclay:mannagrass",
	spawn_by = "group:water",
	num_spawn_by = 1,
})

end

if ethereal.desert and minetest.get_modpath("wine") then
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 16,
	fill_ratio = 0.001,
	biomes = {"desert"},
	decoration = {"wine:blue_agave"},
})
end
