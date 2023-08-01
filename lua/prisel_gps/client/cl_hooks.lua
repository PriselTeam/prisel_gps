hook.Add("HUDPaint", "Prisel.GPS.LocationName", function()
    draw.SimpleTextOutlined(("Vous vous trouvez proche %s"):format(Prisel.GPS:GetNameLocation(LocalPlayer(), true)), DarkRP.Library.Font(10, 0, "Montserrat Bold"), DarkRP.ScrW / 2, DarkRP.ScrH * 0.98, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, color_black)
end)