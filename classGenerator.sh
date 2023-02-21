#!/bin/bash


### This script as added as an alias in the bashrc by the name of crtf

read -p "Please enter your name: " name
echo "Hello Mr. ${name}"
read -p "Please enter your class name: " classname
read -p "Please enter your namespace: " namespace
echo "Your class is ${classname} and your namespace is ${namespace}"

echo "
/**********************************************************/
//                                                        //
//                  Copyrights ${name}                  //
//                                                        //
/**********************************************************/
/*
author: ${name}
date: `date`
brief:
*/
namespace ${namespace} {
    class ${classname}{

        public:
        ${classname}();
        ~${classname}();
        private:
    };
}
" > ${classname}.hpp

read -p "Do you want the cpp file? Y/N " answer
if [ ${answer}=="Y" ]
then
echo "
/**********************************************************/
//                                                        //
//                  Copyrights ${name}                    //
//                                                        //
/**********************************************************/
/*
author: ${name}
date: `date`
brief:
*/
#include \"${classname}.hpp\"

namespace ${namespace} {
    ${classname}::${classname}(){}
    ${classname}::~${classname}(){}
}
" > ${classname}.cpp
echo "Your class is created"
fi