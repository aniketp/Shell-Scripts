#!/bin/bash
# Automated image downloader

DIRECTORY='iitk_images'

if [ ! -d "$DIRECTORY" ]; then
	mkdir $DIRECTORY
fi

echo "Which batch would you prefer? Please select one option"
echo "1) Y15 -> Type 5"
echo "2) Y16 -> Type 6"
echo "3) Y17 -> Type 7"
echo "4) All batches -> Type 0"

read input
BATCH=('5' '6' '7' '0')

if $input == ${BATCH[0]}; then 
	for roll in {150001..150840..1}
    	do      
        	wget "https://oa.cc.iitk.ac.in/Oa/Jsp/Photo/${roll}_0.jpg"
            	if [ -e "${roll}_0.jpg" ]; then
                	mv ${roll}_0.jpg $DIRECTORY/${roll}.jpg
	            fi
    	done

elif $input == ${BATCH[1]}; then
	for roll in {160001..160840..1}
	    do      
    	    wget "https://oa.cc.iitk.ac.in/Oa/Jsp/Photo/${roll}_0.jpg"
        	    if [ -e "${roll}_0.jpg" ]; then
            	    mv ${roll}_0.jpg $DIRECTORY/${roll}.jpg
	            fi
    	done

elif $input == ${BATCH[2]}; then
	for roll in {170001..170840..1}
    	do      
        	wget "https://oa.cc.iitk.ac.in/Oa/Jsp/Photo/${roll}_0.jpg"
            	if [ -e "${roll}_0.jpg" ]; then
                	mv ${roll}_0.jpg $DIRECTORY/${roll}.jpg
	            fi
    	done

elif $input == ${BATCH[3]}; then
	for roll in {170001..170840..1}
	    do      
	        wget "https://oa.cc.iitk.ac.in/Oa/Jsp/Photo/${roll}_0.jpg"
	            if [ -e "${roll}_0.jpg" ]; then
	                mv ${roll}_0.jpg $DIRECTORY/${roll}.jpg
		        fi
	    done

else
	echo "Please enter the required command"

 fi
