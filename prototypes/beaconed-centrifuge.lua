local original_centrifuge = data.raw["assembling-machine"]["centrifuge"]
local beaconed_data = {
  machine_energy_usage              = original_centrifuge.energy_usage,
  machine_emissions                 = original_centrifuge.energy_source.emissions_per_minute,
  machine_crafting_speed            = original_centrifuge.crafting_speed,
  machine_module_slots              = original_centrifuge.module_specification.module_slots,
  beacon_count                      = global_centrifuge_beacon_count,
  average_beacon_count              = global_centrifuge_average_beacon_count,
  beacon_effect                     = global_beacon_transmission_effect,
  beacon_module_slots               = global_beacon_module_slots,
  beacon_module_speed_bonus         = global_speed_module_1_speed_bonus,
  beacon_module_energy_usage_bonus  = global_speed_module_1_energy_usage_bonus,
  machine_module_speed_bonus        = global_productivity_module_1_speed_bonus,
  machine_module_energy_usage_bonus = global_productivity_module_1_energy_usage_bonus,
  emission_hack                     = 1
}

beaconed_centrifuge = util.table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
beaconed_centrifuge.name = "beaconed-centrifuge"
beaconed_centrifuge.icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge.png"
beaconed_centrifuge.minable.result = "beaconed-centrifuge"
beaconed_centrifuge.next_upgrade = "beaconed-centrifuge-2"
beaconed_centrifuge.crafting_speed = beaconed_stats(beaconed_data).beaconed_crafting_speed
beaconed_centrifuge.energy_source.emissions_per_minute = beaconed_stats(beaconed_data).beaconed_emissions_per_minute
beaconed_centrifuge.energy_source.drain = beaconed_stats(beaconed_data).beaconed_drain_string
beaconed_centrifuge.energy_usage = beaconed_stats(beaconed_data).beaconed_energy_usage_string
beaconed_centrifuge.allowed_effects = {"productivity", "pollution"}
beaconed_centrifuge.fast_replaceable_group = "centrifuge"

beaconed_centrifuge.module_specification.module_slots = data.raw["assembling-machine"]["centrifuge"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_centrifuge.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_centrifuge.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

beaconed_centrifuge_1_tint = {0.4*0.7, 0.2*0.7, 0, 0}

if settings.startup["modded-entity-graphics"].value == "ON" then
  table.insert(beaconed_centrifuge.idle_animation.layers,
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/beaconed-centrifuge-A-overlay.png",
      priority = "high",
      line_length = 8,
      width = 50,
      height = 78,
      frame_count = 64,
      shift = util.by_pixel(-24, -13),
      tint = beaconed_centrifuge_1_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/hr-beaconed-centrifuge-A-overlay.png",
        priority = "high",
        scale = 0.5,
        line_length = 8,
        width = 98,
        height = 155,
        frame_count = 64,
        shift = util.by_pixel(-24, -12.75),
        tint = beaconed_centrifuge_1_tint
      }
    }
  )
  table.insert(beaconed_centrifuge.idle_animation.layers,
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/beaconed-centrifuge-B-overlay.png",
      priority = "high",
      line_length = 8,
      width = 47,
      height = 81,
      frame_count = 64,
      shift = util.by_pixel(21.5, -11.5),
      tint = beaconed_centrifuge_1_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/hr-beaconed-centrifuge-B-overlay.png",
        priority = "high",
        scale = 0.5,
        line_length = 8,
        width = 93,
        height = 162,
        frame_count = 64,
        shift = util.by_pixel(21.75, -11.5),
        tint = beaconed_centrifuge_1_tint
      }
    }
  )
  table.insert(beaconed_centrifuge.idle_animation.layers,
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/beaconed-centrifuge-C-overlay.png",
      priority = "high",
      line_length = 8,
      width = 56,
      height = 84,
      frame_count = 64,
      shift = util.by_pixel(-8, -38),
      tint = beaconed_centrifuge_1_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/hr-beaconed-centrifuge-C-overlay.png",
        priority = "high",
        scale = 0.5,
        line_length = 8,
        width = 110,
        height = 168,
        frame_count = 64,
        shift = util.by_pixel(-8, -38),
        tint = beaconed_centrifuge_1_tint
      }
    }
  )
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_centrifuge.animation.layers) do
    layer.animation_speed = beaconed_centrifuge_1_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_centrifuge_1_animation_speed
    end
  end
  for i,layer in pairs(beaconed_centrifuge.idle_animation.layers) do
    layer.animation_speed = beaconed_centrifuge_1_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_centrifuge_1_animation_speed
    end
  end
end

data:extend({
  beaconed_centrifuge
})
data:extend({
  {
    type = "item",
    name = "beaconed-centrifuge",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[centrifuge]",
    place_result = "beaconed-centrifuge",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-centrifuge",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons",
    order = "g",
    ingredients =
    {
      {"centrifuge", 1},
      {"beacon", global_centrifuge_average_beacon_count},
      {"speed-module", global_centrifuge_average_beacon_count * global_beacon_module_slots}
    },
    results = {
      {type = "item", name = "beaconed-centrifuge", amount = 1},
    },
    allow_as_intermediate = false
  }
})
