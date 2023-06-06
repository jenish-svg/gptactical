



![gptactical](https://github.com/jenish-svg/gptactical/assets/82645243/39a7095f-eb42-4255-a9fd-dfc49c291b02)





Introducing GPTACTICAL: An AI-powered, automated bug bounty recon tool. Perform efficient automated reconnaissance on bug bounty target. Developed with the help of AI & chatgpt technology, this tool help you in your bug bounty hunting .

# Key Features

- **Recon**            :- Perform subdomain enum and information gathering.
- **Port scanning**    :- Check open ports and server isssues.
- **Web exploitation** :- identify common web vulnerabilities.


# Tools used 
1. Subdomain Enumeration Tools:
   - [Subfinder](https://github.com/projectdiscovery/subfinder)
   - [Amass](https://github.com/OWASP/Amass)
   - [Sublist3r](https://github.com/aboul3la/Sublist3r)
   - [Findomain](https://github.com/Findomain/Findomain)

2. HTTP and Port Scanning Tools:
   - [Httpx](https://github.com/projectdiscovery/httpx)
   - [Nmap](https://github.com/nmap/nmap)
   - [Dirsearch](https://github.com/maurosoria/dirsearch)
   - [Arjun](https://github.com/s0md3v/Arjun)
   - [Ffuf](https://github.com/ffuf/ffuf)

3. Web Exploitation and Hacking Tools:
   - [Nuclei & Templates](https://github.com/projectdiscovery/nuclei)
   - [Jaeles](https://github.com/jaeles-project/jaeles)
   - [Nikto](https://github.com/sullo/nikto)
   - [Sqlmap](https://github.com/sqlmapproject/sqlmap)
   - [Dalfox](https://github.com/hahwul/dalfox)
   - [XXEinjector](https://github.com/enjoiz/XXEinjector)
   - [Subjack](https://github.com/haccer/subjack)
   - [Sstimap](https://github.com/maurosoria/sstic)


# Installation & Usage

```bash
sudo update

git clone https://github.com/jenish-svg/gptactical.git
cd gptactical
chmod +x gptactical.sh
```
Usage and Help option
```bash
┌──(root㉿kali)-[/home/kali/gptactical]
└─# ./gptactical.sh -h
 

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
/__/                                                        /__/    
You may face some errror if there are some tools installed in your system
 if any tool is installed using docker it will not work
Usage: ./gptactical.sh [-t <target_domain>] [-l <subdomain_list>] [-h]

Options:
  -t <target_domain>      Add target domain
  -l <subdomain_list>     Add list of subdomains
  -h                      Display help

```

For single domain or wildcard domain 
```bash
./gptactical.sh -t example.com
```
For list of subdomians 
```bash
./gptactical.sh -l /.../...../...../  ( path containing subdomain list )
```

# Example



![Screenshot gptactical](https://github.com/jenish-svg/gptactical/assets/82645243/34996089-6c11-40e9-bcde-acc5877523a8)





------------------------------------------------------------------------------------------------------------------------------------------------------------------
Devloped by :- Jenish Zinzuvadiya


<a href="https://www.instagram.com/jenish._.soni"><img src="https://i.ibb.co/RpWfPgD/image-removebg-preview-3.png" alt="Follow me on Instagram" width="20" height="20"></a>


<a href="https://www.linkedin.com/in/jenish-zinzuvadiya-39619821b/"><img src="https://cdn-icons-png.flaticon.com/512/174/174857.png" alt="Follow me on Instagram" width="20" height="20"></a>

<a href="https://twitter.com/jenish_soni13"><img src="https://img.freepik.com/free-icon/twitter_318-674515.jpg" alt="Follow me on Instagram" width="20" height="20"></a>








