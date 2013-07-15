homebrew-cryptocoin
===================
This repository contains Homebrew formulas for two popular CrytpoCoin miners: cgminer and bfgminer.

Installation
------------
1. Launch Terminal.app from Spotlight or your Applications folder
2. Install Homebrew by entering the following command:

        ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

3. Run the following command and fix any reported issues:

        brew doctor

3. Tap this Homebrew repostory so that you can install packages from it:

        brew tap nwoolls/crytpocoin
        
4. Finally, install either cgminer or bfgminer:

        brew install cgminer
        
If you'd like to install the miner using the latest source from Github rather than the latest official package, use the --HEAD parameter:

        brew install bfgminer --HEAD
        
Usage
-----
For more details on installing and using these CrytpoCoin miners under OS X, see this [article][1].

[1]: http://blog.nwoolls.com/2013/04/24/bitcoin-mining-on-mac-os-x-cgminer-bfgminer
