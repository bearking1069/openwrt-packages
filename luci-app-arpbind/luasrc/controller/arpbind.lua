--[[
 静态ARP绑定 Luci页面 Controller
 Copyright (C) 2015 GuoGuo <gch981213@gmail.com>
]]--

module("luci.controller.arpbind", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/arpbind") then
		return
	end

	local page = entry({"admin", "network", "arpbind"}, cbi("arpbind"), _("IP/MAC Binding"), 45)
	page.dependent = true
	page.acl_depends = { "luci-app-arpbind" }
end
