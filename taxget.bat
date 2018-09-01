rem usage: $0 taxid year
rem example: $0 463900004 1997
wget --keep-session-cookies --save-cookies cookies.txt -O nul: "http://www.utahcounty.gov/LandRecords/TaxDetail.asp?av_serial=%1&av_year=%2"
wget --keep-session-cookies --load-cookies cookies.txt --save-cookies cookies.txt -O nul: "http://161.119.38.252/web_dup_taxnotice/default.aspx?PBCommandParm=%1+%2+TAX"
wget --keep-session-cookies --load-cookies cookies.txt --save-cookies cookies.txt -O %1-%2.pdf "http://161.119.38.252/web_dup_taxnotice/pbopenfile.aspx?t=0&o=1&e=1&c=ppc__0.pdf"
pdftotext -table %1-%2.pdf
