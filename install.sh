
# Install Homebrew if required
which -s brew
if [ $? != 0 ] 
then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install NVM if required
which -s nvm
if [ $? != 0 ]
then
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
fi

# Install Fish if required 
which -s fish
if [ $? != 0 ] 
then
	brew install fish
	echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
	chsh -s /usr/local/bin/fish
fi

# Symlink our version controlled config files to fishes default config files:
ln -s $PWD/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
ln -s $PWD/config.fish ~/.config/fish/config.fish
