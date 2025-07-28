function repac --wraps='reflector --country "United States" --protocol "https,http" --sort score --latest 10 --age 24 --fastest 40 --info --save /etc/pacman.d/mirrorlist' --description 'alias repac reflector --country "United States" --protocol "https,http" --sort score --latest 10 --age 24 --fastest 40 --info --save /etc/pacman.d/mirrorlist'
    reflector --country "United States" --protocol "https,http" --sort score --latest 10 --age 24 --fastest 40 --info --save /etc/pacman.d/mirrorlist $argv

end
