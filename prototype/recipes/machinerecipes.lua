local PM = require("__periodic-madness__/library")
--for all recipes to make buildings

data:extend({
  {
    type = "recipe",
    name = "pm-acid-plant",
    energy_required = 1,
    subgroup = "production-machine",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-air-filter", 1),
      PM.ingredient("pm-basic-panelling", 8),
      PM.ingredient("pm-basic-tubing", 4),
    },
    result = "pm-acid-plant"
  },
  {
    type = "recipe",
    name = "pm-assembling-machine-0",
    enabled = true,
    subgroup = "production-machine",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-basic-framing", 4),
      PM.ingredient("pm-basic-panelling", 4),
      PM.ingredient("stone-furnace", 1)
    },
    result = "pm-assembling-machine-0"
  },
  {
    type = "recipe",
    name = "pm-welder",
    enabled = false,
    energy_required = 1.5,
    ingredients =
    {
      PM.ingredient("pm-basic-panelling", 5),
      PM.ingredient("stone-furnace", 1),
      PM.ingredient("pm-basic-framing", 4)
    },
    result = "pm-welder",
  },
  {
    type = "recipe",
    name = "pm-water-extractor",
    subgroup = "pm-water-machine",
    order = "a",
    enabled = true,
    ingredients =
    {
      PM.ingredient("pm-basic-panelling", 4),
      PM.ingredient("pm-basic-tubing", 2),
      PM.ingredient("iron-gear-wheel", 2)
    },
    result = "pm-water-extractor",
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-tank",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-heavyweight-panelling", 8),
      PM.ingredient("pm-basic-framing", 16),
      PM.ingredient("pm-corrosion-resistant-tubing", 2)
    },
    result = "pm-stainless-steel-storage-tank"
  },
  {
    type = "recipe",
    name = "pm-dirty-boiler",
    enabled = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-plate", 5),
      PM.ingredient("pm-basic-tubing", 4)
    },
    result = "pm-dirty-boiler",
  },
  {
    type = "recipe",
    name = "pm-high-density-transport-belt",
    enabled = false,
    energy_required = 2,
    category = "crafting-with-fluid",
    ingredients =
    {
      PM.ingredient("express-transport-belt", 1),
      PM.ingredient("low-density-structure", 2),
      PM.ingredient("processing-unit", 3),
      PM.ingredient("pm-heavy-lubricant", 5, "fluid")
    },
    result = "pm-high-density-transport-belt"
  },
  {
    type = "recipe",
    name = "pm-high-density-underground-belt",
    enabled = false,
    energy_required = 2,
    show_amount_in_title = true,
    category = "crafting-with-fluid",
    ingredients =
    {
      PM.ingredient("express-underground-belt", 2),
      PM.ingredient("low-density-structure", 4),
      PM.ingredient("pm-heavy-lubricant", 10, "fluid")
    },
    result = "pm-high-density-underground-belt",
    result_count = 2
  },
  {
    type = "recipe",
    name = "pm-high-density-splitter",
    enabled = false,
    energy_required = 3,
    category = "crafting-with-fluid",
    ingredients =
    {
      PM.ingredient("express-splitter", 1),
      PM.ingredient("low-density-structure", 2),
      PM.ingredient("processing-unit", 6),
      PM.ingredient("pm-heavy-lubricant", 15, "fluid")
    },
    result = "pm-high-density-splitter"
  },
  {
    type = "recipe",
    name = "pm-vacuum-former-1",
    enabled = false,
    energy_required = 2,
    subgroup = "production-machine",
    order = "f",
    ingredients =
    {
      PM.ingredient("pm-heating-plating", 4),
      PM.ingredient("pm-basic-tubing", 4),
      PM.ingredient("pm-fluid-circuit", 6),
      PM.ingredient("pm-brass-cog", 2)
    },
    result = "pm-vacuum-former-1"
  },
  {
    type = "recipe",
    name = "pm-washing-plant-1",
    subgroup = "pm-water-machine",
    order = "c",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("pm-basic-tubing", 10),
      PM.ingredient("steel-plate", 4),
      PM.ingredient("pm-fluid-circuit", 3)
    },
    result = "pm-washing-plant-1"
  },
  {
    type = "recipe",
    name = "pm-burner-crusher",
    subgroup = "pm-crushing-machine",
    order = "a",
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("iron-gear-wheel", 2),
      PM.ingredient("pm-basic-framing", 8),
      PM.ingredient("pm-nickel-plate", 1)
    },
    result = "pm-burner-crusher"
  },
  {
    type = "recipe",
    name = "pm-fractional-distillator",
    subgroup = "pm-oil-machine",
    order = "a",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      PM.ingredient("pm-heating-plating", 8),
      PM.ingredient("pm-corrosion-resistant-tubing", 8),
      PM.ingredient("pm-heavyweight-framing", 10),
      PM.ingredient("pm-fluid-circuit", 2),
      PM.ingredient("pm-polyethylene-plastic", 4)
    },
    result = "pm-fractional-distillator"
  },
  {
    type = "recipe",
    name = "pm-crusher-1",
    subgroup = "pm-crushing-machine",
    order = "b",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("steel-plate", 6),
      PM.ingredient("pm-basic-framing", 4),
      PM.ingredient("pm-basic-panelling", 8),
      PM.ingredient("electronic-circuit", 3)
    },
    result = "pm-crusher-1"
  },
  {
    type = "recipe",
    name = "pm-crusher-2",
    subgroup = "pm-crushing-machine",
    order = "c",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-stainless-steel-alloy", 6),
      PM.ingredient("pm-heavyweight-framing", 4),
      PM.ingredient("pm-heavyweight-panelling", 8),
      PM.ingredient("electric-engine-unit", 2),
      PM.ingredient("processing-unit", 3)
    },
    result = "pm-crusher-2"
  },
  {
    type = "recipe",
    name = "pm-fluid-catalyst-cracker",
    subgroup = "pm-oil-machine",
    order = "d",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-brass-cog", 2),
      PM.ingredient("pm-heavyweight-panelling", 16),
      PM.ingredient("pm-heavyweight-framing", 8),
      PM.ingredient("pm-corrosion-resistant-tubing", 6),
      PM.ingredient("pm-fluid-circuit", 2)
    },
    result = "pm-fluid-catalyst-cracker"
  },
  {
    type = "recipe",
    name = "pm-evaporator",
    subgroup = "pm-water-machine",
    order = "c",
    energy_required = 1.5,
    ingredients =
    {
      PM.ingredient("pm-basic-framing", 2),
      PM.ingredient("pm-glass-pane", 1),
      PM.ingredient("pm-basic-tubing", 4),
    },
    result = "pm-evaporator"
  },
  {
    type = "recipe",
    name = "pm-molten-inator",
    subgroup = "pm-molten-machine",
    order = "a",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-heating-plating", 10),
      PM.ingredient("pm-stainless-steel-pipe", 2),
      PM.ingredient("pm-gold-plate", 6)
    },
    result = "pm-molten-inator"
  },
  {
    type = "recipe",
    name = "pm-cold-inator",
    subgroup = "pm-molten-machine",
    order = "c",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-cooling-plating", 10),
      PM.ingredient("pm-stainless-steel-pipe", 2),
      PM.ingredient("pm-silver-plate", 6)
    },
    result = "pm-cold-inator"
  },
  {
    type = "recipe",
    name = "pm-cold-inator-2",
    subgroup = "pm-molten-machine",
    order = "d",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-cooling-framing", 4),
      PM.ingredient("pm-cold-inator", 1),
      PM.ingredient("pm-silver-plating", 4),
      PM.ingredient("pm-fluid-circuit", 3)
    },
    result = "pm-cold-inator-2"
  },
  {
    type = "recipe",
    name = "pm-molten-inator-2",
    subgroup = "pm-molten-machine",
    order = "b",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-molten-framing", 4),
      PM.ingredient("pm-molten-inator", 1),
      PM.ingredient("pm-gold-plating", 4),
      PM.ingredient("pm-fluid-circuit", 3)
    },
    result = "pm-molten-inator-2"
  },
  {
    type = "recipe",
    name = "pm-circuit-megassembler",
    subgroup = "production-machine",
    order = "y",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-lightweight-panelling", 30),
      PM.ingredient("pm-corrosion-resistant-tubing", 20),
      PM.ingredient("advanced-circuit", 15),
      PM.ingredient("assembling-machine-2", 2),
      PM.ingredient("concrete", 10),
      PM.ingredient("electric-engine-unit", 9)
    },
    result = "pm-circuit-megassembler"
  },
  {
    type = "recipe",
    name = "pm-atmospheric-condenser",
    subgroup = "pm-atmospheric-machine",
    order = "a",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      PM.ingredient("pm-corrosion-resistant-tubing", 8),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-air-filter", 8),
      PM.ingredient("advanced-circuit", 5),
    },
    result = "pm-atmospheric-condenser"
  },
  {
    type = "recipe",
    name = "pm-filter-long-handed-inserter",
    subgroup = "inserter",
    order = "f",
    enabled = false,
    energy_required = 0.5,
    ingredients =
    {
      PM.ingredient("electronic-circuit", 4),
      PM.ingredient("pm-vulcanised-rubber", 1),
      PM.ingredient("long-handed-inserter", 1)
    },
    result = "pm-filter-long-handed-inserter"
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-pipe",
    subgroup = "energy-pipe-distribution",
    order = "g",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("pm-corrosion-resistant-tubing", 1),
      PM.ingredient("pm-stainless-steel-alloy", 2)
    },
    results =
    {
      PM.product("pm-stainless-steel-pipe", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-pipe-to-ground",
    subgroup = "energy-pipe-distribution",
    order = "h",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("pm-corrosion-resistant-tubing", 10),
      PM.ingredient("pm-stainless-steel-alloy", 5)
    },
    results =
    {
      PM.product("pm-stainless-steel-pipe-to-ground", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-science-center",
    subgroup = "pm-science-machine",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 10),
      PM.ingredient("lab", 1),
      PM.ingredient("advanced-circuit", 5),
      PM.ingredient("pm-corrosion-resistant-tubing", 8),
      PM.ingredient("pm-heavyweight-panelling", 12),
      PM.ingredient("pm-heavyweight-framing", 6)
    },
    results =
    {
      PM.product("pm-science-center", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-voltatic-charger",
    subgroup = "pm-battery-machine",
    order = "a",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("pm-basic-panelling", 4),
      PM.ingredient("pm-basic-framing", 2),
      PM.ingredient("copper-cable", 4),
      PM.ingredient("electronic-circuit", 1)
    },
    results =
    {
      PM.product("pm-voltatic-charger", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-voltatic-discharger",
    subgroup = "pm-battery-machine",
    order = "b",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("pm-basic-panelling", 4),
      PM.ingredient("pm-basic-framing", 2),
      PM.ingredient("copper-cable", 4),
      PM.ingredient("electronic-circuit", 1)
    },
    results =
    {
      PM.product("pm-voltatic-discharger", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-CO2-nullifer",
    subgroup = "pm-atmospheric-machine",
    order = "b",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 8),
      PM.ingredient("wood", 12),
      PM.ingredient("pm-silver-plate", 6),
      PM.ingredient("pm-lightweight-panelling", 8),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-corrosion-resistant-tubing", 4)
    },
    results =
    {
      PM.product("pm-CO2-nullifer", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-vacuum-former-2",
    enabled = false,
    energy_required = 6,
    subgroup = "production-machine",
    order = "g",
    ingredients =
    {
      PM.ingredient("pm-heating-plating", 8),
      PM.ingredient("pm-corrosion-resistant-tubing", 12),
      PM.ingredient("advanced-circuit", 6),
      PM.ingredient("pm-brass-cog", 4),
      PM.ingredient("pm-heavyweight-panelling", 4)
    },
    result = "pm-vacuum-former-2"
  },
  {
    type = "recipe",
    name = "pm-air-filterer",
    subgroup = "pm-atmospheric-machine",
    order = "c",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      PM.ingredient("pm-air-filter", 4),
      PM.ingredient("pm-lightweight-panelling", 12),
      PM.ingredient("advanced-circuit", 4),
      PM.ingredient("pm-platinum-plate", 6),
    },
    result = "pm-air-filterer"
  },
  {
    type = "recipe",
    name = "pm-washing-plant-2",
    subgroup = "pm-water-machine",
    order = "d",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("pm-corrosion-resistant-tubing", 10),
      PM.ingredient("pm-stainless-steel-alloy", 2),
      PM.ingredient("advanced-circuit", 6),
      PM.ingredient("pm-heavyweight-panelling", 12)
    },
    result = "pm-washing-plant-2"
  },
  {
    type = "recipe",
    name = "pm-greenhouse",
    subgroup = "pm-atmospheric-machine",
    order = "d",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      PM.ingredient("pm-silver-plate", 6),
      PM.ingredient("pm-glass-pane", 12),
      PM.ingredient("pm-anti-bacterial-tubing", 4),
      PM.ingredient("pm-anti-bacterial-panelling", 8),
      PM.ingredient("landfill", 4)
    },
    result = "pm-greenhouse"
  },
  {
    type = "recipe",
    name = "pm-factorian-bacteria-greenhouse",
    subgroup = "pm-atmospheric-machine",
    order = "e",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-anti-bacterial-tubing", 8),
      PM.ingredient("pm-anti-bacterial-panelling", 6),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-glass-pane", 16),
      PM.ingredient("advanced-circuit", 4)
    },
    result = "pm-factorian-bacteria-greenhouse"
  },
  {
    type = "recipe",
    name = "pm-bio-lab",
    subgroup = "pm-science-machine",
    order = "d",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      PM.ingredient("pm-lightweight-framing", 16),
      PM.ingredient("pm-anti-bacterial-panelling", 12),
      PM.ingredient("advanced-circuit", 6),
      PM.ingredient("pm-tungsten-plate", 4),
      PM.ingredient("electric-engine-unit", 2)
    },
    results =
    {
      PM.product("pm-bio-lab", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-chest",
    subgroup = "storage",
    order = "ca",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-stainless-steel-alloy", 8)
    },
    results =
    {
      PM.product("pm-stainless-steel-chest", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-electric-mining-drill-2",
    subgroup = "extraction-machine",
    order = "b",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      PM.ingredient("advanced-circuit", 5),
      PM.ingredient("pm-lead-plate", 6),
      PM.ingredient("pm-basic-wiring", 10),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-heavyweight-panelling", 6)
    },
    results =
    {
      PM.product("pm-electric-mining-drill-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-electrolysis-plant",
    subgroup = "pm-water-machine",
    order = "f",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      PM.ingredient("copper-plate", 2),
      PM.ingredient("pm-zinc-plate", 2),
      PM.ingredient("pm-basic-tubing", 6),
      PM.ingredient("pm-basic-panelling", 8)
    },
    results =
    {
      PM.product("pm-electrolysis-plant", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-crystallizer",
    subgroup = "production-machine",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      PM.ingredient("pm-heavyweight-framing", 8),
      PM.ingredient("pm-heating-plating", 6),
      PM.ingredient("pm-cooling-plating", 6),
      PM.ingredient("advanced-circuit", 3),
      PM.ingredient("pm-corrosion-resistant-tubing", 14)
    },
    results =
    {
      PM.product("pm-crystallizer", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-solar-panel-2",
    category = "crafting-with-fluid",
    subgroup = "energy",
    order = "e",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("solar-panel", 1),
      PM.ingredient("pm-solar-cell", 4),
      PM.ingredient("pm-indium-plate", 4),
      PM.ingredient("processing-unit", 2),
      PM.ingredient("pm-liquid-gallium", 8, "fluid")
    },
    results =
    {
      PM.product("pm-solar-panel-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-walkable-solar-panel-1",
    category = "crafting-with-fluid",
    subgroup = "energy",
    order = "da",
    --enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("processing-unit", 3),
      PM.ingredient("pm-solar-cell", 4),
      PM.ingredient("pm-lightweight-panelling", 20),
      PM.ingredient("pm-liquid-gallium", 6, "fluid")
    },
    results =
    {
      PM.product("pm-walkable-solar-panel-1", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-walkable-solar-panel-2",
    category = "crafting-with-fluid",
    subgroup = "energy",
    order = "ea",
    --enabled = false,
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-walkable-solar-panel-1", 1),
      PM.ingredient("processing-unit", 6),
      PM.ingredient("pm-solar-cell", 6),
      PM.ingredient("pm-lightweight-panelling", 20),
      PM.ingredient("pm-liquid-gallium", 10, "fluid")
    },
    results =
    {
      PM.product("pm-walkable-solar-panel-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-cyclotron",
    energy_required = 6,
    enabled = false,
    ingredients =
    {
      PM.ingredient("electric-engine-unit", 4),
      PM.ingredient("advanced-circuit", 5),
      PM.ingredient("pm-heavyweight-framing", 16),
      PM.ingredient("pm-vanadium-redox-battery", 3),
      PM.ingredient("pm-radiation-resistant-tubing", 4),
      PM.ingredient("pm-radiation-resistant-panelling", 8)
    },
    results =
    {
      PM.product("pm-cyclotron", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-heat-exchanger-2",
    energy_required = 6,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-heating-plating", 40),
      PM.ingredient("pm-gold-plate", 50),
      PM.ingredient("heat-exchanger", 1)
    },
    results =
    {
      PM.product("pm-heat-exchanger-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-burn-inator",
    subgroup = "pm-oil-machine",
    order = "x",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-platinum-plate", 4),
      PM.ingredient("pm-air-filter", 6),
      PM.ingredient("pm-corrosion-resistant-tubing", 12),
      PM.ingredient("pm-heavyweight-framing", 16),
      PM.ingredient("pm-fluid-circuit", 8)
    },
    results =
    {
      PM.product("pm-burn-inator", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-heat-pipe-1",
    subgroup = "pm-heat-machines",
    order = "a",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-heating-plating", 20),
      PM.ingredient("pm-aluminium-plate", 8),
      PM.ingredient("copper-plate", 10)
    },
    results =
    {
      PM.product("pm-heat-pipe-1", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-polonium-reactor",
    subgroup = "energy",
    order = "f",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-radiation-resistant-panelling", 20),
      PM.ingredient("concrete", 100),
      PM.ingredient("advanced-circuit", 40),
      PM.ingredient("pm-radiation-resistant-tubing", 30),
      PM.ingredient("electric-engine-unit", 10),
      PM.ingredient("pm-cadnium-plate", 20)
    },
    results =
    {
      PM.product("pm-polonium-reactor", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-francium-ultracool-centrifugal-kabbalism",
    subgroup = "production-machine",
    order = "y",
    energy_required = 10,
    enabled = false,         --this means NO CRAFTING!!
    ingredients =
    {
      PM.ingredient("pm-radiation-resistant-panelling", 10),
      PM.ingredient("pm-radiation-resistant-tubing", 20),
      PM.ingredient("electric-engine-unit", 4),
      PM.ingredient("processing-unit", 20),
      PM.ingredient("pm-thallium-plate", 16)
    },
    results =         --hi smelloy
    {
      { "pm-francium-ultracool-centrifugal-kabbalism", 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-evaporator-2",
    enabled = false,
    subgroup = "pm-water-machine",
    order = "c",
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-evaporator", 1),
      PM.ingredient("pm-corrosion-resistant-tubing", 12),
      PM.ingredient("pm-glass-pane", 8),
      PM.ingredient("pm-thallium-plate", 3),
      PM.ingredient("pm-heavyweight-panelling", 8),
      PM.ingredient("pm-heating-plating", 10)
    },
    results =
    {
      PM.product("pm-evaporator-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-electrolysis-plant-2",
    enabled = false,
    subgroup = "pm-water-machine",
    order = "fa",
    energy_required = 3,
    ingredients =
    {
      PM.ingredient("pm-electrolysis-plant", 1),
      PM.ingredient("processing-unit", 3),
      PM.ingredient("pm-zirconia", 6),
      PM.ingredient("pm-heavyweight-panelling", 5),
      PM.ingredient("pm-corrosion-resistant-tubing", 12)
    },
    results =
    {
      PM.product("pm-electrolysis-plant-2", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-leaching-field",
    enabled = false,
    subgroup = "pm-water-machine",
    order = "g",
    ingredients =
    {
      PM.ingredient("pm-corrosion-resistant-tubing", 24),
      PM.ingredient("pm-fluid-circuit", 8),
      PM.ingredient("pm-heavyweight-framing", 12),
      PM.ingredient("pm-heavyweight-panelling", 16),
    },
    results =
    {
      PM.product("pm-leaching-field", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-battery-charger",
    subgroup = "pm-battery-machine",
    order = "c",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-basic-wiring", 10),
      PM.ingredient("pm-polyethylene-plastic", 4),
      PM.ingredient("pm-fluid-circuit", 2),
      PM.ingredient("pm-heavyweight-framing", 8)
    },
    results =
    {
      PM.product("pm-battery-charger", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-battery-discharger",
    subgroup = "pm-battery-machine",
    order = "d",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-basic-wiring", 10),
      PM.ingredient("pm-polyethylene-plastic", 4),
      PM.ingredient("pm-fluid-circuit", 2),
      PM.ingredient("pm-heavyweight-framing", 8)
    },
    results =
    {
      PM.product("pm-battery-discharger", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-pump",
    subgroup = "energy-pipe-distribution",
    order = "b[pipe]-c[pump]",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("pm-stainless-steel-alloy", 6),
      PM.ingredient("engine-unit", 2),
      PM.ingredient("pm-heavyweight-framing", 8),
      PM.ingredient("pm-heavyweight-panelling", 8),
    },
    results =
    {
      PM.product("pm-stainless-steel-pump", 1)
    }
  },

} --[[@as data.RecipePrototype[] ]])

data.raw["recipe"]["boiler"].enabled = false

data.raw["recipe"]["centrifuge"].order = "x"
