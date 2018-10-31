#module strstack
	#deffunc strstack_init
		sdim stack,4096,64
		dim stackindex
	return 0
	#deffunc strstack_push str strstr
		stack(stackindex)=strstr
		stackindex++
	return 0
	#defcfunc strstack_pull
		stackindex--
		return stack(stackindex)
	#defcfunc strstack_look
		return stack(stackindex-1)
#global