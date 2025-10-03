-- Abbreviations
local abbrev = vim.cmd.iabbrev

-- Common typos
abbrev("teh the")
abbrev("recieve receive")
abbrev("seperate separate")
abbrev("occured occurred")

-- Quick snippets
abbrev("@@ " .. vim.fn.systemlist("git config user.email")[1])

