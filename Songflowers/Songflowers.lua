local HBD = LibStub("HereBeDragons-Pins-2.0")
local Songflowers = {
  ["52.9"] = 87.83,
  ["45.94"] = 85.22,
  ["48.26"] = 75.65,
  ["63.33"] = 22.61,
  ["63.91"] = 6.09,
  ["55.8"] = 10.44,
  ["34.35"] = 52.17,
  ["40.15"] = 56.52,
  ["40.14"] = 44.35,
  ["50.6"] = 13.9;
}
local CorruptedWindblossom = {
  ["49.9"] = 79.9,

  ["36.0"] = 62.1,
  ["39.0"] = 59.0,
  ["33.9"] = 48.8,
  ["44.9"] = 40.6,
  ["38.8"] = 22.2,
  ["44.9"] = 18.0,
  ["55.2"] = 22.9,
  ["56.9"] = 19.8,
  ["55.1"] = 6.9;
}
local NightDragon = {
  ["40.7"] = 78.3,
  ["35.1"] = 58.9,
  ["50.6"] = 30.5,
  ["42.5"] = 13.8;
}
local WhipperRootTuber = {
  ["39.8"] = 84.7,
  ["33.9"] = 59.9,
  ["43.1"] = 46.9,
  ["40.0"] = 18.9,

  ["50.0"] = 18.0,
  ["49.0"] = 12.3;
}

Songflowers_Frame = CreateFrame("Frame", nil, UIParent);
CorruptedWindblossom_Frame = CreateFrame("Frame", nil, UIParent);
NightDragon_Frame = CreateFrame("Frame", nil, UIParent);
WhipperRootTuber_Frame = CreateFrame("Frame", nil, UIParent);

function SongflowersUpdate()
  if(GetSpellBookItemName(1, "spell") ~= nil) then
    Songflowers_Frame:SetScript("OnUpdate", nil);
    Songflowers_Frame = nil;
    SongflowersPopulate();
  end
end
function CorruptedWindblossomUpdate()
  if(GetSpellBookItemName(1, "spell") ~= nil) then
    CorruptedWindblossom_Frame:SetScript("OnUpdate", nil);
    CorruptedWindblossom_Frame = nil;
    CorruptedWindblossomPopulate();
  end
end
function NightDragonUpdate()
  if(GetSpellBookItemName(1, "spell") ~= nil) then
    NightDragon_Frame:SetScript("OnUpdate", nil);
    NightDragon_Frame = nil;
    NightDragonPopulate();
  end
end
function WhipperRootTuberUpdate()
  if(GetSpellBookItemName(1, "spell") ~= nil) then
    WhipperRootTuber_Frame:SetScript("OnUpdate", nil);
    WhipperRootTuber_Frame = nil;
    WhipperRootTuberPopulate();
  end
end

function SongflowersPopulate()
  for x, y in pairs(Songflowers) do
    local frame = CreateFrame("Frame", nil);
    frame:SetWidth(12);
    frame:SetHeight(12);
    local tex = frame:CreateTexture(nil, "BACKGROUND")
    tex:SetAllPoints()
    tex:SetTexture("Interface\\Icons\\spell_holy_mindvision")
    HBD:AddWorldMapIconMap(Songflowers, frame, 1448, tonumber(x) / 100, y / 100, showFlag);
  end
end
function CorruptedWindblossomPopulate()
  for x, y in pairs(CorruptedWindblossom) do
    local frame = CreateFrame("Frame", nil);
    frame:SetWidth(12);
    frame:SetHeight(12);
    local tex = frame:CreateTexture(nil, "BACKGROUND")
    tex:SetAllPoints()
    tex:SetTexture("Interface\\Icons\\inv_misc_food_58")
    HBD:AddWorldMapIconMap(CorruptedWindblossom, frame, 1448, tonumber(x) / 100, y / 100, showFlag);
  end
end
function NightDragonPopulate()
  for x, y in pairs(NightDragon) do
    local frame = CreateFrame("Frame", nil);
    frame:SetWidth(12);
    frame:SetHeight(12);
    local tex = frame:CreateTexture(nil, "BACKGROUND")
    tex:SetAllPoints()
    tex:SetTexture("Interface\\Icons\\inv_misc_food_45")
    HBD:AddWorldMapIconMap(NightDragon, frame, 1448, tonumber(x) / 100, y / 100, showFlag);
  end
end
function WhipperRootTuberPopulate()
  for x, y in pairs(WhipperRootTuber) do
    local frame = CreateFrame("Frame", nil);
    frame:SetWidth(12);
    frame:SetHeight(12);
    local tex = frame:CreateTexture(nil, "BACKGROUND")
    tex:SetAllPoints()
    tex:SetTexture("Interface\\Icons\\inv_misc_food_55")
    HBD:AddWorldMapIconMap(WhipperRootTuber, frame, 1448, tonumber(x) / 100, y / 100, showFlag);
  end
end


Songflowers_Frame:SetScript("OnUpdate", SongflowersUpdate);
CorruptedWindblossom_Frame:SetScript("OnUpdate", CorruptedWindblossomUpdate);
NightDragon_Frame:SetScript("OnUpdate", NightDragonUpdate);
WhipperRootTuber_Frame:SetScript("OnUpdate", WhipperRootTuberUpdate);

