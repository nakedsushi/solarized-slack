#! /bin/bash

# Prod: https://cdn.rawgit.com/nakedsushi/solarized-slack/master/css/solarized.css
# Dev: https://raw.githubusercontent.com/nakedsushi/solarized-slack/master/css/solarized.css

cat << 'EOF' >> /Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js
document.addEventListener('DOMContentLoaded', function() {
 $.ajax({
   url: 'https://raw.githubusercontent.com/nakedsushi/solarized-slack/master/css/solarized.css',
   success: function(css) {
     $("<style></style>").appendTo('head').html(css);
   }
 });
});
EOF
echo If Slack.app is already running, go to it and refresh with CMD-R
