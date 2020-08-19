#!/bin/bash


install_brew(){
    if [ "`python read_json.py install_brew`" = "True"  ]; then
        bash install_brew.sh
    fi
}

install_ohmyzsh(){
    if [ "`python read_json.py install_ohmyzsh`" = "True"  ]; then
        bash install_ohmyzsh.sh
    fi 
}

    
install_brew
install_ohmyzsh