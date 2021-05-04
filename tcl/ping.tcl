# ---------------------------------------------------------
# Strikr Free Software Community Project
#
#    email  foss@strikr.io
#      irc  #strikr
#    jitsi  https://meet.jit.si/strikr
#  twitter  @strikrIO
#  website  one.strikr.io
# ---------------------------------------------------------

set urls {bitbucket.org  github.com  gitlab.com  gitee.com sourceforge.net savannah.org fosshost.org}

foreach site $urls {

      try {

            set chan_ping [ open "|/usr/bin/ping -c 1 -w 3 $site" r ]

            fconfigure $chan_ping -buffering line

            while { [ gets $chan_ping line ] != -1 } {

                  puts $line
            }

            close $chan_ping

      } trap {CHILDSTATUS} {} {

            puts "$site : down"
            continue
      }
      
  }
