out = io.open("wow-api.doclua", "w+")
out2 = io.open("wow-api.lua", "w+")

for line in io.lines("doclua-code.txt") do
  out:write(line.."\n")
end

out:write("\n\n--[[ WOW FUNCTION SIGNATURES ]]\nSIGNATURES = {\n\n")

TEMPLATE = [==========[%s = [=[%s]=],
]==========]

TEMPLATE2 =[==========[function %s() end
]==========]

os.execute([[curl --silent -o data http://wowprogramming.com/docs/api_signatures.tsv]])


for line in io.lines("data") do
  if type(line) == "string" then
    local f,d = line:match("([^\t]*)\t(.*)")
    if f==nil then break end
  	out:write(TEMPLATE:format(f, d))
  	out2:write(TEMPLATE2:format(f))
	end
end

out:write("\n}")

out:close()
