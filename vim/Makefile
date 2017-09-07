targets = \
	vimrc \
	small_vimrc

base = \
	autoload.vim \
	basic_options.vim \
	colorscheme.vim \
	key-remapping.vim \
	file_specific.vim

small = \
	small_plugins.vim
	# laptop_plugin_options.vim

full = \
	plugins.vim \
	plugin_options.vim

all: $(targets)
	@echo "built vimrc"

vimrc: $(base) $(full)
	@cat autoload.vim > vimrc
	@cat plugins.vim >> vimrc
	@cat plugin_options.vim >> vimrc
	@cat colorscheme.vim >> vimrc
	@cat basic_options.vim >> vimrc
	@cat key-remapping.vim >> vimrc
	@cat file_specific.vim >> vimrc

small_vimrc: $(base) $(small)
	@cat autoload.vim > small_vimrc
	@cat small_plugins.vim >> small_vimrc
	@cat plugin_options.vim >> small_vimrc
	@cat colorscheme.vim >> small_vimrc
	@cat basic_options.vim >> small_vimrc
	@cat key-remapping.vim >> small_vimrc
	@cat file_specific.vim >> small_vimrc

clean:
	rm $(targets)

# pre commit git hook ?
# new git repository ?
# vim directory in dot files?
