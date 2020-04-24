# Nice Greetings
niceThings=('you look lovely today' 'you are so smart' 'I think you are fantastic' 'You are super creative' 'You can do anything' 'You write KICKASS code' 'Your hair looks amazing today' 'You inspire soooo many people' 'You are a strong powerful dev');

emojis=('ʕᵔᴥᵔʔ' '(｡◕‿◕｡)' '( ˘ ³˘)♥' 'ฅ^•ﻌ•^ฅ' '(づ￣ ³￣)づ' '┌(ㆆ0ㆆ)ʃ' '“ヽ(´▽｀)ノ”' '♥‿♥' 'ᕕ( ᐛ )ᕗ' '(ᵔᴥᵔ)')

index=$(( RANDOM % ${#niceThings[@]} ))
echo ${emojis[${index}]} ${niceThings[${index}]}

cat ~/.pet

# System load
g_load=`top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{printf "⌂ System load : %.1f%", 100-$1 }'`

# Memory Usage
g_memory=`free -m | awk 'NR==2{printf "⌬ Memory Usage: %.2f%", $3*100/$2 }'`

# Disk Usage
g_disk=`df -h | awk '$NF=="/"{printf "⛁ Disk Usage: %.1f%", $5}'`

# array System information
g_listOfNames=("$g_load" "$g_memory" "$g_disk")

# System information
g_information=`
for value in "${g_listOfNames[@]}"; do
    printf "%-8s\n" "${value}"
done | column`

# print
echo $g_information

shopt -s cdspell