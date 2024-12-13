$data modify storage mapimation:reg anim/stepped set value {anim:$(anim),sf:0,from:0,to:0,step:$(step),times:$(times)}
function mapimation:anim/stepped_rec with storage mapimation:reg anim/stepped
data modify storage mapimation:reg anim/stepped.max set from storage mapimation:reg anim/stepped.to
function mapimation:frame/end with storage mapimation:reg anim/stepped