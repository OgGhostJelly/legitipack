$data modify storage walldisplay:reg x_aligned_packed set value {from:$(from),to:$(to),x:$(x),face:$(face)}

data modify storage walldisplay:reg x_aligned_unpacked set value {}
data modify storage walldisplay:reg x_aligned_unpacked.from_z set from storage walldisplay:reg x_aligned_packed.from[0]
data modify storage walldisplay:reg x_aligned_unpacked.from_y set from storage walldisplay:reg x_aligned_packed.from[1]
data modify storage walldisplay:reg x_aligned_unpacked.to_z set from storage walldisplay:reg x_aligned_packed.to[0]
data modify storage walldisplay:reg x_aligned_unpacked.to_y set from storage walldisplay:reg x_aligned_packed.to[1]
data modify storage walldisplay:reg x_aligned_unpacked.x set from storage walldisplay:reg x_aligned_packed.x
data modify storage walldisplay:reg x_aligned_unpacked.face set from storage walldisplay:reg x_aligned_packed.face

function walldisplay:x_aligned_unpacked with storage walldisplay:reg x_aligned_unpacked