data:extend({
  {
    type = "recipe",
    name = "beaconed-pumpjack-2",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-pumpjack-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "k",
    ingredients =
    {
      {"beaconed-pumpjack", 1},
      {"speed-module-2", 2}
    },
    results = {
      {type = "item", name = "beaconed-pumpjack-2", amount = 1},
      {type = "item", name = "speed-module", amount = 2}
    },
    --main_product = "beaconed-pumpjack-2",
    allow_as_intermediate = false
  }
})
data:extend({
  {
    type = "item",
    name = "beaconed-pumpjack-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-pumpjack-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "b[fluids]-b[pumpjack]",
    place_result = "beaconed-pumpjack-2",
    stack_size = 20
  },
})
data:extend({
  {
    type = "mining-drill",
    name = "beaconed-pumpjack-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-pumpjack-2.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "beaconed-pumpjack-2"},
    resource_categories = {"basic-fluid"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      emissions = 0.1,
      drain = "480kW",
      usage_priority = "secondary-input"
    },
    output_fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      }
    },
    energy_usage = "414kW",
    mining_speed = 2.8,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 1,
      module_info_max_icons_per_row = 1,
      module_info_max_icon_rows = 1,
    },
    allowed_effects = {"productivity"},
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    base_render_layer = "lower-object-above-shadow",
    base_picture =
    {
      sheets =
      {
        {
          filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
          priority = "extra-high",
          width = 131,
          height = 137,
          shift = util.by_pixel(-2.5, -4.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pumpjack/pumpjack-base-shadow.png",
          priority = "extra-high",
          width = 110,
          height = 111,
          draw_as_shadow = true,
          shift = util.by_pixel(6, 0.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-base-shadow.png",
            width = 220,
            height = 220,
            scale = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(6, 0.5)
          }
        }
      }
    },
    animations =
    {
      north =
      {
        layers =
        {
          {
            priority = "high",
            filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead.png",
            line_length = 8,
            width = 104,
            height = 102,
            frame_count = 40,
            shift = util.by_pixel(-4, -24),
            animation_speed = beaconed_pumpjack_2_animation_speed,
            hr_version =
            {
              priority = "high",
              filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead.png",
              animation_speed = beaconed_pumpjack_2_animation_speed,
              scale = 0.5,
              line_length = 8,
              width = 206,
              height = 202,
              frame_count = 40,
              shift = util.by_pixel(-4, -24)
            }
          },
          {
            priority = "high",
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-pumpjack/pumpjack-horsehead-mask.png",
            line_length = 8,
            width = 104,
            height = 102,
            frame_count = 40,
            shift = util.by_pixel(-4, -24),
            --blend_mode = "additive",
            tint = {0.4*0.8, 0.4*0.8, 0, 0},
            animation_speed = beaconed_pumpjack_3_animation_speed,
            hr_version =
            {
              priority = "high",
              filename = "__Absorbed-Beacons__/graphics/entity/beaconed-pumpjack/hr-pumpjack-horsehead-mask.png",
              animation_speed = beaconed_pumpjack_3_animation_speed,
              scale = 0.5,
              line_length = 8,
              width = 206,
              height = 202,
              frame_count = 40,
              shift = util.by_pixel(-4, -24),
              tint = {0.4*0.8, 0.4*0.8, 0, 0},
            }
          },
          {
            priority = "high",
            filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
            animation_speed = beaconed_pumpjack_2_animation_speed,
            draw_as_shadow = true,
            line_length = 8,
            width = 155,
            height = 41,
            frame_count = 40,
            shift = util.by_pixel(17.5, 14.5),
            hr_version =
            {
              priority = "high",
              filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead-shadow.png",
              animation_speed = beaconed_pumpjack_2_animation_speed,
              draw_as_shadow = true,
              line_length = 8,
              width = 309,
              height = 82,
              frame_count = 40,
              scale = 0.5,
              shift = util.by_pixel(17.75, 14.5)
            }
          }
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5
    },
    fast_replaceable_group = "pumpjack",
    next_upgrade = "beaconed-pumpjack-3",
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
})