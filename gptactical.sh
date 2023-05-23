echo " 

 ██████╗ ██████╗ ████████╗ █████╗  █████╗ ████████╗██╗ █████╗  █████╗ ██╗     
██╔════╝ ██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝██║██╔══██╗██╔══██╗██║     
██║  ██╗ ██████╔╝   ██║   ███████║██║  ╚═╝   ██║   ██║██║  ╚═╝███████║██║     
██║  ╚██╗██╔═══╝    ██║   ██╔══██║██║  ██╗   ██║   ██║██║  ██╗██╔══██║██║
╚██████╔╝██║        ██║   ██║  ██║╚█████╔╝   ██║   ██║╚█████╔╝██║  ██║███████╗
 ╚═════╝ ╚═╝        ╚═╝   ╚═╝  ╚═╝ ╚════╝    ╚═╝   ╚═╝ ╚════╝ ╚═╝  ╚═╝╚══════╝
    __                                                          __
   / _/                                                        /_ /
  / /     An Automatic Recon tool made with help of ChatGpt    / / 
 / /    Created BY - Jenish Zinzuvadiya                       / /  
/__/                                                        /__/    "   


#!/bin/bash

# Update the package lists and upgrade any installed packages

echo "You may face some errror if there are some tools installed in your system"
echo " if any tool is installed using docker it will not work"




#!/bin/bash

target_domain=""
subdomain_list=""
tool_not_found="~~~ Can't find %s, jumping to the next tool ~~~"

# Function to display help option
display_help() {
  echo "Usage: $0 [-t <target_domain>] [-l <subdomain_list>] [-h]"
  echo ""
  echo "Options:"
  echo "  -t <target_domain>      Add target domain"
  echo "  -l <subdomain_list>     Add list of subdomains"
  echo "  -h                      Display help"
}

# Function to perform subdomain enumeration
subdomain_enum() {
  echo "Performing subdomain enumeration..."

  # Check if Subfinder is available
  if command -v subfinder &> /dev/null; then
    subfinder -d "$target_domain" -o subdomains.txt
  else
    printf "$tool_not_found" "Subfinder"
  fi

  # Check if Amass is available
  if command -v amass &> /dev/null; then
    amass enum -d "$target_domain" -o amass_subdomains.txt
    cat amass_subdomains.txt >> subdomains.txt
    rm amass_subdomains.txt
  else
    printf "$tool_not_found" "Amass"
  fi

  # Check if Sublist3r is available
  if command -v sublist3r &> /dev/null; then
    sublist3r -d "$target_domain" -o sublist3r_subdomains.txt
    cat sublist3r_subdomains.txt >> subdomains.txt
    rm sublist3r_subdomains.txt
  else
    printf "$tool_not_found" "Sublist3r"
  fi

  # Check if Findomain is available
  if command -v findomain &> /dev/null; then
    findomain -t "$target_domain" -u findomain_subdomains.txt
    cat findomain_subdomains.txt >> subdomains.txt
    rm findomain_subdomains.txt
  else
    printf "$tool_not_found" "Findomain"
  fi

  # Sort and remove duplicate subdomains
  sort -u subdomains.txt -o subdomains.txt
}

# Function to perform bug bounty recon using subdomains
bug_bounty_recon() {
  echo "Performing bug bounty recon..."

  # Check if Httpx is available
  if command -v httpx &> /dev/null; then
    httpx -l subdomains.txt -o alive_subdomains.txt
  else
    printf "$tool_not_found" "Httpx"
  fi

  # Check if Nmap is available
  if command -v nmap &> /dev/null; then
    nmap -iL alive_subdomains.txt -oN nmap_scan.txt
  else
    printf "$tool_not_found" "Nmap"
  fi

  # Check if Dirsearch is available
  if command -v dirsearch &> /dev/null; then
    dirsearch -L alive_subdomains.txt -o dirsearch_results.txt
  else
    printf "$tool_not_found" "Dirsearch"
  fi

  # Check if Arjun is available
  if command -v arjun &> /dev/null; then
    arjun -i alive_subdomains.txt -o arjun_results.txt
  else
    printf "$tool_not_found" "Arjun"
  fi

  # Check if Ffuf is available
  if command -v ffuf &> /dev/null; then
    ffuf -c -w wordlist.txt -u "https://TARGET_DOMAIN/FUZZ" -H "Host: TARGET_DOMAIN" -t 100 -o ffuf_results.txt
  else
    printf "$tool_not_found" "Ffuf"
  fi
}

# Function to perform web exploitation and hacking
web_exploitation() {
  echo "Performing web exploitation and hacking..."

  # Check if Nuclei is available
  if command -v nuclei &> /dev/null; then
    nuclei -l alive_subdomains.txt -t templates -o nuclei_results.txt
  else
    printf "$tool_not_found" "Nuclei"
  fi

  # Check if Jaeles is available
  if command -v jaeles &> /dev/null; then
    jaeles scan -c 50 -s signatures -L alive_subdomains.txt -o jaeles_results.txt
  else
    printf "$tool_not_found" "Jaeles"
  fi

  # Check if Nikto is available
  if command -v nikto &> /dev/null; then
    nikto -hL alive_subdomains.txt -o nikto_results.txt
  else
    printf "$tool_not_found" "Nikto"
  fi

  # Check if Sqlmap is available
  if command -v sqlmap &> /dev/null; then
    sqlmap -m alive_subdomains.txt --batch --output-dir sqlmap_results
  else
    printf "$tool_not_found" "Sqlmap"
  fi

  # Check if Dalfox is available
  if command -v dalfox &> /dev/null; then
    dalfox file alive_subdomains.txt --output dalfox_results.txt
  else
    printf "$tool_not_found" "Dalfox"
  fi

  # Check if XXEinjector is available
  if command -v XXEinjector &> /dev/null; then
    XXEinjector.py -l alive_subdomains.txt -d target_domain -o XXEinjector_results.txt
  else
    printf "$tool_not_found" "XXEinjector"
  fi

  # Check if Subjack is available
  if command -v subjack &> /dev/null; then
    subjack -w alive_subdomains.txt -t 100 -timeout 30 -o subjack_results.txt
  else
    printf "$tool_not_found" "Subjack"
  fi

  # Check if Sstimap is available
  if command -v sstimap &> /dev/null; then
    sstimap -i alive_subdomains.txt -o sstimap_results.txt
  else
    printf "$tool_not_found" "Sstimap"
  fi
}

# Parse command line arguments
while getopts "t:l:h" opt; do
  case ${opt} in
    t)
      target_domain=$OPTARG
      ;;
    l)
      subdomain_list=$OPTARG
      ;;
    h)
      display_help
      exit 0
      ;;
    \?)
      display_help
      exit 1
      ;;
  esac
done

# Check if target domain is provided
if [ -z "$target_domain" ]; then
  echo "Target domain is required. Use -t option to specify the target domain."
  exit 1
fi

# Check if subdomain list is provided
if [ -z "$subdomain_list" ]; then
  subdomain_enum
else
  cp "$subdomain_list" subdomains.txt
fi

# Perform bug bounty recon
bug_bounty_recon

# Perform web exploitation and hacking
web_exploitation

echo "Bug bounty recon completed!"

echo " ~~~ If you found any error and issue please report it to our github 😊"
echo "                          Thanks for using our tool"
                 