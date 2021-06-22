## __--COLORS--__

RESET = "\x1B[0m";

## ample/coffee theme
C1 = "\x1B[0m\x1B[1m\x1B[38;2;192;103;9m"; # orange
C2 = "\x1B[0m\x1B[1m\x1B[38;2;226;78;78m"; # red
FONT1 = "\x1B[0m\x1B[1m\x1B[38;2;226;78;78m";
FONT2 = "\x1B[0m\x1B[1m\x1B[38;2;192;103;9m";
# ample/coffee theme

# --__COLORS__--



USER = `whoami`.rstrip
HOST = File.read("/etc/hostname").rstrip
OS = "Artix"
KERNEL = `uname -sr`.rstrip
UPTIME = `uptime -p`[3..-2]
PACKAGES = `pacman -Q`.count "\n"
SHELL = ENV["SHELL"]?.to_s.gsub(/.*\//, "")
WM = ENV["WM"]?.to_s

puts (
"#{C1}      /\\         #{FONT2+USER+FONT1}@#{FONT2+HOST}
#{C1}     /  \\        #{FONT1}OS:        #{RESET+OS}
#{C1}    /\`'.,\\       #{FONT1}KERNEL:    #{RESET+KERNEL}
#{C1}   /  #{C2}   ',      #{FONT1}UPTIME:    #{RESET+UPTIME}
#{C2}  /      ,\`\\     #{FONT1}PACKAGES:  #{RESET}#{PACKAGES}
#{C2} /   ,.'\`.  \\    #{FONT1}SHELL:     #{RESET+SHELL}
#{C2}/.,'\`     \`'.\\   #{FONT1}WM:        #{RESET+WM}
#{RESET}"
)
