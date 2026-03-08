--version check update script for cheat engine
--Don't like it? Just delete this file. Easy as that

local function isEmpty(s)
  return s == nil or s == ''
end

for i = 0, getFormCount() - 1 do
    local form = getForm(i)
    for j = 0, form.getComponentCount() - 1 do
        local component = form.getComponent(j)
        if not isEmpty(component.Caption) then
          component.Caption = '.!2.'..component.Caption
        end
        if not isEmpty(component.Title) then
           component.Title = '.!2.'..component.Title
        end
        if not isEmpty(component.ClassName) then
           component.ClassName = '.!2.'..component.ClassName
        end
    end
end


