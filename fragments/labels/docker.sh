docker)
    name="Docker"
    type="dmg"
    if [[ $(arch) == arm64 ]]; then
     downloadURL=$( curl -fs "https://desktop.docker.com/mac/main/arm64/appcast.xml" | xpath '(//rss/channel/item/enclosure/@url)[last()]' 2>/dev/null | cut -d '"' -f2 )
     appNewVersion=$( curl -fs "https://desktop.docker.com/mac/main/arm64/appcast.xml" | xpath '(//rss/channel/item/enclosure/@sparkle:shortVersionString)[last()]' 2>/dev/null | cut -d '"' -f2 )
    elif [[ $(arch) == i386 ]]; then
     downloadURL=$( curl -fs "https://desktop.docker.com/mac/main/amd64/appcast.xml" | xpath '(//rss/channel/item/enclosure/@url)[last()]' 2>/dev/null | cut -d '"' -f2 )
     appNewVersion=$( curl -fs "https://desktop.docker.com/mac/main/amd64/appcast.xml" | xpath '(//rss/channel/item/enclosure/@sparkle:shortVersionString)[last()]' 2>/dev/null | cut -d '"' -f2 )
    fi
    expectedTeamID="9BNSXJN65R"
    blockingProcesses=( "Docker Desktop" "Docker" )
    ;;
