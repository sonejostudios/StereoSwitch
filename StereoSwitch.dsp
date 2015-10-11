declare name        "StereoSwitch";
declare version     "0.1";
declare author      "Vincent Rateau";
declare license     "GPLv2";

//-----------------------------------------------
//              A simple Stereo Switch A-B
//-----------------------------------------------


process = split : switch;

split = _, _ <: _, _, _, _;

slider = hslider("A-B", 0, 0, 1, 1);

switch =  _*(1-slider), _*(1-slider), _*slider, _*slider;
