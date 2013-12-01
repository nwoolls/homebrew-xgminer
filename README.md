homebrew-xgminer
===================
This repository contains Homebrew formulas for two popular crypto-coin miners: cgminer and bfgminer.

![bfgminer](http://nwoolls.files.wordpress.com/2013/07/screen-shot-2013-07-01-at-5-47-22-pm.png "bfgminer")

Installation
------------
1. Launch Terminal.app from Spotlight or your Applications folder
2. Install Homebrew by entering the following command:

        ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

3. Run the following command and fix any reported issues:

        brew doctor

3. Tap this Homebrew repostory so that you can install packages from it:

        brew tap nwoolls/xgminer
        
4. Finally, install either cgminer or bfgminer:

        brew install cgminer
        
If you'd like to install the miner using the latest source from Github rather than the latest official package, use the --HEAD parameter:

        brew install bfgminer --HEAD
        
Usage
-----
For more details on installing and using these crypto-coin miners under OS X, see this [article][1].

[1]: http://blog.nwoolls.com/2013/04/24/bitcoin-mining-on-mac-os-x-cgminer-bfgminer
