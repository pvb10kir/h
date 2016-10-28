local test = {
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"0",
}
local testt = {
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
}
local testtt = {
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"0",
}
local testttt = {
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"0",
}
local function run(msg)
local t = test[math.random(#test)]
local o = testt[math.random(#testt)]
local h = testtt[math.random(#testtt)]
local f = testttt[math.random(#testttt)]
return 'شماره :\n'..o..' برنده خوش شانس ما '
end
return {
patterns = {
"^[R]andom$"
},
run = run
}
