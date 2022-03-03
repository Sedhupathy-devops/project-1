#!/bin/bash
echo "Enter Name:"
read NAME
echo "Enter Job:"
read JOB
echo "Enter DOB:"
read DOB
echo "Enter Email-id:"
read MAILID
echo "Enter Gender: M/F"
read GENDER
if [[ "$GENDER" == "M" ]]; then
    sed -i "s+images+images/boy.jfif+g" index.html
else
    sed -i "s+images+images/girl.jpg+g" index.html
fi

sed -i "s+USERNAME+$NAME+g" index.html
sed -i "s+USERJOB+$JOB+g" index.html
sed -i "s+DATEOFBIRTH+$DOB+g" index.html
sed -i "s+EMAILID+$MAILID+g" index.html
