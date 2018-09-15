# Orem city tax

Retrieve tax information from Utah County website

This is a quick hack to grab tax data from the county land information system
and pull it into a database. Orem city wants this to establish that property
taxes haven't gone up at the same rate as home values.

This is simply a windows batch file that combines several off the shelf
components plus some custom perl to extract the data.

This tool requires some external tools to do it's job.  First off you need
a way to scrap data from the county website.
I'm using [wget](http://gnuwin32.sourceforge.net/packages/wget.htm "wget for windows")
but you could replace it with curl or any other download tool. Whatever you
use needs to support storing cookies, including session cookies.

Next you need a way to convert the downloaded PDF into plain text for processing.
I'm using [pdftotext](http://www.xpdfreader.com/about.html) from XpdfReader.
You only need to grab the Xpdf Tools download appropriate for your platform (in this case, windows)
from the [download page](http://www.xpdfreader.com/download.html). Then extract
the pdftotext executable and put it in your path.

Next you need a copy of perl. I use [ActivePerl](https://www.activestate.com/activeperl)
from ActiveState but most any perl implementation should work.

Lastly you'll need a database to store the data. I've decided to put this into
my favorite stand alone database, [SQLite](https://www.sqlite.org/download.html).
If you've never experienced SQLite, you are in for a treat. All the (necessary)
functionality of a standard SQL server without all the bother of a server, config, etc.
