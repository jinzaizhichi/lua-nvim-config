

--https://github.com/AndrewRadev/switch.vim


--NOTE: switch 手动定义
local switch_words = {
  {"true","false"},
  {"on","off"},
  {"yes","no"},
  {"disable","enable"},
  {"+","-"},
  {">","<"},
  {"=","!="}
}


--enable Enable ENBLE

--定义增加的容器
local push_words = {}
for _, value in ipairs(switch_words) do
  local w1,w2 = value[1],value[2]
  --全小写
  table.insert(push_words,value)
  --全大写
  table.insert(push_words,value)
  --首字母大写，%1 代表小写字母，只取第一个
  w1, _ =string.gsub()
end
