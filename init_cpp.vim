fu! InitCpp()
	:Stdheader
	let class_name = expand('%:r:t')
	put='#include \"'.l:class_name.'.hpp\"'
	put=''

	put=l:class_name.'::'.l:class_name.'(void)'
	put='{'
	put='	std::cout << \"Default constructor called\" << std::endl;'
	put='}'
	put=''

	
	put=l:class_name.'::'.l:class_name.'(const '.l:class_name.' &copy)'
	put='{'
	put='	std::cout << \"Copy constructor called\" << std::endl;'
	put='}'
	put=''
	
	put='virtual	~'.l:class_name.'::'.l:class_name.'(void)'
	put='{'
	put='	std::cout << \"Destructor called\" << std::endl;'
	put='}'
	put=''


	put=l:class_name.'	&'.l:class_name.'::'.'operator=(const '.l:class_name.' &op)'
	put='{'
	put='	std::cout << \"Assignation operator called\" << std::endl;'
	put='}'

endfu
