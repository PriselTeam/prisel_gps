function Prisel.GPS:GetNameLocation(target, prefix)
    local nearest = nil
    local nearestDist = 0

    for k, v in ipairs(Prisel.GPS.Config.Coords) do
        local dist = target:GetPos():Distance(v.coords)
        if not nearest or dist < nearestDist then
            nearest = v
            nearestDist = dist
        end
    end

    if not nearest then return end

    return (prefix and (nearest.prefix .. " ") or "") .. nearest.label
end