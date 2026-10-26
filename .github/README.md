# ImperiumMC Resource Pack

## Imperium
```
assets/
  minecraft/
   items/
      blaze_rod.png
      flint.png
      golden_hoe.png
      leather_boots.png
      leather_chestplate.png
      netherite_hoe.png
      netherite_scrap.png
      netherite_shovel.png
      netherite_sword.png
      stick.png
```

## Reg's More Foods
```
assets/
  minecraft/
    items/
      burn_pottery_sherd.png
      flower_banner_pattern.png
      rabbit_foot.png
      skull_banner_pattern.png
    models/
      item/
        bordure_indented_banner_pattern.json
        brewer_pottery_sherd.json
        burn_pottery_sherd.json
        danger_pottery_sherd.json
        field_masoned_banner_pattern.json
        flower_banner_pattern.json
        guster_banner_pattern.json
        phantom_membrane.json
        poisonous_potato.json
        rabbit_foot.json
        skull_banner_pattern.json
    textures/
      block/
        beetroots_stage0.png
        beetroots_stage1.png
        beetroots_stage2.png
        beetroots_stage3.png
      item/
        angler_pottery_sherd.png
        archer_pottery_sherd.png
        arms_up_pottery_sherd.png
        beetroot.png
        beetroot_seeds.png
        lettuce.png
```

## Releasing

With trunk pushed and checked out, run `scripts/release patch` (or
`minor`, `major`). It builds the pack and tags the next version. Push the tag
it prints, and CI attaches `ImperiumMC.Resource.Pack.zip` to a draft GitHub
release for that tag. Publish the draft to make it the latest release, which
is the one the server's `resource-pack` URL downloads.
