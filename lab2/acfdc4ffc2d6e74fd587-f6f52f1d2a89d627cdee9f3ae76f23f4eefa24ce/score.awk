

BEGIN {
	sum=0;
	grade=0;
	total=0;
}

{


sum+=$3;

}

END {

print sum/7;


}
