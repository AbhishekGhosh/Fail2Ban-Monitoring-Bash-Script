                  ####################################################################################################
                  #                                        Fail2Ban Log Check                                        #  
                  # Description: Checks Fail2Ban Log in standard location                                            #
                  # Publisher  : thecustomizewindows.com                                                             #
                  # Author     : Dr. Abhishek Ghosh                                                                  #
                  # Bug report : admin@thecustomizewindows.com or GitHub issue                                       #
                  # License    : GNU GPL 3.0                                                                         #
                  # Web URL    : https://thecustomizewindows.com                                                     #
                  #                                                                                                  #
                  ####################################################################################################
#! /bin/bash
echo "This script need Fail2Ban Log at /var/log location and GeoIP to be installed."
echo "----------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------"
echo "Bad IPs from only from /var/log/fail2ban.log alone :"
echo "---Number-----IP-------------------------------------------------------------"
grep "Ban " /var/log/fail2ban.log | grep `date +%Y-%m-%d` | awk '{print $NF}' | sort | awk '{print $1,"("$1")"}' | logresolve | uniq -c | sort
echo "----------------------------------------------------------------------------"
echo "---Number of password attempts failed from all non-gzipped fail2ban.log files:"
echo "Number--MM--DD-------------------------------------------------------------"
cat /var/log/auth.log* | grep 'Failed password' | grep sshd | awk '{print $1,$2}' | sort | uniq -c
echo "Kind heartedly you unbanned :"
echo "---Number-----IP-------------------------------------------------------------"
grep "Unban " /var/log/fail2ban.log | grep `date +%Y-%m-%d` | awk '{print $NF}' | sort | awk '{print $1,"("$1")"}' | logresolve | uniq -c | sort
echo "Countries from fail2ban.log who are Banned(Needs GeoIP to be installed) :"
echo "---Number--ASN------ISP------------------------------------------------------"
zgrep -h "Ban " /var/log/fail2ban.log* | awk '{print $NF}' | sort | uniq -c | xargs -n 1 geoiplookup { } | sort | uniq -c | sort | sed -r 's/ GeoIP Country Edition://g' | sed -r 's/ GeoIP ASNum Edition://g'
echo "----------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------"
echo "Fail2Ban Log Check by thecustomizewindows.com, Dr. Abhishek Ghosh"
echo "End of report"
echo "Visit https://thecustomizewindows.com for more help."
