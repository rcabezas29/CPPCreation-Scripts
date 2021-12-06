fu! InitHpp()
	:Stdheader
	let class_name = expand('%:r:t')
	put='#ifndef '
	put=l:class_name.'_HPP'
	normal gUU
	normal kgJ
	put='# define '
	put=l:class_name.'_HPP'
	normal gUU
	normal kgJ
	put='#endif'

	normal k
	
	put=''
	put='#include <iostream>'

	put=''
	put='class	'.l:class_name
	put='{'
	put='};'
	put=''

	normal kk
	put='	private:'
	put=''
	put=''

	put='	public:'
	put='		'.l:class_name.'(void);'
	put='		'.l:class_name.'(const '.l:class_name.' &copy);'
	put='		'.'virtual	~'.l:class_name.'(void);'
	put='		'.l:class_name.' &operator=(const'.l:class_name.' &op);'

endfu
