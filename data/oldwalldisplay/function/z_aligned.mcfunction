$data modify storage walldisplay:reg z_aligned_packed set value {from:$(from),to:$(to),z:$(z),face:$(face)}

data modify storage walldisplay:reg z_aligned_unpacked set value {}
data modify storage walldisplay:reg z_aligned_unpacked.from_x set from storage walldisplay:reg z_aligned_packed.from[0]
data modify storage walldisplay:reg z_aligned_unpacked.from_y set from storage walldisplay:reg z_aligned_packed.from[1]
data modify storage walldisplay:reg z_aligned_unpacked.to_x set from storage walldisplay:reg z_aligned_packed.to[0]
data modify storage walldisplay:reg z_aligned_unpacked.to_y set from storage walldisplay:reg z_aligned_packed.to[1]
data modify storage walldisplay:reg z_aligned_unpacked.z set from storage walldisplay:reg z_aligned_packed.z
data modify storage walldisplay:reg z_aligned_unpacked.face set from storage walldisplay:reg z_aligned_packed.face

function walldisplay:z_aligned_unpacked with storage walldisplay:reg z_aligned_unpacked