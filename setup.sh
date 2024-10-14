# Create a link to bashrc.d in ~/.bashrc.d

bashrcd_source="$PWD/bashrc.d"
bashrcd_target="$HOME/.bashrc.d"
if [[ ! -d $bashrcd_source ]]; then
	echo $bashrcd_source not found. skipping...
elif [[ -e $bashrcd_target ]]; then
	echo $bashrcd_target exists. skipping
else
	echo "Creating symlink"
	(
	set -x;
	ln -s $bashrcd_source $bashrcd_target
	)
fi