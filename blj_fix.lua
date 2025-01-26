-- name: BLJ Patch
-- description: Simple mod that patches the BLJ.  

local function mario_update(m)
    if (m.action == ACT_LONG_JUMP_LAND) --checks if he lands from longjump
    and m.forwardVel < -15 then --checks if marios speed is less than 15
        m.forwardVel = 0 --sets his speed to 0 (like shindou)
    end
end


-- hooks --
hook_event(HOOK_MARIO_UPDATE, mario_update)
