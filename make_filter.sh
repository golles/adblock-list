#!/usr/bin/env bash

set -e

# Ads.
ADS=$(cat <<'EOF'
racefans.net##.text-above-ad
EOF
)

# Notices are elements that tell to turn off ad blockers.
NOTICES=$(cat <<'EOF'
nu.nl##.adblocker
tweakers.net##.notification.bar.notice
tweakers.net##.noTrackingMessage
tweakers.net##.widebnr
tvgids.nl###notification
telegraaf.nl##.popup-overlay
buienradar.nl##.bblocked
regiopurmerend.nl##.apPluginContainer
EOF
)

cat <<EOF | tee filter.txt
[Adblock Plus 2.0]
! Title: Sander\'s List
! Last modified: $(date -Ru)
! Expires: 30 days (update frequency)
!
!--------Ads--------------------!
$ADS
!--------Addblock notice--------!
$NOTICES
EOF
