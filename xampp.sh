#!/bin/bash

default="/opt/lampp"
v7="/opt/lampp7"
v8="/opt/lampp8"
case $1 in
	"php7")
		    printf "\n=================================================\n"
		    printf "            Choose PHP v7.1\n"
		    printf "=================================================\n\n"
        if [ -d "$v8" ]; then
		    printf "            Xampp already use PHP V7\n\n"
		    printf "=================================================\n\n"
        else 
		    printf "            Set PHP to v7\n\n"
		    printf "=================================================\n\n"
            sudo mv $default $v8 ;
            sudo mv $v7 $default ;
            sudo /opt/lampp/lampp start
        fi
        
		;;

	"php8")
		    printf "\n=================================================\n"
		    printf "            Choose PHP v8.1\n"
		    printf "=================================================\n\n"
        if [ -d "$v7" ]; then
		    printf "            Xampp already use PHP V8\n\n"
		    printf "=================================================\n\n"
        else 
		    printf "            Set PHP to v8\n\n"
		    printf "=================================================\n\n"
            sudo mv $default $v7 ;
            sudo mv $v8 $default ;
            sudo /opt/lampp/lampp start
        fi
        ;;
    "stat")
        if [ -d "$v7" ]; then
		    printf "\n=================================================\n"
		    printf "            Currently Use PHP v8.1\n"
		    printf "=================================================\n\n"
        else 
		    printf "\n=================================================\n"
		    printf "            Currently Use PHP v7.4\n"
		    printf "=================================================\n\n"
        fi
        ;;
	*)	
        printf "\n=================================================\n"
        printf "            Guide How To use\n"
        printf "=================================================\n"
        printf " set php7 = set xampp php 7 as default\n"
        printf " set php8 = set xampp php 8 as default\n"
        printf "=================================================\n\n"
		;;
esac