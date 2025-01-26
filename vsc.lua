-- name: vsc test
-- description: et vsc

local function mario_update(m)
    if (m.controller.buttonDown & U_JPAD) ~= 0 then
        m.vel.y = 26
    end
end

hook_event(HOOK_MARIO_UPDATE, mario_update)
