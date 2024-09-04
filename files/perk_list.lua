table.insert(perk_list,
  {
    id = "MY_CUSTOM_PERK",
    ui_name = "My Custom Perk Name",
    ui_description = "Description for my custom perk",
    ui_icon = "data/ui_gfx/perk_icons/custom_perk.png",  -- Change this to your own
    perk_icon = "data/items_gfx/perks/custom_perk.png",  -- Change this to your own
    stackable = STACKABLE_NO,
    game_effect = "RAINBOW_FARTS", -- Hardcoded game effect, change or remove this
    usable_by_enemies = false,
    not_in_default_perk_pool = false, --set to true to not include it in the default perk pool
    func = function( entity_perk_item, entity_who_picked, item_name )
      -- Any code that you want to run upon perk pickup goes here.
    --   EntityAddComponent( entity_who_picked, "LuaComponent", 
    --   {
    --     _tags = "perk_component",
    --     script_source_file = "data/scripts/perks/custom_script.lua",
    --     execute_every_n_frame = "-1",
    --   } )
    end,
    func_remove = function( entity_who_picked )
      -- optional
    end,
  }
)

-- stackable_is_rare = false,
-- stackable_maximum = 0,
-- max_in_perk_pool = 2,