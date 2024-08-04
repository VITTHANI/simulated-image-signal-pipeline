clc; clear;
[file, layout, wb, xyz, wbcam, m, n] = extract('../imgs/1.dng');
rawread_slx
function [file, layout, wb, xyz, wbcam, m, n] = extract(fileLocation)
rawInfo = rawinfo(fileLocation);
file = fileLocation;
layout = rawInfo.CFALayout;
wb = rawInfo.ColorInfo.CameraAsTakenWhiteBalance;
xyz = rawInfo.ColorInfo.CameraToXYZ;
wbcam = rawInfo.ColorInfo.D65WhiteBalance;
cfa = rawread(file);
m = zeros(size(cfa, 1), 1);
n = zeros(size(cfa, 2), 1);
end
