-- Get the name of the location the player is in
function Prisel.GPS:GetNameLocation(pTarget, bPrefix)
    local config = Prisel.GPS.Config
    local nearest = nil
    local nearestDist = math.huge

    local playerPos = pTarget:GetPos()

    for _, v in ipairs(config.Coords) do
        local coords = v.coords
        local dist = playerPos:Distance(coords)
        
        if dist < nearestDist then
            nearest = v
            nearestDist = dist
        end
    end

    if not nearest then
        return
    end

    local prefix = bPrefix and (nearest.prefix .. " ") or ""
    return ("%s%s"):format(prefix, nearest.label)
end

-- Get the name of the location a set of coordinates is near
function Prisel.GPS:GetNameLocationByCoords(vCoords, bPrefix)
    local config = Prisel.GPS.Config
    local nearest = nil
    local nearestDist = math.huge

    for _, v in ipairs(config.Coords) do
        local dist = vCoords:Distance(v.coords)
        
        if dist < nearestDist then
            nearest = v
            nearestDist = dist
        end
    end

    if not nearest then
        return
    end

    local prefix = bPrefix and (nearest.prefix .. " ") or ""
    return ("%s%s"):format(prefix, nearest.label)
end
