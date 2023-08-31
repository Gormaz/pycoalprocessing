data:extend
{
  {
    type = "container",
    name = "py-logo-15tiles",
    icon = "__base__/graphics/icons/factorio-logo-16tiles.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation", "hidden"},
    minable = {mining_time = 0.1},
    max_health = 666,
    collision_box = {{-7.5+0.15, -1.5+0.15}, {7.5-0.15, 1.5-0.15}},
    selection_box = {{-7.5, -1.5}, {7.5, 1.5}},
    inventory_size = 1,
    picture =
    {
      filename = "__pycoalprocessinggraphics__/graphics/entity/logo/py-logo.png",
      priority = "extra-high",
      width = 1000,
      height = 298,
      shift = util.by_pixel(0, 0),
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        decrease = 0,
        percent = 100
      },
      {
        type = "physical",
        decrease = 0,
        percent = 100
      },
      {
        type = "impact",
        decrease = 0,
        percent = 0
      },
      {
        type = "explosion",
        decrease = 0,
        percent = 100
      },
      {
        type = "acid",
        decrease = 0,
        percent = 100
      },
      {
        type = "laser",
        decrease = 0,
        percent = 100
      },
      {
        type = "electric",
        decrease = 0,
        percent = 100
      },
    },
  }
}