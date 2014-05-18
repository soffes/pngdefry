require 'mkmf'

$CFLAGS << ' -Wno-unused-value'

dir_config('pngdefry')
create_makefile('pngdefry')
