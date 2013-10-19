homebrew-xgminer
===================
This repository contains a Homebrew formula for a popular crypto-coin miner: cgminer.

![cgminer](http://nwoolls.files.wordpress.com/2013/07/screen-shot-2013-07-01-at-5-47-22-pm.png "cgminer")

Installation
------------
1. Launch Terminal.app from Spotlight or your Applications folder
2. Install Homebrew by entering the following command:

        ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

3. Run the following command and fix any reported issues:

        brew doctor

3. Tap this Homebrew repostory so that you can install packages from it:

        brew tap kije/xgminer
        
4. Finally, install cgminer:

        brew install cgminer
        
If you'd like to install the miner using the latest source from Github rather than the latest official package, use the --HEAD parameter:

        brew install cgminer --HEAD
        
Usage
-----
For more details on installing and using these crypto-coin miners under OS X, see this [article][1].

[1]: http://blog.nwoolls.com/2013/04/24/bitcoin-mining-on-mac-os-x-cgminer-bfgminer

Credit
------
This repo was forked from https://github.com/nwoolls/homebrew-xgminer . 
However, I have decided to make it a repo for cgminer based on the work [nwoolls][2] did. Thanks a lot!

[2]: https://github.com/nwoolls/
