local function win_opts()
  return {
    shell = vim.fn.executable "pwsh" and "pwsh" or "powershell",
    shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellquote = "",
    shellxquote = "",
  }
end

local function unix_opts()
  return {
    shell = vim.fn.executable "fish" and "fish" or "zsh",
  }
end
local os_opts = jit.os == "Windows" and win_opts() or unix_opts()
