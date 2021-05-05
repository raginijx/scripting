
function die () {
	echo "ERROR : ${BASH_SOURCE[1]} : ${FUNCNAME[1]} : line ${BASH_LINENO[0]}" 
      exit 1
}




export -f die
