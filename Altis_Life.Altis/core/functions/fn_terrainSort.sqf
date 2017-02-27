/*
    File: fn_terrainSort.sqf
    Author: BoGuu
    Description:
    Retuns a value for each world.
    Parameter(s):
        0: ARRAY - Array with world name and value to return.
    Returns:
    ANYTHING
*/
if !(params[["_dictionary",[],[[],0,""]]]) exitWith {};

scopeName "main";
{
    if (worldName == _x select 0) then {
        (_x select 1) breakOut "main";
    };
} count _dictionary;

switch (typeName (_dictionary select 0 select 1)) do {
    case "ARRAY": {[]};
    case "STRING": {""};
    case "SCALAR": {-1};
};