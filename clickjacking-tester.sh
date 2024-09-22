#!/bin/bash
# AUTHOR=shxim

# Variables
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
reset=$(tput sgr0)

# AUTHOR Function
AUTHOR ()
{
  # Colors for Clickjacker
  clickjacker_color="${blue}"
  clickjacker_bg_color="${yellow}"

  # Colors for Author
  author_color="${red}"
  author_bg_color="${green}"

  echo "                                                                                                                                "
  echo "                                                                                                                                "
  echo "  ${clickjacker_bg_color}${clickjacker_color}_________ .__  .__        __        _____.              __                ${reset}"
  echo "  ${clickjacker_bg_color}${clickjacker_color}\_   ___ \|  | |__| ____ |  | __   |    |____    ____ |  | __ ___________  ${reset}"
  echo "  ${clickjacker_bg_color}${clickjacker_color}/    \  \/|  | |  |/ ___\|  |/ /   |    \__  \ _/ ___\|  |/ // __ \_  __ \ ${reset}"
  echo "  ${clickjacker_bg_color}${clickjacker_color}\     \___|  |_|  \  \___|    </\__|    |/ __ \\  \___|    <\  ___/|  | \/ ${reset}"
  echo "  ${clickjacker_bg_color}${clickjacker_color} \______  /____/__|\___  >__|_ \________(____  /\___  >__|_ \\___  >__|    ${reset}"
  echo "  ${clickjacker_bg_color}${clickjacker_color}        \/             \/     \/             \/     \/     \/    \/       ${reset}"
  echo "                                                                                                                                "
  echo "                                                                           ${author_bg_color}${author_color}𝒜𝓊𝓉𝒽ℴ𝓇: 𝓈𝒽𝓍𝒾𝓂${reset}                                                         "
}

# Clickjacking URL Function
clickjacking_url ()
{
  read -p "${yellow}PASTE ANY URL HERE:${reset} " url
}

# Clickjacking HTML Function
clickjacking_html ()
{
  echo "<html>
<head>
  <title>Clickjacking Test Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      color: #333;
      margin: 0;
      padding: 20px;
      text-align: center;
    }
    h1 {
      color: ${red};
      text-decoration: underline;
    }
    h2 {
      color: ${blue};
    }
    p {
      color: ${green};
    }
    iframe {
      border: 2px solid ${yellow};
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    }
  </style>
</head>
<body>
  <h1>CLICKJACK VULNERABILITY CHECKER</h1>
  <h2>How to Check if a Website is Vulnerable</h2>
  <p>If you can see the website in the box below, the site is vulnerable!</p>
  <iframe src=\"$url\" width=\"1000\" height=\"500\"></iframe>
</body>
</html>" >> tmp.html
}

# Browser Options Function
browser_opt ()
{
  echo "${green}1${reset}. Google Chrome"
  echo "${green}2${reset}. Firefox"
  echo "${green}3${reset}. Brave"
}

# Case Statement Function
case_stat ()
{
  case $opt in
    "1" )
      google-chrome tmp.html;;
    "2" )
      firefox tmp.html;;
    "3" )
      brave-browser tmp.html;;
    * )
      echo "${red}Invalid option!${reset}";;
  esac
}

# Main Script Execution
AUTHOR
clickjacking_url
clickjacking_html
browser_opt
read -p "${yellow}CHOOSE ANY OPTION FROM ABOVE!${reset} " opt
case_stat
sleep 7
rm tmp.html
