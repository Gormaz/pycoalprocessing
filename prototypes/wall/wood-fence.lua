--luacheck: no global
-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "wood-fence",
    category = "crafting",
    enabled = false,
    ingredients =
    {
        {type="item", name="treated-wood", amount=2},
    },
    result = "wood-fence",
    subgroup = "py-items",
    order = "zz",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1= {
    type="item",
    name="wood-fence",
    icon="__pycoalprocessing__/graphics/icons/wood-fence.png",
    flags={"goes-to-main-inventory"},
    subgroup = "py-items",
    order = "z",
	place_result = "wood-fence",
    stack_size = 500,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1= {
		type = "wall",
		name = "wood-fence",
		icon = "__pycoalprocessing__/graphics/icons/wood-fence.png",		
		flags = {"placeable-neutral", "player-creation"},
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		--drawing_box = {{-1.5,-1.5},{1.5,1.5}},
		minable = {mining_time = 1, result = "wood-fence"},
		max_health = 100,
		corpse = "wall-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		repair_speed_modifier = 4,
		fast_replaceable_group = "wall",
		vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
		connected_gate_visualization = { filename = "__core__/graphics/arrows/underground-lines.png",priority = "high",width = 64,height = 64,scale = 0.5 },
		wall_diode_green =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-green.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_green_light =
		{
			minimum_darkness = 0.3,
			color = {g=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		wall_diode_red =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-red.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_red_light =
		{
			minimum_darkness = 0.3,
			color = {r=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		resistances =
		{
			{ type = "physical", decrease = 5, percent = 40 },
			{ type = "explosion", decrease = 2, percent = 40 },
			{ type = "fire", percent = 20 },
			{ type = "acid", percent = 20 },
		},
		pictures =
		{
			single ={{
					filename = "__pycoalprocessing__/graphics/walls/wood-fence/single.png",
					priority = "extra-high", width = 32, height = 49, shift = {0, -0.0}
				}},
			straight_vertical =
			{
				{
					filename = "__pycoalprocessing__/graphics/walls/wood-fence/vertical.png",
					priority = "extra-high", width = 32, height = 55, shift = {0, -0.0}
				},
			},
			straight_horizontal =
			{
				{
					filename = "__pycoalprocessing__/graphics/walls/wood-fence/horizontal.png",
					priority = "extra-high", width = 32, height = 48, shift = {0, -0.0}
				},
			},
			corner_right_down =
			{
				{
					filename = "__pycoalprocessing__/graphics/walls/wood-fence/corner-right.png",
					priority = "extra-high", width = 32, height = 48, shift = {0, -0.0}
				}
			},
			corner_left_down =
			{
				{
					filename = "__pycoalprocessing__/graphics/walls/wood-fence/corner-left.png",
					priority = "extra-high", width = 44, height = 48, shift = {0.2, -0.0}
				}
			},
			t_up =
			{
				{
					filename = "__pycoalprocessing__/graphics/walls/wood-fence/t-down.png",
					priority = "extra-high", width = 32, height = 48, shift = {0, -0.0}
				}
			},
			ending_right =
			{
				{
					filename = "__pycoalprocessing__/graphics/walls/wood-fence/end-right.png",
					priority = "extra-high", width = 32, height = 48, shift = {0, -0.0}
				}
			},
			ending_left =
			{
				{
					filename = "__pycoalprocessing__/graphics/walls/wood-fence/end-left.png",
					priority = "extra-high", width = 32, height = 48, shift = {0, -0.0}
				}
			}
		}

}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end
