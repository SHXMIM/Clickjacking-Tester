#! /bin/bash
#AUTHOR=shxim
#variables
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
reset=$(tput sgr0)

#AUTHOR
AUTHOR ()
{
  echo "${blue}        .__           .__ ${reset}"
  echo "${blue}   _____|  |__ ___  __|__| _____${reset}"
  echo "${blue}  /  ___/  |  \\  \/   /  |/     \ ${reset}"
  echo "${blue}  \___ \|   Y  \>    <|  |  Y Y  \ ${reset}"
  echo "${blue} /____  >___|  /__/\_ \__|__|_|  / ${reset}"
  echo "${blue}      \/     \/      \/        \/ ${reset}"
}

#clickjacking url
clickjacking_url ()
{
read -p "${yellow}PASTE ANY URL HERE:${reset} " url
}

#clickjacking html
clickjacking_html ()
{
echo "<html>
<head>
<title>clickjacking test page</title>
</head>
<style>
.center {
  text-align: center;
  color: red;
}
</style>
<body>
<h1 class="center">CLICKJACKING VULNERABILITY CHECKER</h1>
<center>
<iframe src="$url" width="1500" height="1500"></iframe>
</center>
<h2 class="center">HOW WE CAN KNOW THE WEBSITE IS VULNERABLE</h2>
<p style="color:blue" align="center">if you can see the website in the above box the site is vulnerable!!.</p>
</body>
</html>" >>tmp.html
}

#browser options
browser_opt ()
{
echo "${green}1${reset}. google chrome"
echo "${green}2${reset}. firefox"
echo "${green}3${reset}. brave"
}


#case_stat
case_stat ()
{
case $opt in
  "1" )
  google-chrome tmp.html;;
  "2" )
  firefox tmp.html;;
  "3" )
  brave-browser tmp.html;;
esac
}

#main_script
AUTHOR
clickjacking_url
clickjacking_html
browser_opt
read -p "${yellow}CHOOSE ANY OPTION FROM ABOVE!${reset}" opt
case_stat
rm tmp.html
